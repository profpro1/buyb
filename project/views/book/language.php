<div class="container">
    <div class="grid-container">
        <?php foreach ($lang as $book):?>
            <div class="grid-item">
                <div class="cart">
                    <div class="img"><img src="/project/webroot/img/<?=$book['img']?>" alt=""></div>

                    <p class="onebook"><a href="/book/<?=$book['second_id']?>"><?=$book['name']?></a></p>
                    <p><b><?=$book['author']?></b></p>
                    <p> Стоимость:<?=$book['cost']?> р</p>
                    <input type="submit" value="В корзину">
                </div>
            </div>
        <?php endforeach;?>
    </div>
</div>
