<!-- Breadcrumb Wrapper -->
<div class="breadcrumb-wrapper">
    <div class="images-overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-heading">
                    <h1>Gallery</h1>
                </div>
                <div class="page-breadcrumb-inner">
                    <div class="page-breadcrumb">
                        <div class="breadcrumb-list">
                            <ul>
                                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                <li><a href="javascript:void(0);">Gallery</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
if (!empty($galleries)) {
?>
    <section id="gallery" class="inner-page-wrapper gallery-wrapper">
        <div class="gallery-content">
            <div class="container">
                <div class="row">
                    <?php
                    foreach ($galleries as $gallery) {
                    ?>
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 no-padd">
                            <div class="sb-photo">
                                <img src="<?php echo base_url(); ?>/assets/frontend/images/gallery/<?php echo $gallery->file_path; ?>" alt="" class="img-fluid">
                                <div class="photo-overlay">
                                    <div class="overlay-content">
                                        <div class="zoom-icon"> <a href="<?php echo base_url(); ?>/assets/frontend/images/gallery/<?php echo $gallery->file_path; ?>"><i class="fa fa-arrows-alt" aria-hidden="true"></i></a> </div>
                                        <h2><?php echo $gallery->title; ?></h2>
                                        <span><?php echo $gallery->description; ?></span>
                                    </div>
                                    <!-- /.overlay-content -->
                                </div>
                            </div>
                        </div>
                    <?php
                    }
                    ?>

                </div>
            </div>
        </div>
    </section>
<?php
}
?>