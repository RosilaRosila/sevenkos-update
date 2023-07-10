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
        <div class="container-fluid">
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="body">
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12  ">
                                <div class="info-box hover-zoom-effect shadow-lg bg-body rounded">
                                    <div class="icon bg-gradient-success">
                                        <i class="fas fa-house-user"></i>
                                    </div>
                                    <div class="content ">
                                        <div class="text ml-4"><strong>JUMLAH KOS</strong></div>
                                        <div class="number"><?= $jumlahkos ?></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">
                                <div class="info-box hover-zoom-effect shadow-lg bg-body rounded">
                                    <div class="icon bg-gradient-success">
                                        <i class="fas fa-user"></i>
                                    </div>
                                    <div class="content ">
                                        <div class="text ml-4"><strong>JUMLAH USER</strong></div>
                                        <div class="number"><?= $jumlahuser ?></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">
                                <div class="info-box hover-zoom-effect shadow-lg bg-body rounded">
                                    <div class="icon bg-gradient-success">
                                        <i class="fas fa-dollar-sign"></i>
                                    </div>
                                    <div class="content ">
                                        <div class="text ml-4"><strong>JUMLAH SEWA</strong></div>
                                        <div class="number"><?= $jumlahsewa ?></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">
                                <div class="info-box hover-zoom-effect shadow-lg bg-body rounded">
                                    <div class="icon bg-gradient-success">
                                        <i class="fas fa-file-alt"></i>
                                    </div>
                                    <div class="content ">
                                        <div class="text ml-4"><strong>JUMLAH REQUEST</strong></div>
                                        <div class="number"><?= $jumlahrequest ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php if ($user['id_role'] == 1) {
                            $role = 'Admin';
                        } elseif ($user['id_role'] == 2) {
                            $role = 'User';
                        } elseif ($user['id_role'] == 3) {
                            $role = 'Owner';
                        } else {
                            $role = 'Super Admin';
                        } ?>
                        <div class="alert alert-success">
                            <strong>HALLO !</strong> <?php echo strtoupper($user['fullname']) ?>, Anda login sebagai <b><?= $role ?></b>.
                        </div>
                    </div>
                </div>
                <!-- #END# Basic Examples -->
            </div>
    </section>
    <section class="content">
        <?php 
        if ($user['id_role'] == 4) { ?>
        <div class=" shadow-lg p-3 mb-5 bg-body rounded">
            <div class="header">
                <h2 class="text-success">Edit Logo</h2>
            </div>
            <?php if($this->session->flashdata('message')){ ?>
            <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <strong>Success!</strong> <?php echo $this->session->flashdata('message'); ?>
            </div>
            <?php } ?>
        <form method="POST" id="form_edit_user" class="form-horizontal" action="<?php echo site_url('Super_admin/ubah_logo') ?>" enctype="multipart/form-data">
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label for="password">Primary logo</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                        <input type="file" class="form-control" name="logo1" id="logo1" accept="image/*">
                            <?php echo form_error('logo1', '<small class="text-danger">', '</small>'); ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label for="password">Logo Secondary</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                        <input type="file" class="form-control" name="logo2" id="logo2" accept="image/*">
                            <?php echo form_error('logo2', '<small class="text-danger">', '</small>'); ?>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group row justify-content-end">
                        <div class="col-sm-2">
                            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                                <button type="submit" class="btn btn-primary mt-3 btn-sm">Change</button>
                            </div>
                        </div>
                    </div>
        </form>
        </div>
        <?php } ?>
    </section>
</div>