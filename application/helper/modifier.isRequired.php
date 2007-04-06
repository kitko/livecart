<?php

/**
 *  Determine if a check has been applied on a form field
 */
function smarty_modifier_isRequired(Form $form, $fieldName, $check = 'IsNotEmptyCheck')
{
    $checkData = $form->getValidator()->getValidatorVar($fieldName)->getCheckData();  
    
    return isset($checkData[$check]);    
}

?>