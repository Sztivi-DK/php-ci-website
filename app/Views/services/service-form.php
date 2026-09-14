<?= helper('form') ?>

<?= form_open(base_url(!isset($model) ? 'services/new' : 'services/edit/'.$model->id)) ?>
    
    <div class="form-group mb-3">
	<?=
	    form_label('Megnevezés', 'name', ['class' => 'form-label'])
	    .form_input('name', $error ? set_value('name') : ($model->name ?? ''), 
		    ['id' => 'name', 'placeholder' => 'Például: Alfa csomag',
		'class' => 'form-control']) 
	?>
    </div>
    <div class="form-group mb-3">
	<?=
	    form_label('Leírás', 'description', ['class' => 'form-label'])
	    .form_input('description', 
		    $error ? set_value('description') : ($model->description ?? ''), 
		    ['id' => 'description', 'placeholder' => 'Leírás', 'class' => 'form-control']) 
	?>
    </div>
    <div class="form-group mb-3">
	<?=
	    form_label('Egységár', 'price', ['class' => 'form-label'])
	    .form_input('price', $error ? set_value('price') : ($model->price ?? ''), 
		    ['id' => 'price', 'placeholder' => 'Ár',
		'class' => 'form-control']) 
	?>
    </div>
    <div class="form-group mb-3">
	<?=
	    form_label('Láthatóság', 'public', ['class' => 'form-label'])
	    .form_dropdown('public', [0 => 'Nem publikus', 1 => 'Publikus'], $error ? set_value('public') : ($model->public ?? 0), 
		    ['id' => 'public', 'class' => 'form-select']) 
	?>
    </div>

<?= isset($model) ? form_hidden('id', $model->id) : '' ?>
<?= form_button(['type' => 'submit', 'class' => 'btn btn-success'],
'<i class="fa-solid fa-check"></i>'.(!isset($model) ? 'Létrehozás' : 'Változások mentése')) ?>
<?= form_close() ?>