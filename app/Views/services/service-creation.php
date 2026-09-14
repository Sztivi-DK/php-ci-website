<?= $this->extend('templates/layout') ?>
<?= $this->section('main') ?>

    <h1>Új szolgáltatás</h1>
    <section class="mb-white p-4 border shadow">
	
	<?php if ($success): ?>
	<p class="alert alert-success">
	    <i class="fa-solid fa-circle-check"></i>
	    <strong>Sikeresen létrehozva!</strong>
	    Az új szolgáltatás adatai rögzítésre kerültek
	</p>
	<?php elseif ($error): ?>
	<p class="alert alert-danger">
	    <i class="fa-solid fa-exclamation-triangle"></i>
	    <strong>Hibásan kitöltve!</strong>
	    <?= implode(' ', $error) ?>  
	</p> <!-- Az implode összefűzi a dolgokat --> 
	<?php endif; ?>
	
	<?= $this->render('services/service-form') ?>
	
    </section>

<?= $this->endSection('main') ?>