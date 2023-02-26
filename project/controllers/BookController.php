<?php

namespace Project\Controllers;
use Core\Controller;
use Project\Models\Book;


class BookController extends Controller
{

    public function books() {
        $this->title = 'Книги';
        $books = (new Book)->getBooks();

        return $this->render('book/all',['books'=>$books]);

    }

    public function book($id)
    {
        $book = (new Book)->getBook($id['id']);
        $book = makeArr($book);
        $this->title = $book['name'];

        return $this->render('book/one',[
            'book'=>$book,
        ]);
    }
    public function language($id) {
        $this->title = 'Книги';
        $lang = (new Book)->getLanguage($id['id']);
        return $this->render('book/language',['lang'=>$lang]);
    }

    public function category() {
        $this->title = 'Категории';
        return $this->render('book/category');
    }
    public function table() {
        $this->title = 'Книги';
        $list = (new Book)->getDescr();
        $books = (new Book())->getBooks();

        return $this->render('book/table',[
            'list'=>$list,
            'books'=>$books,
        ]);
    }
}