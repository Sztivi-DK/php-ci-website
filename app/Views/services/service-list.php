<?= $this->extend('templates/layout') ?>
<?= $this->section('main') ?>

<h1>Szolgáltatások</h1>
<section class="mb-white p-4 border shadow">
    <a href="<?= base_url('services/new') ?>" class="btn btn-success mb-3">
	<i class="fa-solid fa-circle-plus me-1"></i>
	Új szolgáltatás létrehozása
    </a> 
    
    <table class="table table-striped table-hover mb-4">
	
	<thead class="table-secondary">
	    <tr>
		<th>Sorszám</th> 
		<th>Megnevezés</th> 
		<th>Leírás</th>   
		<th>Egységár</th> 
		<th>Állapot</th> 
		<th> </th>       
		<th> </th>   
		<th> </th>   
	    </tr>
	</thead>
	
	<tbody>
	    <?php foreach ($services as $serv): ?>
	    <tr>
		<td><?= $serv->id ?></td>
		<td><?= $serv->name ?></td>		    
		<td><?= $serv->description ?></td>
		<td><?= $serv->price ?></td>
		<td><?= $serv->public ?></td>
		<td><a href="">Részletek</a></td>
		<td>
		    <a href="<?= base_url('services/edit/'.$serv->id) ?>" title="Szerkesztés">
			<i class="h4 fa-solid fa-square-pen"></i>  
		    </a>
		</td>
		<td>
		    <a href="" title="Törlés" data-bs-toggle="modal" 
		       data-bs-target="#delDialog<?= $serv->id ?>">
			<i class="link-danger h4 fa-solid fa-trash"></i>  
		    </a>
		</td>
	    </tr>
	    
	    <div class="modal fade" id="delDialog<?= $serv->id ?>">
		<div class="modal-dialog">
		    <div class="modal-content">
			<div class="modal-header">
			    <h4 class="modal-title">Szolgáltatás törlése</h4>
			    <button class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
			    A következő szolgáltatás eltávolítására készülsz: 
			    "<?= $serv->name ?>" Biztosan törlöd?
			</div>
			<div class="modal-footer">
			    <form method="post" action="<?= base_url('services') ?>">
				<input type="hidden" name="del" value="<?= $serv->id ?>">
				<button type="button" 
					class="btn btn-secondary" 
					data-bs-dismiss="modal">Mégsem</button>
				<button class="btn btn-danger">Igen, törlöm</button>
			    </form>
			</div>
		    </div>
		</div>
	    </div>
	    
	    <?php endforeach; ?>
	</tbody>	    
	
    </table>
</section>

<?= $this->endSection('main') ?>
    