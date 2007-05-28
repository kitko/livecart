<div class="productRelationshipGroup_form"  style="display: none;">
    <form action="{link controller=backend.productRelationshipGroup action=save}" method="post" {denied role="product.update"}class="formReadonly"{/denied}>
    	<!-- STEP 1 -->
    	<fieldset>
    		<input type="hidden" name="ID" class="hidden productRelationshipGroup_ID" />
    		<input type="hidden" name="productID" class="hidden productRelationshipGroup_productID" />
    
    		<fieldset class="productRelationshipGroup_main">
        		<label class="productRelationshipGroup_name_label">{t _product_relationship_group_title}</label>
                <div class="error">
            		<input type="text" name="name" class="productRelationshipGroup_name" {denied role="product.update"}readonly="readonly"{/denied} />
            		<span class="errorText hidden"> </span>
                </div>
    		</fieldset>
            
        	<!-- STEP 3 -->
        	<fieldset class="productRelationshipGroup_translations">
        		<fieldset class="dom_template expandingSection productRelationshipGroup_translations_language">
        			<legend class="productRelationshipGroup_translations_language_legend"></legend>
        
                    <div class="productRelationshipGroup_translations_language_values expandingSectionContent">
                        <div>
                			<label class="productRelationshipGroup_name_label">{t _product_relationship_group_title}</label>
                			<input type="text" name="name" class="productRelationshipGroup_name" {denied role="product.update"}readonly="readonly"{/denied} />
            			</div>
                    </div>
        		</fieldset>
        	</fieldset>
    	</fieldset>
    
        <fieldset class="productRelationshipGroup_controls controls">
        	<span class="activeForm_progress"></span>
            <input type="submit" class="productRelationshipGroup_save button submit" value="{t _save}" />
            {t _or}
            <a href="#cancel" class="productRelationshipGroup_cancel cancel">{t _cancel}</a>
        </fieldset>
    </form>
</div>