/**
 *	@author Integry Systems
 */

Backend.Eav = Class.create();
Backend.Eav.prototype =
{
	container: '',

	initialize: function(container)
	{
		this.container = container;

		if (!container)
		{
			return;
		}

		this.initFieldControls(container);
	},

	initFieldControls: function(container)
	{
		// specField entry logic (multiple value select)
		var containers = document.getElementsByClassName('multiValueSelect', container);

		for (k = 0; k < containers.length; k++)
		{
			new Backend.Eav.specFieldEntryMultiValue(containers[k]);
		}

		// single value select
		var selects = container.getElementsByTagName('select');
		for (k = 0; k < selects.length; k++)
		{
			new Backend.Eav.specFieldEntrySingleSelect(selects[k]);
		}
	}
}

Backend.Eav.specFieldEntrySingleSelect = Class.create();
Backend.Eav.specFieldEntrySingleSelect.prototype =
{
	field: null,

	initialize: function(field)
	{
	  	this.field = field;
	  	this.field.onchange = this.handleChange.bindAsEventListener(this);
	},

	handleChange: function(e)
	{
		var otherInput = this.field.parentNode.getElementsByTagName('input')[0];
		otherInput.style.display = ('other' == this.field.value) ? 'block' : 'none';

		if ('none' != otherInput.style.display)
		{
			otherInput.focus();
		}
	}
}

Backend.Eav.specFieldEntryMultiValue = Class.create();
Backend.Eav.specFieldEntryMultiValue.prototype =
{
	container: null,

	mainContainer: null,

	isNumeric: false,

	initialize: function(container)
	{
		Event.observe(container.getElementsByClassName('deselect')[0], 'click', this.reset.bindAsEventListener(this));
		Event.observe(container.getElementsByClassName('eavSelectAll')[0], 'click', this.selectAll.bindAsEventListener(this));

		this.isNumeric = Element.hasClassName(container, 'multiValueNumeric');

		this.fieldStatus = document.getElementsByClassName("fieldStatus", container.parentNode)[0];
		this.mainContainer = container;
		this.container = document.getElementsByClassName('other', container)[0];

		var inp = this.container.getElementsByTagName('input')[0];
		this.bindField(inp);
	},

	selectAll: function(e)
	{
		Event.stop(e);

		this.toggleAll(true);
	},

	toggleAll: function(state)
	{
		checkboxes = this.mainContainer.getElementsByTagName('input');

		for (k = 0; k < checkboxes.length; k++)
		{
		  	checkboxes[k].checked = state;
		}
	},

	bindField: function(field)
	{
		var self = this;
		Event.observe(field, "input", function(e) { self.handleChange(e); });
		Event.observe(field, "keyup", function(e) { self.handleChange(e); });
		Event.observe(field, "blur", function(e) { self.handleBlur(e); });

		if (this.isNumeric)
		{
			Event.observe(field, 'keyup', this.filterNumeric.bindAsEventListener(this));
		}

		field.value = '';
	},

	handleChange: function(e)
	{
		var fields = this.container.getElementsByTagName('input');
		var foundEmpty = false;
		for (k = 0; k < fields.length; k++)
		{
		  	if ('' == fields[k].value)
		  	{
				foundEmpty = true;
			}
		}

		if (!foundEmpty)
		{
		  	this.createNewField();
		}
	},

	handleBlur: function(e)
	{
		var element = Event.element(e);
		if (element.parentNode && element.parentNode.parentNode &&!element.value && this.getFieldCount() > 1)
		{
			Element.remove(element.parentNode);
		}
	},

	getFieldCount: function()
	{
		return this.container.getElementsByTagName('input').length;
	},

	createNewField: function()
	{
		var tpl = this.container.getElementsByTagName('p')[0].cloneNode(true);
		this.bindField(tpl.getElementsByTagName('input')[0]);
		this.container.appendChild(tpl);
	},

	reset: function(e)
	{
		Event.stop(e);

		var nodes = this.container.getElementsByTagName('p');
		var ln = nodes.length;
		for (k = 1; k < ln; k++)
		{
		  	nodes[1].parentNode.removeChild(nodes[1]);
		}

		nodes[0].getElementsByTagName('input')[0].value = '';
		this.toggleAll(false);
	},

	filterNumeric: function(e)
	{
	  	NumericFilter(Event.element(e));
	}
}

/**
 *  Validate multiple-select option attribute values (at least one option must be selected)
 */
function SpecFieldIsValueSelectedCheck(element, params)
{
	var inputs = element.parentNode.down('.multiValueSelect').getElementsByTagName('input');

	for (k = 0; k < inputs.length; k++)
	{
		if ('checkbox' == inputs[k].type)
		{
			if (inputs[k].checked)
			{
				return true;
			}
		}
		else if ('text' == inputs[k].type)
		{
			if (inputs[k].value)
			{
				return true;
			}
		}
	}
}