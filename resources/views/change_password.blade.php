@extends ('master_admin')

@section('title')
<title>Raseta Admin|Change Password</title>
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
            <h1>Change Password</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
              <li class="breadcrumb-item active">Change Password</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    
    <section class="content">
    <form method="POST" action="{{route('update_password')}}" novalidate enctype="multipart/form-data">
        @method('patch')  
        @csrf
      <div class="row">
        <div class="col-md-6">
          <div class="card card-danger">
            <div class="card-header">
              <h3 class="card-title">Change Password</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="old_password">Current Password</label>
                <input type="password" name="current_password" class="form-control @error('current_password') is-invalid @enderror" required placeholder="Enter current password">
                  @error('current_password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
              </div>
              <div class="form-group">
                <label for="newpassword">New Password</label>
                <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" required placeholder="Enter the new password" autocomplete="new-password">
                  @error('password')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                  @enderror
              </div>
              <div class="form-group">
                <label for="confirmpassword">Confirm New Password</label>
                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required placeholder="Enter the same new password " autocomplete="new-password">
              </div>
              <input type="submit" name="action_button" id="action_button" value="Save" class="btn btn-success float-right">
              <a href="javascript:history.back()"  class="btn btn-secondary float-right">Cancel</a>
            </div></form>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
    </section>
    
    <!-- /.content -->
  </div>
@endsection