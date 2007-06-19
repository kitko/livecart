<p>
	Suppose that you sell a digital cameras and laptops in your store. Each of the products has its specific attributes to describe it. For example, cameras have a "digital zoom" parameter whereas laptops don't. Attributes are what makes it easier for customers to find and compare products.
</p>

<p>
	Instead of providing all product specifications as free-form text, you can
	define a fixed set of attributes for each product category and have designated fields for entering each parameter of a product. It makes it 
	easier for customers to compare common products and by using attributes you can create product filters, which make it easy for a customers to quickly
	find the products that match their requirements.
</p>

<p>
	<ins>(</ins>Attributes allow grouping (filtering) products by their specific properties. For instance, if a customer is shopping for a new laptop and is particularly looking for an AMD processor and you have created a "Processor Type"
	attribute, the customer will be able to sort the whole list of laptops to display only AMD processor powered laptops with a single click. This 
	way a customer will have an ability to select certain kind of processor without a need to browse through all the available types 
	(thus restricting his/her search to specific needs). Of course you can (and you probably should) create as many attributes as possible 
	(for instance, for size, capacity, price and so on) which will allow users to customize their search in the most effective way. Note that actual
	filtering options are set in the <a href="{help /cat.filters}">Filters</a> section where you use category's attributes to create filters.<ins>)</ins></p>
<p class="note">
	<strong>Note:</strong> Attributes have to be set up for each category individually. You can however set higher level (global) attributes for
	higher level categories when necessary. For example, if the Computers category has two subcategories for Laptops and Desktops, you can define
	the common attributes like processor type, speed, memory, etc. for the Computers category and Laptop/Desktop specific attributes (for example,
	battery life) to the respective categories. You can also define truly global attributes, which will be available for all categories by defining
	them for the root category.
</p>

<div class="tasks">
<fieldset>
<legend>Things you can do</legend>
<ul>	
	<li><a href="{self}#create">Create a new attribute</a></li>
	<li><a href="{self}#visible">Display attributes in storefront</a></li>
	<li><a href="{self}#group">Group attributes</a></li>
	<li><a href="{self}#edit">Edit attribute</a></li>
	<li><a href="{self}#delete">Delete attribute</a></li>
	<li><a href="{self}#sort">Change attribute order</a></li>
</ul>
</fieldset>
</div>


<h3 id="create">Create Attribute</h3>

<p>LC provides attribute management system which allows you to create and manage attributes in a simple manner.
 LiveCart supports three base product attribute types: 

<ul>
	<li>Number type which can be either an <i>input field</i> or a pre-defined <i>value	selector</i></li>
	<li>Text type which also can be either an an <i>input field</i> or a <i>selector</i></i>
	<li>and <i>Date</i> type</li>
</ul>

Using these base types you can create various types of attributes. Below you'll find a couple of practical 
examples on how to create attributes and choose attribute types. 
</p>

<p>
	Suppose that you have a category stocked with cell phones and you want to create custom fields for specifying 
	the following properties: <a href="{self}#carrier">Carrier</a> (select one option), <a href="{self}#features">Phone Features</a> 
	(select multiple options) and <a href="{self}#capacity">Batery Capacity</a> (number input field). 
	Because attributes are automatically included in the "Add New Product" form, we will demonstrate in our
	examples how attributes are generated and placed in the product form.
</p>

<!--
<p><a href="javascript:expand(document.getElementById('carrier'))">Create Carrier attribute</a>
<div class="dottedBorders" id="carrier" style="display:none">
-->

<h4 id="carrier">Creating Carrier attribute</h4>
<p>To create the attribute follow these steps:</p>
	<ul>	
		<li>Select a category in the category tree and click on the "Attributes" tab.</li>
		<img src="image/doc/categories/attributes/attributes_tab_green.bmp">
		<li>In the "Attributes" section click "Add new attribute":</li>
		<img src="image/doc/categories/attributes/add_attribute.bmp">
		<p id="form">Add new attribute form appears. Fill out the following fields as described below:</p>
		<img src="image/doc/categories/attributes/main_form_carrier.bmp">
		
		<li>Type - because mobile carrier is a simple text and there is probably a finite number of carriers click the type drop-down menu and 
		select "Text Options" type from the list.</li>
		<li>Check "Required" to make the field mandatory since it is an important feature.</li>
		<li>Can select multiple values - leave this checkbox clear to allow assigning only one carrier to each phone</li> 
		<li>Display attribute in product page - mark the checkbox to display attribute in the <a href="{help /products.store}#product_details">product details</a> page.</li>
		<li>Display attribute in product list - leave this checkbox clear because we don't need carrier attribute to be displayed in the <a href="{help /products.store}#product_details">product list</a>.</li>
		<li>Attribute's title represents its function thus we enter a meaningful name - "Carrier". </li>
		<li>Handle is generated automatically and is used to represent the attribute in {glossary}URL{/glossary}'s, so you can change it for 
		{glossary}SEO{/glossary} purposes, if needed.</li>
		<li>Prefix and Suffix - we leave these fields empty because carriers don't have any of them.</li> 
		<li>In the description field we enter a brief description to describe the term "Carrier" which is optional.</li> 	
		<li>International details - if you need to translate attributes in other languages installed in your system, click the Language to 
		expand additional fields (which include title and Description).</li>
		<img src="image/doc/categories/attributes/translate.bmp">

The last thing to do is to create Values which will be used as a selection option in the "Add new Product" form. 
To add values: 
	<ul>
		<li>Click on the "Values" tab in the main window -> </li>
		<img src="image/doc/categories/attributes/values_tab.bmp">

		<li>When switched to the "Values" window enter the first Mobile Carrier in the text field provided.</li>
		<img src="image/doc/categories/attributes/empty_field.bmp">

		<li>As soon as you start entering the value, additional empty field appears below.</li>
		<img src="image/doc/categories/attributes/enter_values.bmp">
	
		<li>Keep in this manner until we have a full list of carriers.</li>
		<img src="image/doc/categories/attributes/values.bmp">

		<li>Click the "Save" button to return to the Attributes page. </li>
	</ul>

	Your new attribute is automatically generated in the "Add new Product" form and <ins>will</ins> look similar to this one:
	<img src="image/doc/categories/attributes/carrier.bmp">
	</ul>

<p class="note"><strong>Note</strong>: If you need to enter additional value which is not in the list, choose 
"other" (and add a new value). A new value will be saved in the list.</p>


</p>

<!--
<p><a href="javascript:expand(document.getElementById('features'))">Create Phone Features</a>
<div class="dottedBorders" id="features" style="display:none">
-->

<h4 id="features">Creating Phone Features attribute</h4>
<p>
	Cell phones usually have a great variety of features therefore it would more convenient to create a list of features than re-enter them
	every time. To create the attribute open "Add new attribute form" <a href="{self}#carrier"><small>(remind me how)</small></a>
</p>
	<p><img src="image/doc/categories/attributes/main_form_features.bmp"></p>
	<p>The following parameters have to be set:</p>

	<ul>
		<li>Type - click type list and choose Text -> Options as your type.</li>
		<li>Required - leave the checkbox empty as some phones may don't have additional features.</li>
		<li>Can select multiple values - mark the checkbox to allow multiple features assigned to a cell phone</li>
		<li>Display attribute in product page - mark the checkbox to display attribute in the <a href="{help /products.store}#product_details">product details</a> page.</li>
		<li>Display attribute in product list - mark the checkbox to display attribute in the <a href="{help /products.store}#product_details">product list</a> page.</li>
		<li>Title - enter "Features".</li>
		<li>Handle is generated automatically and is used to represent the attribute in {glossary}URL{/glossary}'s, so you can change it for 
		{glossary}SEO{/glossary} purposes, if needed.</li>
		<li>Description - optional description the attribute.</li>

	</ul>

<p>The next thing to do is to create a value list of mobile's features. 

	<ul>
		<li>Click on the "Values" tab which appears on the right of the "Main" tab. </li>
		<img src="image/doc/categories/attributes/value_tab_features.bmp">
		<li>In the "Values" section enter all the necessary features one by one.</li>
		<li>Save the attribute when done.</li>
	</ul>

</p>

	The representation of your generated field could be similar to this:

	<img src="image/doc/categories/attributes/features.bmp">

<p class="note"><strong>Note</strong>: to create a corresponding attribute for a numeric selection choose <strong>Number Selector</strong> type followed
by necessary changes. A numeric attribute looks similar to this one:
<img src="image/doc/categories/attributes/bandwidth_generated.bmp">
<strong>Other</strong> value can be used to add more values which will be saved in the original attribute.
</p>


</p>

<!--
<p><a href="javascript:expand(document.getElementById('capacity'))">Create Batery Capacity</a>
<div class="dottedBorders" id="capacity" style="display:none">
-->

<h4 id="capacity">Creating Batery Capacity attribute</h4>

<p>
	Battery capacity is expressed in numeric(al) format of mAh, therefore you should consider choosing a "Number" type. When it comes
	to field or selector it is up to you to decide whether you want to create a single field for entering a value or to create a pre-defined list of possible capacity values. 
	We choose a field type in the following example.
</p>

<ul>
	<li>Click "Add new attribute" <a href="{self}#carrier"><small>(remind me how)</small></a></li>
	<li>Type - select "Number Field".</li>
	<li>Required - click the checkbox to make the field required attribute.</li>
	<li>Display attribute in product page - mark the checkbox to display attribute in the <a href="{help /products.store}#product_details">product details</a> page or leave it clear otherwise.</li>
	<li>Display attribute in product list - mark the checkbox to display attribute in the <a href="{help /products.store}#product_details">product list</a> page or leave it clear otherwise.</li>
	<li>Title - enter "Battery Capacity".</li>
	<li>Handle is generated automatically and is used to represent the attribute in {glossary}URL{/glossary}'s, so you can change it for 
		{glossary}SEO{/glossary} purposes, if needed.</li>
	<li>Prefix - leave the field empty.</li>			
	<li>Suffix - enter "mAh" as battery capacity is defined by this symbol.</li>
	<li>In the description field provide brief information about the attribute.</li>
</ul>	

<p>Don't forget to click "Save" at the end.</p>
<br \>
<p>
	Generated attribute will provide a field for entering battery capacity:

	<img src="image/doc/categories/attributes/capacity_generated_mah.bmp">
</p>
	
<p class="note"><strong>Note</strong>: to create analogous attribute for Text Field simply change type to "Text Field".</p>


</p>

<h3 id="visible">Display attributes in your e-store</h3>

<p>You can define what attributes should be displayed with your products.</p>

<ul>
	<li id="attributes_product_list">To make the attribute visible in the <a href="{help /products.store}#product_list">product list page</a>, mark the "Display attribute in the product list page" checkbox.</li>
	<img src="image/doc/categories/attributes/product_list.bmp">
	<li id="attributes_product_details">To make the attribute visible in the <a href="{help /products.store}#product_details">product's detailed page</a>, mark the "Display attribute in the product page" checkbox.</li>
	<img src="image/doc/categories/attributes/product_page.bmp">
</ul>

<p>(You can as well define the order in which attributes are displayed in the "{glossary}Product list{/glossary}" and "{glossary}Product details{/glossary}" page.
See <a href="{self}#sort">Change attribute order</a> for more information).</p>

<h3 id="group">Group attributes</h3>

LC allows you to group related attributes together. This is mostly important for the "{glossary}Product Details{/glossary}" page 
because groups allow you to set neccessary attributes' arrangement.
To create a new group:
	<ul>
		<li>Click <strong>Add new group</strong></li>
		<img src="image/doc/categories/attributes/add_new_group.bmp">
		<li>Enter group title (for instance, "dimensions")</li>
		<img src="image/doc/categories/attributes/group_title.bmp">
		<li>Supply translations for other languages if applicable</li>
	</ul>
Attribute groups appear as a <del>rectangle</del> <ins>box?</ins> which can contain as many attributes as neccesary. To place attributes into groups, simply drag attributes
into the appropriate groups.

<img src="image/doc/categories/attributes/groups_main.bmp">

	In the image above you see two groups named "Cell Phones" and "Dimensions" and one attribute "Color" what doesn't belong to any group. 
	To change group's name or delete a group click one of the icons on the left:

<img src="image/doc/categories/attributes/group_edit.bmp">

<p class="note"><strong>Note</strong>: deleting a group will cause all of its attributes to be deleted as well. Thus you have to <strong>ungroup
</strong> attributes that you want to keep.</p>


<h3 id="edit">Edit attribute</h3>
<p align="right"><a href="{self}#top"><small>Top</small></a></p>

To edit attribute: select an attribute from the list and click the "pen" icon on the left:

<img src="image/doc/categories/attributes/edit_attribute.bmp">

Attribute's management form appears with its specification details. To edit any of attribute's fields or values, simply alter existing parameters
and save changes afterwards. For detailed fields' description, refer to <a href="{self}#form">Create new attribute</a> section.

<!--
<a onclick="expand(document.getElementById('carrier'))"href="{self}#form">show me</a>
-->

<h3 id="delete">Delete attribute</h3>

To delete attribute: select an attribute from the list and click the "Delete" icon on the left:

<img src="image/doc/categories/attributes/delete_attribute.bmp">

<h3 id="sort">Change attribute order</h3>

The order of attributes and attribute groups define how they are displayed in the "{glossary}Product list{/glossary}" and "{glossary}Product details{/glossary}" page. To change the order of attributes or attribute groups, hover mouse cursor over attribute or entire group and then drag it up or down.
<img src="image/doc/categories/attributes/sort.bmp">


{helpSeeAlso}
	{see categories.details}
	{see categories.filters}
	{see categories.images}
{/helpSeeAlso}