@extends ('master_admin')

@section('title')
<title>Raseta Admin|Edit Product</title>
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
    <a href="{{route('crud_product.index')}}" class="nav-link">
      <i class="nav-icon fas fa-object-group"></i>
      <p>
        Category
      </p>
    </a>
  <li class="nav-item">
    <a href="{{route('crud_product.index')}}" class="nav-link active">
      <i class="nav-icon fas fa-tshirt"></i>
      <p>
        Product
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="{{route('crud_content.index')}}" class="nav-link">
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
            <h1>Edit Product</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('crud_product.index')}}">Product</a></li>
              <li class="breadcrumb-item active">Edit Product</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
    <form action="{{route('update_product')}}" method="post" enctype="multipart/form-data">
      @csrf
      <div class="row">
        <div class="col-md-6">
          <div class="card card-danger">
            <div class="card-header">
              <h3 class="card-title">Upload Image</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div align="center">
                <b><label for="image" class="col-sm-5 control-label">Product Image</label></b>
                <div>
                    <img id="showimage" src="{{asset('images/{{$data->image}}')}}" class="img-fluid" style=" padding-top: 10px;  padding-bottom: 20px; width:70%; height:70%; ">
                </div>
                <input type="file"  name="image" id="inputimage" accept="image/jpg, image/png, image/jpeg" />
                <input type="hidden" name="hidden_image" value="{{$data->image}}" />
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
                <label for="name">Product Name</label>
                <input type="text" name="name" value="{{$data->name}}" id="name" class="form-control" placeholder="e.g: Jacket Series-Jacket Name">
              </div>
              <div class="form-group">
                <label for="category">Type</label>
                <select class="form-control" name ="category" id="category" >
                    <option value=""> Select Type</option>
                    @foreach ($category as $c)
                    <option value = "{{ $c->id_category }}" {{ $c->id_category == $data->category_id ? 'selected' : '' }}> {{$c->category_name}}</option> 
                    @endforeach
                </select>
              </div>
              <div class="form-group">
                <label for="price">Real Price</label>
                <input type="text" onkeypress="return event.charCode >= 48 && event.charCode <=57" name="price" value="{{$data->price}}" id="price" class="form-control" placeholder="e.g: Rp600.000">
              </div>
              <div class="form-group">
                <label for="discount">Discount Price</label>
                <input type="text" onkeypress="return event.charCode >= 48 && event.charCode <=57"name="discount" value="{{$data->discount}}"id="discount" class="form-control" placeholder="e.g: Rp300.000">
              </div>
              <div class="form-group">
                <label for="shopee">Link Shopee</label>
                <input type="text" name="shopee" value="{{$data->shopee}}" id="shopee" class="form-control" placeholder="e.g: https://abc-xyz">
              </div>
              <div class="form-group">
                <label for="shopee">Link Lazada</label>
                <input type="text" name="lazada" value="{{$data->lazada}}" id="lazada" class="form-control" placeholder="e.g: https://abc-xyz">
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
        <div class="modal-footer col-12">
          <a href="javascript:history.back()"  class="btn btn-secondary float-right ">Cancel</a>
          <input type="hidden" name="id" id="id" value="{{$id}}" />
          <input type="submit" name="action_button" id="action_button" value="Save" class="btn btn-success float-right">
        </div>
      </div>
      </form>
    </section>
    <!-- /.content -->
  </div>
@endsection

@section('page_script')
  <script type="text/javascript">
      function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#showimage').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#inputimage").change(function () {
        readURL(this);
    });
  </script>
  <script type="text/javascript">
		var price = document.getElementById('price');
		price.addEventListener('keyup', function(e){
			// tambahkan 'Rp.' pada saat form di ketik
			// gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
			price.value = formatRupiah(this.value, 'Rp');
		});
		/* Fungsi formatRupiah */
		function formatRupiah(angka, prefix){
			var number_string = angka.replace(/[^,\d]/g, '').toString(),
			split   		= number_string.split(','),
			sisa     		= split[0].length % 3,
			price     	= split[0].substr(0, sisa),
			ribuan     		= split[0].substr(sisa).match(/\d{3}/gi);
			// tambahkan titik jika yang di input sudah menjadi angka ribuan
			if(ribuan){
				separator = sisa ? '.' : '';
				price += separator + ribuan.join('.');
			}
			price = split[1] != undefined ? price + ',' + split[1] : price;
			return prefix == undefined ? price : (price ? 'Rp' + price : '');
		}
	</script>
  <script type="text/javascript">
		var discount = document.getElementById('discount');
		discount.addEventListener('keyup', function(e){
			// tambahkan 'Rp.' pada saat form di ketik
			// gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
			discount.value = formatRupiah(this.value, 'Rp');
		});
		/* Fungsi formatRupiah */
		function formatRupiah(angka, prefix){
			var number_string = angka.replace(/[^,\d]/g, '').toString(),
			split   		= number_string.split(','),
			sisa     		= split[0].length % 3,
			discount     	= split[0].substr(0, sisa),
			ribuan     		= split[0].substr(sisa).match(/\d{3}/gi);
			// tambahkan titik jika yang di input sudah menjadi angka ribuan
			if(ribuan){
				separator = sisa ? '.' : '';
				discount += separator + ribuan.join('.');
			}
			discount = split[1] != undefined ? discount + ',' + split[1] : discount;
			return prefix == undefined ? discount : (discount ? 'Rp' + discount : '');
		}
	</script>
@endsection