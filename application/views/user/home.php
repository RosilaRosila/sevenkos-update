<section class="ftco-section homee hero-wrap" style="" data-stellar-background-ratio="0.5">
    <style>
    @font-face {
        font-family: 'bebas_neue';
        src: url('<?php echo base_url('asset') ?>/fonts/bebas_neue/BebasNeue-Regular.otf');
    }

    .iklan .owl-carousel {
        width: 74%;
    }

    .homee {
        background-image: url('<?php echo base_url('asset') ?>/images/bg_home.jpg');
        width: 100%;
        height: 100%;
    }

    .carousel {
        max-width: 700px;
        margin: 50px auto;
    }

    .item .img {
        border-radius: 20px;
    }

    .owl-theme .owl-controls .owl-buttons div {
        background: transparent;
    }

    .iklan .owl-carousel {
        background-color: #F6FBF4;
    }

    @media (max-width: 700px) {
        .iklan .owl-carousel .ress {
            width: 100%;
            height: auto;
            max-height: 185px;
        }
    }

    @media (max-width: 991.98px) {
        .owl-carousel .card {
            width: 100%;
        }

        .iklan .owl-carousel {
            width: 100%;
        }
    }
    </style>
    <div class="overlay"></div>
    <div class="justify-content-center mt-5 container">
        <div class="col-md-5 heading-section ftco-animate">
            <br>
            <h1 class="text-success">Mau cari kost?</h1>
            <span class="mb-5" style="color: #FFFBF5;">Dapatkan Segera Kostmu Hanya di SevenKos!!</span>
            <?php echo form_open('search') ?>
            <div class="input-group mb-3 position-relative">
                <input type="text" class="form-control input-text" placeholder="Search" aria-label="Search"
                    aria-describedby="basic-addon2" name="keyword">
                <div class="input-group-append">
                    <button class="btn btn-outline-success btn-lg" type="submit"><i class="fa fa-search"></i></button>
                </div>
                <?php echo form_close() ?>
            </div>
        </div>
</section>

<section class="ftco-section" style="background-color: #F6FBF4;">
    <div class="col-md-12 heading-section text-center ftco-animate iklan">
        <h1 style="font-family: 'bebas_neue';">Dapatkan Promo Menarik</h1>
        <div id="ad-container">
            <?php
            $isVideoAd = true; // Set the value based on your logic

            if ($isVideoAd) {
                echo '<video width="500" height="280" loop autoplay muted>';
                echo '<source src="assetss\images\iklan/lazada_iklan.mp4" type="video/mp4">';
                echo 'Your browser does not support the video tag.';
                echo '</video>';
            } else {
                echo '<img src="assetss\images\iklan/lazada.jpg" alt="Ad Image">';
            }
            ?>
        </div>
    </div>

    <script>
    $(document).ready(function() {
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 30,
            nav: true,
            items: 1,
            stagePadding: 180,
            autoplay: true,
            autoplayTimeout: 4000,
            autoplayHoverPause: true,
            dots: false,
            refreshEvent: false,
            navText: [$('.am-next'), $('.am-prev')],
            smartSpeed: 950,
            responsive: {
                0: {
                    items: 1,
                    stagePadding: false,
                    nav: false
                },
                600: {
                    items: 1,
                    stagePadding: 70
                },
                1300: {
                    items: 1
                }
            }
        });
    });
    </script>

</section>

