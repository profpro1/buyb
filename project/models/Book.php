<?php

namespace Project\Models;


use Core\Model;

class Book extends Model {


    public function getBooks() {
        return $this->db->row('SELECT * FROM book');

    }
    public function getDescr() {
        return $this->db->row('SELECT * FROM description');
    }



    public function getBook($id) {
        $params = [
            'id'=>$id,
        ];
        return $this->db->row('SELECT book.*,description.* FROM book LEFT JOIN description ON book.id=description.book_id  WHERE book.id = :id',$params);
    }

    public function getLanguage($id) {
        $params = [
            'id'=>$id
        ];

        return $this->db->row('SELECT book.*,language.* FROM book LEFT JOIN book_lang ON book_lang.name_id=book.id LEFT JOIN language ON book_lang.name_lang_id = language.id WHERE language.id = :id',$params);
    }

}
//SELECT book.*,description.* FROM book LEFT JOIN description ON book.id=description.book_id  WHERE book.id = $id"