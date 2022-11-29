

@extends ('master_admin')

@section('title')
<title>Raseta Admin|Content</title>
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
    <a href="{{ route('crud_category.index') }}" class="nav-link">
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
    <a href="{{ route('crud_content.index') }}" class="nav-link active">
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
            <h1>Content</h1>
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
                <h3 class="card-title">Admin dapat menambah, melihat detail, mengubah, dan menghapus konten sesuai dengan kebutuhan.</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                @if (session('errors'))
                  <div class="alert alert-danger">
                      {{ session('errors') }}
                  </div>
                @endif
                @if (session('success'))
                  <div class="alert alert-success">
                      {{ session('success') }}
                  </div>
                @endif
                <a href="{{route('add_content')}}">  <span class="btn btn-success btn-sm">
                        <i class="fas fa-plus"> </i>
                        <span> New Content</span>
                      </span> </a>
                  <break>
                <table id="example1" class="table table-bordered">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Title</th>
                      <th>Type</th>
                      <th>Content</th>
                      <th>Shopee</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>No</th>
                      <th>Title</th>
                      <th>Type</th>
                      <th>Content</th>
                      <th>Shopee</th>
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
        url: "{{ route('crud_content.index') }}",
      },
      columns:[
        {data: 'DT_RowIndex', name: 'DT_RowIndex'},
        {data: 'title', name: 'title'},
        {data: 'type', name: 'type'},
        {data: 'content', name: 'content', width:'50%', 
          render: function(data, type, row){
            if (row.type === 'Video'){
              return "<video width='50%' controls> <source src={{ URL::to('/') }}/public/contents/" + data + "> </video>";
            } else {
              return "<img src={{ URL::to('/') }}/public/contents/" + data + " width='50%' class='img-fluid' />";
            }
          }, orderable: false },
          {data: 'shopee', name: 'shopee'},
        {data: 'action', name: 'action', orderable: false}
      ]
    });

    var content_id;
    $(document).on('click', '.delete', function(){
      content_id = $(this).attr('id');
      $('#confirmModal').modal('show');
    });

    $('#ok_button').click(function(){
      $.ajax({
        url:"/crud_content/destroy/"+content_id,
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
  