<section class="ftco-section" style="background-color: white;">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                <span class="subheading" style="color: #1cc88a;"> What we offer </span>
                <h2 class="mb-2">Recommendation from Us</h2>
            </div>
        </div>
        <div class="row ftco-animate">
            <div class="col-md-12">
                <div class="carousel-properties owl-carousel">
                    <div class="item">
                        <div class="property-wrap ftco-animate">
                            <a href="<?php echo site_url('detail/kost-tian-jalan-pagarsih-no78'); ?>" class="img" style="background-image: url(file/kos_image/19.jpg);">
                                <div class="rent-sale">
                                    <span class="rent">Campur</span>
                                </div>
                                <p class="price"><span class="orig-price">Rp. 2.700.000<small> / bulan</small></span>
                                </p>
                            </a>
                            <div class="text">
                                <h3><a href="<?php echo site_url('detail/kost-tian-jalan-pagarsih-no78'); ?>">Kost Tian Jalan Pagarsih No. 78</a></h3>
                                <span class="location">Jakarta</span>
                                <a href="#" class="d-flex align-items-center justify-content-center btn-custom" onclick="copyToClipboard('<?php echo base_url('detail/kost-tian-jalan-pagarsih-no78'); ?>')">
                                    <span class="fa fa-link"></span>
                                </a>
                                    <span class="fa fa-link"></span>
                                </a>
                                <div class="list-team d-flex align-items-center mt-2 pt-2 border-top">
                                    <div class="d-flex align-items-center">
                                        <div class="img" style="background-image: url(images/person_1.jpg);"></div>
                                    </div>
                                    <span class="text-right">2017-07-12</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="property-wrap ftco-animate">
                            <a href="<?php echo site_url('detail/kost-light-home-sukajadi-bandung'); ?>" class="img" style="background-image: url(file/kos_image/20.jpg);">
                                <div class="rent-sale">
                                    <span class="rent">Putri</span>
                                </div>
                                <p class="price"><span class="orig-price">Rp. 2.000.000<small> / bulan</small></span>
                                </p>
                            </a>
                            <div class="text">
                                <h3><a href="<?php echo site_url('detail/kost-light-home-sukajadi-bandung'); ?>">Kost Light Home Sukajadi</a></h3>
                                <span class="location">Jakarta</span>
                                <a href="#" class="d-flex align-items-center justify-content-center btn-custom" onclick="copyToClipboard('<?php echo base_url('detail/kost-light-home-sukajadi-bandung'); ?>')">
                                    <span class="fa fa-link"></span>
                                </a>
                                <div class="list-team d-flex align-items-center mt-2 pt-2 border-top">
                                    <div class="d-flex align-items-center">
                                        <div class="img" style="background-image: url(images/person_1.jpg);"></div>
                                    </div>
                                    <span class="text-right">2017-07-12</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="property-wrap ftco-animate">
                            <a href="<?php echo site_url('detail/kost-terusan-ciheulang-no-235-b-type-a-coblong-bandung'); ?>" class="img" style="background-image: url(file/kos_image/14.jpg);">
                                <div class="rent-sale">
                                    <span class="rent">Putri</span>
                                </div>
                                <p class="price"><span class="orig-price">Rp. 1.700.000<small> / bulan</small></span>
                                </p>
                            </a>
                            <div class="text">
                                <h3><a href="<?php echo site_url('detail/kost-terusan-ciheulang-no-235-b-type-a-coblong-bandung'); ?>">Kost Terusan Ciheulang No. 235 B Type A Coblong</a></h3>
                                <span class="location">Jakarta</span>
                                <a href="#" class="d-flex align-items-center justify-content-center btn-custom" onclick="copyToClipboard('<?php echo base_url('detail/kost-terusan-ciheulang-no-235-b-type-a-coblong-bandung'); ?>')">
                                    <span class="fa fa-link"></span>
                                </a>
                                <div class="list-team d-flex align-items-center mt-2 pt-2 border-top">
                                    <div class="d-flex align-items-center">
                                        <div class="img" style="background-image: url(images/person_1.jpg);"></div>
                                    </div>
                                    <span class="text-right">2017-07-12</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="property-wrap ftco-animate">
                            <a href="<?php echo site_url('detail/kost-pondok-mars-barat-iii-no-8-tipe-b-rancasari-bandung'); ?>" class="img" style="background-image: url(file/kos_image/6.jpg);">
                                <div class="rent-sale">
                                    <span class="rent">Putra</span>
                                </div>
                                <p class="price"><span class="orig-price">Rp. 1.500.000<small> / bulan</small></span>
                                </p>
                            </a>
                            <div class="text">
                                <h3><a href="<?php echo site_url('detail/kost-pondok-mars-barat-iii-no-8-tipe-b-rancasari-bandung'); ?>">Kost Pondok Mars Barat III No. 8 Tipe B Rancasari</a></h3>
                                <span class="location">Yogyakarta</span>
                                <a href="#" class="d-flex align-items-center justify-content-center btn-custom" onclick="copyToClipboard('<?php echo base_url('detail/kost-pondok-mars-barat-iii-no-8-tipe-b-rancasari-bandung'); ?>')">
                                    <span class="fa fa-link"></span>
                                </a>
                                <div class="list-team d-flex align-items-center mt-2 pt-2 border-top">
                                    <div class="d-flex align-items-center">
                                        <div class="img" style="background-image: url(images/person_1.jpg);"></div>
                                    </div>
                                    <span class="text-right">2017-07-12</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="property-wrap ftco-animate">
                            <a href="<?php echo site_url('detail/kost-nur-house-bandung'); ?>" class="img" style="background-image: url(file/kos_image/17.jpg);">
                                <div class="rent-sale">
                                    <span class="rent">Campur</span>
                                </div>
                                <p class="price"><span class="orig-price">Rp. 1.500.000<small> / bulan</small></span>
                                </p>
                            </a>
                            <div class="text">
                                <h3><a href="<?php echo site_url('detail/kost-nur-house-bandung'); ?>">Kost Nur House</a></h3>
                                <span class="location">Yogyakarta</span>
                                <a href="#" class="d-flex align-items-center justify-content-center btn-custom" onclick="copyToClipboard('<?php echo base_url('detail/kost-nur-house-bandung'); ?>')">
                                    <span class="fa fa-link"></span>
                                </a>
                                <div class="list-team d-flex align-items-center mt-2 pt-2 border-top">
                                    <div class="d-flex align-items-center">
                                        <div class="img" style="background-image: url(images/person_1.jpg);"></div>
                                    </div>
                                    <span class="text-right">2017-07-12</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
