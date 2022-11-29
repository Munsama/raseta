@extends ('master_admin')

@section('title')
<title>Raseta Admin|View Content</title>
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
    <a href="{{route('crud_product.index')}}" class="nav-link">
      <i class="nav-icon fas fa-tshirt"></i>
      <p>
        Product
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="{{route('crud_content.index')}}" class="nav-link active">
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
            <h1>View Content</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('crud_content.index')}}">Content</a></li>
              <li class="breadcrumb-item active">View Content</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
    <form action="{{route('update_content')}}" method="post" enctype="multipart/form-data">
      @csrf
      <div class="row">
        <div class="col-md-6">
          <div class="card card-danger">
            <div class="card-header">
              <h3 class="card-title">Content</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div align="center">
                <b><label for="content" class="col-sm-5 control-label">Content File</label></b>
                <div>
                    <img id="showcontent" src="../../public/contents/{{$data->content}}" class="img-fluid" style=" padding-top: 10px;  padding-bottom: 20px; width:50%; height:50%;">
                    <video  style="padding-top: 10px;  padding-bottom: 20px" width="50%" height="50%" autoplay controls>
                        <source id="showcontent"src="../../public/contents/{{$data->content}}" >
                    </video>
                </div>
            </div>
              
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <div class="col-md-6">
          <div class="card card-danger">
            <div class="card-header">
              <h3 class="card-title">Details</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
            <div class="form-group">
                <label for="name">Content Title </label>
                <div>
                <label class="text-muted">{{$data->title}} </label>
                </div>
              </div>
              <div class="form-group">
                <label for="price">Type</label>
                <div>
                <label class="text-muted"> {{$data->type}}</label>
                </div>
              </div>
              <div class="form-group">
                <label for="shopee">Link Shopee</label>
                <div>
                  <label class="text-muted"> {{$data->shopee}}</label>
                </div>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
        <div class="modal-footer col-12">
            <a href="javascript:history.back()" class="btn btn-danger float-right ">Back</a>
        </div>
      </div>
      </form>
    </section>
    <!-- /.content -->
  </div>
@endsection

@section('page_script')

<script>
    document.getElementById("inputcontent")
    .onchange = function(event) {
        let file = event.target.files[0];
        let blobURL = URL.createObjectURL(file);
        document.querySelector("video").src = blobURL;
    }
</script>
<script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#showcontent').attr('src', e.target.result);
            }
        reader.readAsDataURL(input.files[0]);
        }
    }
    $("#inputcontent").change(function () {
        readURL(this);
    });
</script>
@endsection