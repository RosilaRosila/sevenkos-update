<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
<!-- Custom Css -->
<link href="<?php echo base_url() ?>asset_login/css/hover.css" rel="stylesheet">
<style>
    body {
        background: rgb(251, 251, 251);
        font-family: "muli";
        color: rgba(74, 74, 74, 0.8);
    }
</style>
<div class=" m-3 text-center">
<section class="content">
    <div class="header">
        <h2 class="text-success">Tambah Kota</h2>
    </div>
    <div class="body ">
         <div class=" shadow-lg p-3 mb-5 bg-body rounded">      
            <!-- Horizontal Layout -->
                <form method="POST" id="form_edit_user" class="form-horizontal" action="<?php echo site_url('admin/proses_addkota') ?>">
                    <!-- <input type="hidden" name="id_user" value="<?php echo $u->id_user ?>"> -->
                    <div class="row clearfix">
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                            <label for="nama">Nama Kota</label>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="kota" id="kota" class="form-control" placeholder="Nama Kota" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- FULLNAME -->
                    <div class="row clearfix">
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                            <label for="password">Background Kota</label>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="background" id="background" class="form-control" placeholder="link Background" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                            <label for="jenis">Filter Kota</label>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                            <div class="form-group">
                                <select class="form-control show-tick" name="filter_status" required>
                                    <option value="1">Aktif</option>
                                    <option value="0">Nonaktif</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row justify-content-end">
                        <div class="col-sm-2">
                            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                                <button type="submit" class="btn btn-primary mt-3 btn-sm">Tambah</button>
                                <a href="<?php echo base_url('admin/datakota') ?>">
                                    <button type="button" class="btn btn-danger mt-3 btn-sm">Batal</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
            <!-- #END# Horizontal Layout -->
        </div>
    </div>
    </section>
</div>