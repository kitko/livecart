<fieldset class="orderShipment_controls error">
   <div class="orderShipment_addProduct">
       <a href="#newProduct" id="orderShipment_addProduct_{$shipment.ID}" class="addNewProductLink">Add new product</a>
   </div >
   <fieldset class="orderShipment_status error">
       <label>Status: </label>
       <select name="status" id="orderShipment_status_{$shipment.ID}">
           {foreach key="statusID" item="status" from=$statuses}
               <option value="{$statusID}" {if $shipment.status == $statusID}selected{/if}>{$status}</option>
           {/foreach}
       </select>
   </fieldset>
</fieldset >