<?php
	use \Core\Route;
	
	return [
		new Route('','book','books'),
        new Route('/book/category','book','category'),
        new Route('/book/table','book','table'),
		new Route('/book/:id','book','book'),
		new Route('/account/index','account','index'),
		new Route('/account/login','account','login'),
		new Route('/account/logout','account','logout'),
        new Route('/book/cat_lang/:id','book','language'),


	];
	
