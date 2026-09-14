<?php
namespace App\Models;

class ServiceModel extends \CodeIgniter\Model
{
    protected $table = 'services';
    protected $returnType = \App\Models\Entities\Service::class;
    
    protected $allowedFields = ['name', 'description', 'price', 'public'];
    
    
    public function getCurrentServices(): array
    {
	return $this->orderBy('id', 'asc')->findAll();
    }
    
}
