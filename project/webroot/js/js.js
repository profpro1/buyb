function searchFunc() {
    let input,filter,table,tr,td,i;
    input = document.querySelector('#input');
    filter = input.value.toUpperCase();
    table = document.querySelector('#table_sort');
    tr = table.getElementsByTagName('tr');
    for(i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName('td')[0];
        if(td) {
            if(td.innerText.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            }else {
                tr[i].style.display = "none";
            }
        }
    }
}

function sortTable() {
    let table, rows, switching, i, x, y, shouldSwitch,max,min;
    table = document.getElementById("table_sort");
    max = document.querySelector('input[type="radio"][value="1"]');
    min = document.querySelector('input[type="radio"][value="2"]');

    switching = true;

    while (switching) {

        switching = false;
        rows = table.getElementsByTagName("TR");

        for (i = 1; i < (rows.length - 1); i++) {

            shouldSwitch = false;

            x = rows[i].getElementsByTagName("TD")[2];
            y = rows[i + 1].getElementsByTagName("TD")[2];
            if(max.checked) {
                if (Number(x.innerHTML) < Number(y.innerHTML)) {

                    shouldSwitch = true;
                    break;
                }
            }if(min.checked) {
                if (Number(x.innerHTML) > Number(y.innerHTML)) {

                    shouldSwitch = true;
                    break;
                }
            }

        }
        if (shouldSwitch) {

            rows[i].parentNode.insertBefore(rows[i+1], rows[i]);
            switching = true;
        }
    }
}


