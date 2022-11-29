@extends('master_admin')

@section('title')
<title>Raseta Admin|Category</title>
@endsection

@section('sidebar')
  <li class="nav-item">
    <a href="{{route('dashboard')}}" class="nav-link">
      <i class="nav-icon fas fa-tachometer-alt"></i>
      <p>
        Dashboard
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="{{ route('crud_category.index') }}" class="nav-link active">
      <i class="nav-icon fas fa-object-group"></i>
      <p>
        Category
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="{{ route('crud_product.index') }}" class="nav-link">
      <i class="nav-icon fas fa-tshirt"></i>
      <p>
        Product
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="{{ route('crud_content.index') }}" class="nav-link">
      <i class="nav-icon fas fa-video"></i>
      <p>
        Content
      </p>
    </a>
  </li>
@endsection

@section('main')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Category</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Admin dapat menambah, mengubah, dan menghapus kategori untuk digunakan pada detail produk.</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <button type="button" name="create_category" id="create_category" class="btn btn-success btn-sm"><i class="fas fa-plus"> </i> Tambah Kategori </button>
                  <break>
                <table id="example1" class="table table-bordered">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Name</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>No</th>
                      <th>Name</th>
                      <th>Action</th>
                    </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- Modal -->
  <div id="formModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title"> Form Tambah Kategori</h4>
          <button type="button" name="cancel_button" id="cancel_button"class="close" data-dismiss="modal">&times;</button>
        </div>
          <div class="modal-body">
            <span id="form_result"></span>
            <form method="post" id="sample_form" class="form-horizontal" enctype="multipart/form-data">
              @csrf
              <div class="form-group">
                <label class="control-label col-md-12" >Nama Kategori</label>
                <div class="col-md-12">
                  <input required type="text" name="category_name" id="category_name" class="form-control" placeholder="Masukkan Nama Kategori" />
                </div>
              </div>
              <div class="modal-footer">
                <input type="hidden" name="action" id="action" />
                <input type="hidden" name="hidden_id" id="hidden_id" />
                <button type="button" name="cancel_button" id="cancel_button" class="btn btn-danger btn-sm" data-dismiss="modal">Batal</button>
                <input type="submit" name="action_button" id="action_button" class="btn btn-primary btn-sm" value="Kirim" />            
              </div>
            </form>
          </div>
      </div>
    </div>
  </div>
  <div id="confirmModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Konfirmasi Hapus Data</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <a align="center" style="margin:0;">Anda Yakin Ingin Menghapus Data Ini?</a>
            </div>
            <div class="modal-footer">
            <button type="button" name="cancel_button" id="cancel_button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
             <button type="button" name="ok_button" id="ok_button" class="btn btn-danger btn-sm">Hapus</button>                
            </div>
        </div>
    </div>
  </div>
@endsection  

@section('page_script')
  <script>
    $(function(){ 
      $("#example1").DataTable({
        "responsive":true,"lengthChange": false, "autoWidth": false,
        processing: true,
        serverSide: true,
        ajax:{
        url: "{{ route('crud_category.index') }}",
      },
      columns:[
        {data: 'DT_RowIndex', name: 'DT_RowIndex'},
        {data: 'category_name', name: 'category_name'},
        {data: 'action', name: 'action', orderable: false}
      ]
    });

    $('#create_category').click(function(){
				$('.modal-title').text("Form Data Kategori");
				$('#sample_form')[0].reset();
				$('#action_button').val("Kirim");
				$('#action').val("Kirim");
				$('#formModal').modal('show');
			});
			$('#sample_form').on('submit', function(event){
				event.preventDefault();
				if($('#action').val() == 'Kirim'){
					$.ajax({
						url:"{{ route('crud_category.store') }}",
						method:"POST",
						data: new FormData(this),
						contentType: false,
						cache:false,
						processData: false,
						dataType:"json",
						success:function(data){
							var html = '';
							if(data.errors){
								html = '<div class="alert alert-danger">';
								for(var count = 0; count < data.errors.length; count++){
									html += '<p>' + data.errors[count] + '</p>';
								}
								html += '</div>';
							}
							if(data.success){
								$('#sample_form')[0].reset();
								$('#formModal').modal('hide');
								Swal.fire({
									position: 'middle-center',
									icon: 'success',
									title: 'Data Berhasil Ditambahkan',
									showConfirmButton: false,
									timer: 1500
								})
							$('#example1').DataTable().ajax.reload();
							}
						$('#form_result').html(html);
						}
					})
				}
			});

      $(document).on('click', '.edit', function(){
        var id = $(this).attr('id');
        $('#form_result').html('');
        $.ajax({
            url:"crud_category/"+id+"/edit",
            dataType:"json",
            success:function(html){
              $('.modal-title').text("Edit Data");
              $('#category_name').val(html.data.category_name);
              $('#hidden_id').val(html.data.id);
              $('#action_button').val("Edit");
              $('#action').val("Edit");
              $('#formModal').modal('show');
            }
        })
    });

    $('#sample_form').on('submit', function(event){
        event.preventDefault();
        if($('#action').val() == "Edit"){
            $.ajax({
            url:"{{ route('crud_category.update') }}",
            method:"POST",
            data:new FormData(this),
            contentType: false,
            cache: false,
            processData: false,
            dataType:"json",
            success:function(data){
                var html = '';
                if(data.errors){
                    html = '<div class="alert alert-danger">';
                    for(var count = 0; count < data.errors.length; count++){
                        html += '<p>' + data.errors[count] + '</p>';
                    }
                    html += '</div>';
                }
                if(data.success){
                    $('#sample_form')[0].reset();
                    $('#formModal').modal('hide');
                        Swal.fire({
                            position: 'middle-center',
                            icon: 'success',
                            title: 'Data Berhasil Diubah',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    $('#example1').DataTable().ajax.reload();
                }
                $('#form_result').html(html);
              }
          });
      }
  });

    var category_id;
    $(document).on('click', '.delete', function(){
      category_id = $(this).attr('id');
      $('#confirmModal').modal('show');
    });

    $('#ok_button').click(function(){
      $.ajax({
        url:"/crud_category/destroy/"+category_id,
        beforeSend:function(){
        $('#ok_button').text('Delete');
      },
      success:function(data){
        setTimeout(function(){
          $('#confirmModal').modal('hide');
          Swal.fire(
            'Remind!',
            'Data Berhasil Dihapus!',
            'success'
          )
          $('#example1').DataTable().ajax.reload();
        }, 1500);
      }
  })
 });

});
</script>
@endsection