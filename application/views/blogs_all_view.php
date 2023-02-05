<div class="breadcrumb-wrapper">
    <div class="images-overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-heading">
                    <h1>Blog</h1>
                </div>
                <div class="page-breadcrumb-inner">
                    <div class="page-breadcrumb">
                        <div class="breadcrumb-list">
                            <ul>
                                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                <li><a href="javascript:void(0);">Blog</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About Us area -->

<!-- Blog Wrapper Start -->
<?php
if (!empty($blog4home)) {
?>
    <section class="blog-wrapper">
        <div class="container">

            <div class="row">
                <?php
                foreach ($blog4home as $blog) {
                ?>
                    <div class="col-lg-4 col-md-6">
                        <div class="item blog_card">
                            <div class="post-img"> <img src="<?php echo base_url(); ?>assets/frontend/images/blogs/<?php echo $blog->blog_home; ?>" alt="">
                                <div class="posted_on">
                                    <?php
                                    echo '<span class="date">' . date('j', strtotime($blog->created)) . '</span>';
                                    echo '<span class="month">' . date('M', strtotime($blog->created)) . '</span>';
                                    ?>
                                </div>
                            </div>

                            <div class="post-detail">
                                <h5><a href="<?php echo base_url(); ?><?php echo $blog->seourl; ?>"><?php echo $blog->title; ?></a></h5>
                                <div class="description">
                                    <p><?php echo $blog->short; ?></p>
                                    <a href="<?php echo base_url(); ?><?php echo $blog->seourl; ?>" class="theme-button-one bttn color-one" data-text="Learn More"><span>Learn More</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>

            </div>
        </div>
    </section>

<?php
}
?>
<!-- Blog Wrapper End -->