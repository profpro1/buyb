<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title><?=$title?></title>
        <link rel="stylesheet" href="/project/webroot/css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</head>
	<body>
    <nav>
        <ul>
            <li><a href="/">Все книги</a></li>
            <li><a href="/book/category">Категории</a></li>
            <?php if($_SESSION['auth']): ?>

            <li><a href="/account/logout">Выйти</a></li>
                <li class="login"><a href=""><?=$_SESSION['login']?></a></li>
            <?php else:?>
            <li><a href="/account/index">Войти</a></li>
            <?php endif;?>
        </ul>
    </nav>
		<?= $content ?>
	</body>
    <script src="/project/webroot/js/js.js"></script>
</html>
