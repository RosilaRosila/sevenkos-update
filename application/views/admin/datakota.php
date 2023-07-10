<div class="container-fluid">      
<!-- DATA KOS -->
    <div class="row clearfix ">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="header">
                <h2 class="text-success"><?= $title ?></h2>
                <?php if($this->session->flashdata('insert')){ ?>
                <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <strong>Success!</strong> <?php echo $this->session->flashdata('insert'); ?>
            </div>
            <?php } else if($this->session->flashdata('delete')){  ?>
                <div class="alert alert-danger">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong>Success!</strong> <?php echo $this->session->flashdata('delete'); ?>
                </div>
            <?php } ?>   
                <div class="flash-data" data-flashdata="<?= $this->session->flashdata('message'); ?>"></div>
                <?php if ($this->session->flashdata('message')) : ?>
                <?php endif; ?>
                <div class="row">
                    <div class="col">
                        <div class="mt-0">
                                    <a href="<?php echo base_url() ?>admin/addkota" class="btn btn-primary " role="button" data-toggle="tooltip" data-placement="top" title="Tambah kota"><i class="fas fa-house-user"> Tambah Kota </i></a>
                                <br>
                        </div>
                    </div>
                </div>
            </div>

            <div class="body mt-3">
                <div class="table-responsive shadow-lg p-3 mb-5 bg-body rounded ">
                    <table id="dtable" class="table table-striped table-bordered table-hover table-sm ">
                        <thead class="table-success">
                            <tr>
                                <th class="col-lg-1">No</th>
                                <th class="col-lg-3">Nama Kota</th>
                                <th>Link Background</th>
                                <th>Gambar Kota</th>
                                <th class="col-lg-1">Status Kota Populer</th>
                                <th class="col-lg-1">Filter Kota</th>
                                <th class="col-lg-1">Aksi</th>
                            </tr>
                        </thead>

                        <?php if (empty($kota)) : ?>
                            <div class="alert alert-danger" role="alert">
                                Data kota Tidak Ditemukan!
                            </div>
                        <?php endif; ?>
                        <tbody>
                            <?php $no = 0;
                            foreach ($kota as $k) { ?>
                                <tr>
                                    <td><?php echo ++$no ?></td>
                                    <td><?php echo $k['kota']; ?></td>
                                    <td><?php echo $k['background']; ?></td>
                                    <td><img width="100px" src="<?= $k['background'] ?>" class="rounded"></td>
                                    <td><?php
                                        if ($k['status'] == '1') {
                                            echo '<span class="badge badge-success">Aktif</span>';
                                        } else {
                                            echo '<span class="badge badge-warning text-white">Nonaktif</span>';
                                        } ?></td>
                                    <td><?php
                                        if ($k['filter_status'] == '1') {
                                            echo '<span class="badge badge-success">Aktif</span>';
                                        } else {
                                            echo '<span class="badge badge-warning text-white">Nonaktif</span>';
                                        } ?></td>
                                    <td>
                                        <div class="data" data-data="Data kota akan dihapus!"></div>
                                        <a href="<?php echo base_url('admin/view_editkota/' . $k['id_kota']) ?>">
                                                <button type="button" class="btn mb-3 btn-info btn-block btn-sm" data-toggle="tooltip" data-placement="left" title="Edit data kota"><i class="fas fa-edit"></i></button>
                                        </a>
                                        <a class="btn btn-danger btn-block  btn-sm hapus" href="<?php echo base_url('admin/hapus_kota/' . $k['id_kota']) ?>" data-toggle="tooltip" data-placement="left" title="Hapus data kota">
                                            <i class="fas fa-trash-alt "></i>
                                        </a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <!-- END DATA KOS-->
            </div>
        </div>
    </div>
</div>
</section>