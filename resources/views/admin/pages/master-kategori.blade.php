@extends('admin.layout.layout')
@section('title') Master Kategori Laporan Pengaduan @endsection

@section('css-page')
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<style>

input:focus {
    background-color: #fff;
}

#mainTable td {
    background-color: #fff;
}
</style>
@endsection

@section('content')

<div class="row" style="margin-top: 80px;">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h3><strong>Master Kategori Laporan Pengaduan</strong></h3>
            </div>            
            <div class="body">
                <div style="margin-bottom: 10px; float: right">
                    <button type="button" class="btn bg-light-blue waves-effect add-kategori">
                        <i class="material-icons">add</i>
                        <span>TAMBAH KATEGORI</span>
                    </button>
                </div>                
                <table id="mainTable" class="table table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Kategori</th>
                            <th>Active</th>                        
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($kategori as $result)
                        <tr>
                            <td>{{$loop->index + 1}}</td>
                            <td class="editable-td" data-kategori="{{ $result->id }}">{{$result->kategori}}</td>
                            <td><input class="set-kategori" type="checkbox" data-kategori="{{ $result->id }}" {{ ($result->is_active == '1' ? 'checked' : '') }} data-toggle="toggle"></td>
                        </tr>                      
                        @endforeach
                    </tbody>                    
                </table>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="add_kategori_modal" tabindex="-1" role="dialog"
    aria-labelledby="add_kategori_modal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="add_kategori_modal">Tambah Kategori Pengaduan
                </h5>
                <button type="button" class="close" data-dismiss="modal"
                    aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                
                    <div class="input-group">
                        <div class="form-line">
                            <input type="text" class="form-control field_kategori" placeholder="Kategori Pengaduan ...">
                        </div>                    
                    </div>                
            </div>
            <div class="modal-footer">
                <button type="button"
                    class="btn btn-info waves-effect simpan-kategori">Save</button>
                <button type="button" class="btn btn-danger waves-effect"
                    data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js-page')
<script src="{{asset('public/admin/js/bundles/editable-table/mindmup-editabletable.js')}}"></script>
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<script>
$(document).ready(function(){    
    $("#mainTable").editableTableWidget(); 
    
    
    // $(".editable-td").on('change', function(evt, newValue){
    //     let val = newValue.trim();        
    //     if(val.length == 0)
    //     {
    //         Swal.fire({
    //             icon: 'warning',
    //             title: 'Warning!',
    //             html: '<p>Isian tidak boleh kosong</p>'
    //         });
    //     } else 
    //     {
    //         console.log('ready to save');
    //     }
    // })
})
</script>
@endsection