<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website Reloaded</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="ckeditor5/ckeditor5.css">
</head>
<body class="bg-light">

    <header class="container-fluid bg-success text-white p-2">
        <div class="row">
            <div class="col-sm-4 h5 pt-3">Website Reloaded</div>
            <nav class="col-sm-8 navbar navbar-dark navbar-expand-sm justify-content-end pe-2">
            <?php if (true): ?>
		<ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="<?= base_url() ?>" class="nav-link">
                            <i class="fa-solid fa-house-chimney"></i> Kezdőlap
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('services') ?>" class="nav-link">
                            <i class="fa-brands fa-mailchimp"></i> Szolgáltatások
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('articles') ?>" class="nav-link">
                        <i class="fa-solid fa-rectangle-list"></i> Cikkek
                        </a>
                    </li>
		    <li class="nav-item">
                        <a href="<?= base_url('contacts') ?>" class="nav-link">
                        <i class="fa-solid fa-address-card"></i> Kapcsolat
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('logout') ?>" class="nav-link">
                        <i class="fa-solid fa-door-open"></i> Kilépés
                        </a>
                    </li>
                </ul>
	    <?php endif; ?>
            </nav>
        </div>
    </header>

    <main class="container pt-4 pb-5">
	<?= $this->renderSection('main') ?>
    </main>
    <footer class="container-fluid bg-secondary p-2 text-center">
	Website Reloaded
    </footer>
</body>
</html>