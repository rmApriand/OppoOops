<?php
include('koneksi.php');

if(isset($_SESSION['login_user'])){
header("location: about.php");
}
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Gejala</title>
    <link rel="icon" href="img/logo.png" />
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&amp;display=swap" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <style>
      body {
       font-family: 'Inter', sans-serif !important;
      }
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .nav-link.active {
        color: green !important;
        background-color: transparent !important;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    
  <header class="navbar navbar-light sticky-top bg-success flex-md-nowrap p-0 shadow">
    <a class="navbar-brand text-white col-md-3 col-lg-2 me-0 px-3 d-flex align-items-center" href="#">
      <img src="img/logo.png" alt="Logo" width="30" height="30" class="me-2">
      <b>OppoOops Admin</b>
    </a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-nav">
      <div class="nav-item text-nowrap">
        <a class="nav-link px-3 text-white" href="index.html"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-door-open text-white" viewBox="0 0 16 16">
          <path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
          <path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117zM11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5zM4 1.934V15h6V1.077l-6 .857z"/>
        </svg> Kembali ke halaman utama</a>
      </div>
    </div>
  </header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="homeadmin.php">
              <span data-feather="home"></span>
             Beranda
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="daftarkerusakan.php"">
              <span data-feather="smartphone"></span>
              Kerusakan
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="gejala.php">
              <span data-feather="list"></span>
              Gejala
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="basispengetahuan.php">
              <span data-feather="database"></span>
              Basis Pengetahuan
            </a>
          </li>
        </ul>
      </div>
    </nav>
    
    <div class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2">Gejala</h1>
          <div class="btn-toolbar mb-2 mb-md-0">
          </div>
      </div>
      <br/>

      <form id="form1" name="form1" method="post" action="gejala.php" class="mb-4">
          <div class="form-group">
              <label for="sel1">Sistem Operasi</label>
              <select class="form-control" name="hp" onChange='this.form.submit();'>
                  <option value="">Pilih</option>
                  <option>Oppo</option>
                  <option>Oppo F5</option>
                  <option>Oppo F9</option>
                  <option>Oppo F7</option>
              </select>
          </div>
      </form>

      <!-- Button to Add Data -->
      <a href="ainputgejala.php">
          <button type="button" class="btn btn-success mb-3">
              <span class="bi bi-plus" aria-hidden="true"></span> Tambah Data
          </button>
      </a>

      <!-- Table to display Gejala Data -->
      <br><br>
      <div class="box-body table-responsive">
        <table id="example1" class="table table-bordered table-striped">
              <thead class="table-success">
                  <tr>
                      <th>NO</th>
                      <th>ID Ciri Kerusakan</th>
                      <th>Ciri Kerusakan</th>
                      <th>Jenis Smartphone</th>
                      <th>Detail</th>
                  </tr>
              </thead>
              <tbody>
                  <?php
                  if(isset($_POST['hp']) && $_POST['hp'] != "") {
                      $queri = "SELECT * FROM gejala WHERE jenishp = '".$_POST['hp']."'";
                      $hasil = mysqli_query($konek_db, $queri);
                      $id = 0;
                      while($data = mysqli_fetch_array($hasil)) {
                          $id++;
                          echo "
                          <tr>
                              <td>".$id."</td>
                              <td>".$data[0]."</td>
                              <td>".$data[1]."</td>
                              <td>".$data[2]."</td>
                              <td>
                                  <a href=\"aeditgejala.php?id=".$data[0]."\"><i class='bi bi-pencil'></i></a> 
                                  <a href=\"adeletegejala.php?id=".$data[0]."\" onclick='return checkDelete()'><i class='bi bi-trash3'></i></a>
                              </td>
                          </tr>
                          ";
                      }
                  }
                  ?>
              </tbody>
          </table>
      </div>


</div>

<script language="JavaScript" type="text/javascript">
function checkDelete(){
    return confirm('Yakin menghapus data ini?');
}
</script>

<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>
