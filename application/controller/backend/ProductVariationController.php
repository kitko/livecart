<?php

ClassLoader::import("application.controller.backend.abstract.StoreManagementController");
ClassLoader::import("application.model.product.Product");
ClassLoader::import("application.model.product.ProductVariationType");

/**
 * Product variations
 *
 * @package application.controller.backend
 * @author Integry Systems
 * @role option
 */
class ProductVariationController extends StoreManagementController
{
	/**
	 * @return ActionResponse
	 */
	public function index()
	{
		$response = new ActionResponse();

		$parent = Product::getInstanceByID($this->request->get('id'), true);

		$variationTypes = $parent->getRelatedRecordSet('ProductVariationType');
		$variations = $variationTypes->getVariations();
		$parentArray = $parent->toArray();

		$response->set('parent', $parentArray);
		$response->set('params', array(
									'parent' => $parentArray,
									'variationTypes' => $variationTypes->toArray(),
									'variations' => $variations->toArray(),
									'matrix' => $parent->getVariationMatrix()
									));

		return $response;
	}

	public function save()
	{
		$parent = Product::getInstanceByID($this->request->get('id'), true);

		$items = json_decode($this->request->get('items'), true);
		$types = json_decode($this->request->get('types'), true);
		$variations = json_decode($this->request->get('variations'), true);

		$existingTypes = $existingVariations = $existingItems = array();

		// deleted types
		foreach ($types as $id)
		{
			if (is_numeric($id))
			{
				$existingTypes[] = $id;
			}
		}

		if ($existingTypes)
		{
			$parent->deleteRelatedRecordSet('ProductVariationType', new ARDeleteFilter(new NotINCond(new ARFieldHandle('ProductVariationType', 'ID'), $existingTypes)));
		}

		// deleted variations
		foreach ($variations as $type => $typeVars)
		{
			foreach ($typeVars as $id)
			{
				if (is_numeric($id))
				{
					$existingVariations[] = $id;
				}
			}
		}

		if ($existingVariations)
		{
			$f = new ARDeleteFilter(new INCond(new ARFieldHandle('ProductVariation', 'typeID'), $existingTypes));
			$f->mergeCondition(new NotINCond(new ARFieldHandle('ProductVariation', 'ID'), $existingVariations));
			ActiveRecordModel::deleteRecordSet('ProductVariation', $f);
		}

		// deleted items
		foreach ($items as $id)
		{
			if (is_numeric($id))
			{
				$existingItems[] = $id;
			}
		}

		if ($existingItems)
		{
			$parent->deleteRelatedRecordSet('Product', new ARDeleteFilter(new NotINCond(new ARFieldHandle('Product', 'ID'), $existingItems)));
		}

		// load existing records
		foreach (array('Types' => 'ProductVariationType', 'Variations' => 'ProductVariation', 'Items'  => 'Product') as $arr => $class)
		{
			$var = 'existing' . $arr;
			$array = $$var;
			if ($array)
			{
				ActiveRecordModel::getRecordSet($class, new ARSelectFilter(new INCond($class, 'ID'),
			}
		}

		// create new types
		foreach ($types as $id)
		{
			if (!is_numeric($id))
			{
				$existingTypes[] = $id;
			}
		}
		var_dump($this->request->toArray());

	}
}

?>