<section class="ftco-section ftco-no-pt" style="background-color: #F6FBF4;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                <span class="subheading">Area</span>
                <h2 class="mb-2">Area Populer</h2>
            </div>
        </div>
        <div class="row">
            <?php foreach ($kota as $k) :
        if ($k['status'] == '1') { ?>

            <div class="col-md-4">
                <a href="<?php echo base_url() ?>filter?kota=<?php echo $k['kota']; ?>" class="search-place img"
                    style="background-image: url(<?php echo $k['background'] ?>);">
                    <div class="desc">
                        <h3><span><?php echo $k['kota']; ?></span></h3>
                    </div>
                </a>
            </div>
            <?php  }
      endforeach ?>
            <!-- <div class="col-md-4">
				<a href="<?php echo base_url() ?>filter?kota=Jakarta" class="search-place img" style="background-image: url(asset/images/jakarta.jpg);">
					<div class="desc">
						<h3><span>Jakarta</span></h3>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="<?php echo base_url() ?>filter?kota=Yogyakarta" class="search-place img" style="background-image: url(asset/images/yogyakarta.jpg);">
					<div class="desc">
						<h3><span>Yogyakarta</span></h3>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="<?php echo base_url() ?>filter?kota=Surabaya" class="search-place img" style="background-image: url(asset/images/surabaya.jpg);">
					<div class="desc">
						<h3><span>Surabaya</span></h3>
					</div>
				</a>
      </div> -->
        </div>
    </div>
</section>

<section class="ftco-counter img" id="section-counter">
    <div class="container">
        <div class="row pt-md-5">
            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                <div class="block-18 py-5 mb-4">
                    <div class="text text-border d-flex align-items-center info">
                        <strong class="number"><?= $jumlahkos ?></strong>
                        <span>Kos <br>Terdaftar</span>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                <div class="block-18 py-5 mb-4">
                    <div class="text text-border d-flex align-items-center info">
                        <strong class="number"><?= $jumlahuser ?></strong>
                        <span>User <br>Terdaftar</span>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                <div class="block-18 py-5 mb-4">
                    <div class="text text-border d-flex align-items-center info">
                        <strong class="number"><?= $jumlahsewa ?></strong>
                        <span>Sewa <br>Berlangsung</span>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                <div class="block-18 py-5 mb-4">
                    <div class="text d-flex align-items-center info">
                        <strong class="number"><?= $jumlahrequest ?></strong>
                        <span>Request <br>Berlangsung</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
function copyToClipboard(link) {
  var tempInput = document.createElement("input");
  tempInput.value = link;
  document.body.appendChild(tempInput);
  tempInput.select();
  document.execCommand("copy");
  document.body.removeChild(tempInput);
  alert("Link telah disalin ke clipboard!");
  }
</script>

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