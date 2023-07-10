<!DOCTYPE html>
<html lang="en">

<head>
    <title>SevenKos | Solusi cari kost!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../asset/css/animate.css">

    <link rel="stylesheet" href="../asset/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../asset/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../asset/css/magnific-popup.css">


    <link rel="stylesheet" href="../asset/css/flaticon.css">
    <link rel="stylesheet" href="../asset/css/style.css">
</head>

<body>

    <section class="hero-wrap hero-wrap-2" style="background-image: url('../asset/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate pb-0 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="<?php echo base_url() ?>Main_Front_User">Home <i class="fa fa-chevron-right"></i></a></span> <span>Favorite<i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-3 bread">Favorite</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section" style="background-color: #F6FBF4;">
        <div class="container">
            <div class="justify-content-center heading-section text-center ftco-animate mb-5">
                <span class="subheading" style="color: #1cc88a;"> What we offer </span>
                <h1 style="font-family: 'bebas_neue';">Special Discount For You</h1>
            </div>
            <div class="d-flex">
                <form action="filter" method="get">
                    <div class="form-inline">
                        <div class="p-2">
                            <select class="form-control" name="kota">
                                <option value="" hidden>Kota</option>
                                <?php foreach ($kota as $k) :
                    if ($k['filter_status'] == '1') { ?>
                                <option value="<?php echo $k['kota']; ?>"
                                    <?= ($this->input->get('kota') == $k['kota']) ? 'selected' : ''; ?>>
                                    <?php echo $k['kota']; ?></option>
                                <?php  }
                endforeach ?>

                            </select>
                        </div>
                        <div class="p-2">
                            <select class="form-control" name="tipe">
                                <option value="" hidden>Tipe</option>
                                <option value="Campur" <?= ($this->input->get('tipe') == 'Campur') ? 'selected' : ''; ?>>
                                    Campur</option>
                                <option value="Putra" <?= ($this->input->get('tipe') == 'Putra') ? 'selected' : ''; ?>>Putra
                                </option>
                                <option value="Putri" <?= ($this->input->get('tipe') == 'Putri') ? 'selected' : ''; ?>>Putri
                                </option>
                            </select>
                        </div>
                        <div class="p-2">
                            <button type="submit" class="btn btn-success">Filter</button>
                            <a href="<?php echo base_url() ?>semua-kos" class="btn btn-light">Reset</a>
                        </div>
                    </div>
                    <?php echo form_close() ?>
            </div>
            <br>
            <div class="row ftco-animate justify-content-center">
                <?= (empty($sql)) ? '<div class="alert alert-info" role="alert">Data yang anda cari tidak tersedia!!</div>' : ''; ?>
                <?php foreach ($sql as $kos) : ?>
                <div class="item" style="width:352px; margin: 1rem;">
                    <div class="property-wrap ftco-animate">
                        <?php if ($kos->diskon) { ?>
                        <div class="btn bg-warning text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Diskon
                            <?= $kos->diskon ?>%</div>
                        <?php } ?>
                        <a href="<?= base_url(); ?>detail/<?= strtolower($kos->slug) ?>"><img
                                src="<?= $kos->image_header ?>" fix width="352px" height="250">
                            <br><br>
                            <button class="btn btn-success btn-rounded" style="margin-left: 2em">
                                <?php
                    if ($kos->tipe == 'Campur') {
                    echo 'Campur';
                    } elseif ($kos->tipe == 'Putra') {
                    echo 'Putra';
                    } elseif ($kos->tipe == 'Putri') {
                    echo 'Putri';
                    }
                    ?>
                            </button>
                            <div class="text">
                                <h3> <a href="<?= base_url(); ?>detail/<?= $kos->slug ?>">
                                        <?= $kos->nama ?></a>
                                </h3>
                                <span class="location"> <?= $kos->alamat ?></span>
                                <br><br>
                                <?php
                    $query = $this->db->query("SELECT COUNT(t.id_kos) AS count
                FROM transaksi t
                JOIN tb_user u ON t.id_user = u.id_user
                WHERE u.is_active = 1
                AND t.id_kos = " . $this->db->escape($kos->id_kos));
                    $sewa = $query->row()->count;
                    $total_kamar = $kos->sisa_kamar - $sewa; ?>
                                <h3 class="text-success">Tersedia <?= $total_kamar ?> kamar</h3>
                                <?php
                    $harga_awal = $kos->harga;
                    $diskon = $kos->diskon;
                    $mendiskon = ($diskon / 100) * $harga_awal;
                    $harg_akhir = $harga_awal - $mendiskon;
                    ?>
                                <h3 class="
                <?php
                if (!empty($kos->diskon)) { ?>
                        text-warning
                    <?php } ?>
                    "><strong><span>Rp. <?= $this->cart->format_number($harg_akhir); ?><small> /
                                                bulan</small></span></strong></h3>
                                <!-- <?php
                        if (!empty($kos->diskon)) { ?>
                        <h6 class="text-muted"><b><s>Rp. <?= $this->cart->format_number($kos->harga); ?></s></h6>
                    <?php } ?> -->
                                <div class="list-team d-flex align-items-center mt-2 pt-2 border-top">
                                    <div class="d-flex align-items-center">
                                        <div class="img" style="background-image: url(images/person_1.jpg);"></div>
                                    </div>
                                    <span class="text-right"><?= tgl_indo($kos->date) ?></span>
                                </div>
                            </div>
                    </div>
                </div>
                <?php endforeach ?>
                <?= $this->pagination->create_links(); ?>
        </div>
        </div>
        <hr>
    </section>

    <!-- loader -->
    <!-- <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div> -->

    <script type="text/javascript" src="<?php echo base_url() . 'assets/js/bootstrap.js' ?>"></script>
<script src="<?= base_url('asset/js/jquery.min.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery-migrate-3.0.1.min.js') ?>"></script>
<script src="<?= base_url('asset/js/popper.min.js') ?>"></script>
<script src="<?= base_url('asset/js/bootstrap.min.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery.easing.1.3.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery.waypoints.min.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery.stellar.min.js') ?>"></script>
<script src="<?= base_url('asset/js/owl.carousel.min.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery.magnific-popup.min.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery.animateNumber.min.js') ?>"></script>
<script src="<?= base_url('asset/js/scrollax.min.js') ?>"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="<?= base_url('asset/js/google-map.js') ?>"></script>
<script src="<?= base_url('asset/js/main.js') ?>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
    integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>

</html>