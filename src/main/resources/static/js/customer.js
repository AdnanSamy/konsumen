const mainTable = $('#main_table')
const btnNew = $('#btnNew')
const modalCustomer = $('#modalCustomer')
const saveType = $('#saveType')
const dataId = $('#dataId')
const nama = $('#nama')
const alamat = $('#alamat')
const kota = $('#kota')
const provinsi = $('#provinsi')
const save = $('#save')
const statusCustomer = $('#status')
const UPDATE_TYPE = "update"
const INSERT_TYPE = "insert"

function updateData(){
    alert('UPDATE DATA')
    const customer = {
        id: dataId.val(),
        nama: nama.val().trim(),
        alamat: alamat.val().trim(),
        kota: kota.val().trim(),
        provinsi: provinsi.val().trim(),
        status: statusCustomer.val().trim(),

    }
    $.ajax({
        url: '/customer/api',
        type: 'put',
        processData: false,
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify(customer),
        success: function (res) {
            const { message } = res
            if (message == 'success') {
                // location.reload()
            }
        }
    })
}

function saveData(){
    alert('SAVE DATA')
    const customer = {
        nama: nama.val().trim(),
        alamat: alamat.val().trim(),
        kota: kota.val().trim(),
        provinsi: provinsi.val().trim(),
        status: statusCustomer.val().trim(),

    }
    $.ajax({
        url: '/customer/api',
        type: 'post',
        processData: false,
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify(customer),
        success: function (res) {
            const { message } = res
            if (message == 'success') {
                location.reload()
            }
        }
    })
}

function editData(id) {
    
    $.ajax({
        url: `/customer/api/${id}`,
        type: 'get',
        success: function (res) {
            saveType.val(UPDATE_TYPE)
            dataId.val(res.id)
            nama.val(res.nama)
            alamat.val(res.alamat)
            kota.val(res.kota)
            provinsi.val(res.provinsi)
            statusCustomer.val(res.status)
            modalCustomer.modal('show')
        }
    })
}

function deleteData(id){
    $.ajax({
        url: `/customer/api/${id}`,
        type: 'delete',
        success: function (res) {
            location.reload()
        }
    })
}

btnNew.click(function () {
    modalCustomer.modal('show')
    saveType.val(INSERT_TYPE)
})

save.click(function () {
    if (saveType.val().trim() == UPDATE_TYPE) {
        updateData()
    }else{
        saveData()
    }
})

$.ajax({
    url: '/customer/api',
    type: 'get',
    success: function (res) {
        console.log('RESPONSE GET ALL -> ', res);

        mainTable.DataTable().destroy();

        res.forEach((e, i) => {
            mainTable.find("tbody").append(`
                    <tr>
                        <td>${i + 1}</td>
                        <td>${e.nama}</td>
                        <td>${e.alamat}</td>
                        <td>${e.kota}</td>
                        <td>${e.provinsi}</td>
                        <td>${e.status}</td>
                        <td>
                            <button class="btn btn-warning" onclick="editData(${e.id
                })">Edit</button>
                            <button class="btn btn-danger" onclick="deleteData(${e.id
                })">Delete</button>
                        </td>
                    </tr>
                `);
        });

        mainTable.DataTable();
    }
})

$('#main_table').DataTable()