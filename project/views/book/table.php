<!--<p>Все книги</p>-->
<div class="container">
    Поиск: <input type="text" placeholder="Введите название..." id="input" onkeyup="searchFunc()">
    <div></div>
    Показать по  <input type="radio" name="cost" value="2"> уменьшению  <input name="cost" type="radio" value="1"> увеличению цены
    <button onclick="sortTable()">Показать</button>

<table id="table_sort">

    <thead>
    <th>Название</th>
    <th>Автор</th>
    <th class="cost">Цена</th>
    <th>Изображение</th>
    <th>Цитата из книги</th>
    </thead>
    <tbody>
    <?php for($i = 0;$i < count($books);$i ++):?>
    <tr>
        <td class="tablecart"><?=$books[$i]['name']?></td>
        <td class="tablecart"><?=$books[$i]['author']?></td>
        <td class="tablecart "><?=$books[$i]['cost']?></td>
        <td class="tablecart"><img src="/project/webroot/img/<?=$books[$i]['img']?>" alt=""></td>
        <td class="tablecart"><?=$list[$i]['description']?></td>

    </tr>
    <?php endfor;?>
    </tbody>
</table>
</div>
