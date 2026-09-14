<?php
namespace App\Controllers;

use App\Models\ServiceModel;

class Services extends BaseController
{
    public function create(): string
    {
	$error = null;
	$inserted = false;
	$post = $this->request->getPost();
	if ($post) 
	{
	    /** @var ServiceModel $model */
	    $model = model(ServiceModel::class);
	    $inserted = $model->save($post);
	    
	    if (!$inserted) 
	    {
		$error = $model->errors();
	    } 
	}
	return view('services/service-creation', ['error' => $error, 'success' => $inserted]);
    }
    
    public function list(): string
    {
	/** @var ServiceModel $model */
	$model = model(ServiceModel::class);
	
	$del = $this->request->getPost('del');
	if ($del)
		{
			$model->delete($del);
		}
	
	$services = $model->getCurrentServices();
	
	return view('services/service-list', ['services' => $services]);
    } 

	public function edit($id): string
	{
		/** @var ServiceModel $model */
		$model = model(ServiceModel::class);

		$service = $model->find($id);
		$error = null;
		$updated = false;

		$post = $this->request->getPost();

		if ($post)
			{
				$updated = $model->save($post);

				if (!$updated)
					{
						$error = $model->errors();
					}
			}

		return view('services/service-edit', [
			'model' => $service,
			'error' => $error,
			'success' => $updated]);
	}
}
