<section class="content">
    <div class="container-fluid">
        <!-- Basic Examples -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="header">
                    <h2 class="animate__animated text-success"><?= $title ?></h2>
                </div>
                <div class="body animate__animated">
                    <div class=" shadow-lg p-3 mb-5 bg-body rounded">
                        <!-- Horizontal Layout -->
                        <?php foreach ($admin as $u) { ?>
                            <form method="POST" id="form_edit_kota" class="form-horizontal" action="<?php echo site_url('admin/proses_updatekota') ?>">
                                <input type="hidden" name="id_kota" value="<?php echo $u->id_kota ?>">
                                <div class="row clearfix">
                                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                        <label for="nama">Nama kota</label>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="kota" id="kota" class="form-control" value="<?php echo $u->kota ?>" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- FULLNAME -->
                                <div class="row clearfix">
                                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                        <label for="password">Link Foto Background</label>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="background" id="background" class="form-control" value="<?php echo $u->background ?>" required>
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
                                <?php if ($user['id_role'] == 4) { ?>
                                
                                <div class="row clearfix">
                                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                        <label for="jenis">Status Kota Populer</label>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                        <div class="form-group">
                                            <select class="form-control show-tick" name="status" required>
                                                <option value="1">Aktif</option>
                                                <option value="0">Nonaktif</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <?php }  ?>
                                <!-- END FULLNAME -->
                                <!-- END ID ROLE -->
                                <div class="form-group row justify-content-end">
                                    <div class="col-sm-10">
                                        <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                                            <button type="submit" class="btn btn-primary mt-3 btn-sm"> Ubah</button>
                                            <a href="<?php echo base_url('admin/datakota') ?>">
                                                <button type="button" class="btn btn-danger mt-3 btn-sm">Batal</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        <?php } ?>


                        <!-- #END# Horizontal Layout -->
                    </div>
                </div>

            </div>
        </div>
        <!-- #END# Basic Examples -->
    </div>
</section>