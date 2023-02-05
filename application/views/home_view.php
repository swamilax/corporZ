<!-- Features Section Start -->
<div class="features-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4 no-padding">
                <div class="single-feature-service">
                    <div class="services-icon"><i class="bi bi-bulb"></i></div>
                    <div class="service-content">
                        <h3>Creative Design</h3>
                        <p>Compellingly promote collaborative products without synergistic schemas.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 no-padding">
                <div class="single-feature-service two">
                    <div class="services-icon"><i class="bi bi-worker-cap"></i></div>
                    <div class="service-content">
                        <h3>Cyber Security</h3>
                        <p>Enthusiastically scale mission-critical imperatives rather than an expanded array.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 no-padding">
                <div class="single-feature-service three">
                    <div class="services-icon"><i class="bi bi-spark"></i></div>
                    <div class="service-content">
                        <h3>Cloud Services</h3>
                        <p>Rapidiously create cooperative resources rather than client-based leadership skills.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Features Section End -->

<!-- About Us area -->
<section id="about-us" class="about-wrapper">
    <div class="container">
        <div class="section_heading">
            <h2>About <span>Us</span></h2>
            <div class="separator">
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="home-about-inner">
                    <!-- <h2>15 Years of Experience in this Business.</h2> -->
                    <p>Interactively develop timely niche markets before extensive imperatives. Professionally repurpose interoperable growth strategies before effective core competencies.</p>
                    <a href="<?php echo base_url(); ?>contact-us" data-text="Learn More" class="theme-button-one bttn color-one"><span>Learn More</span></a>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="single-about-service">
                        <div class="about-services-icon"> <i class="bi bi-bulb"></i></div>
                        <div class="about-service-content">
                            <h3>Marketing Services</h3>
                            <p>Service on call within 24 hours.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="single-about-service">
                        <div class="about-services-icon"> <i class="bi bi-alarm-clock"></i></div>
                        <div class="about-service-content">
                            <h3>24/7 Services</h3>
                            <p>Flexibility in services during emergency situations.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="single-about-service">
                        <div class="about-services-icon"> <i class="bi bi-bulb"></i></div>
                        <div class="about-service-content">
                            <h3>Reliable</h3>
                            <p>Services aimed at reduced down time.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Our counters -->
<?php
if (!empty($counters)) {
?>
    <div class="counter-wrapper">
        <div id="counter">
            <div class="container">
                <div class="row">
                    <?php
                    foreach ($counters as $counter) {
                    ?>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="work-statistics text-center">
                                <i class="<?php echo $counter->icon; ?>" aria-hidden="true"></i>
                                <h3 class="Count"><?php echo $counter->value; ?></h3>
                                <span class="fun-line"></span>
                                <p><?php echo $counter->title; ?></p>
                            </div>
                            <!-- end work-statistics  -->
                        </div>
                    <?php
                    }
                    ?>

                </div>
                <!-- end row  -->
            </div>
            <!-- end container-fluid  -->
        </div>
        <!-- end counter  -->
    </div>
<?php
}
?>
<!-- Our Services Wrapper -->
<?php
if (!empty($services)) {
?>
    <section class="services-wrapper">
        <div class="container">
            <div class="section_heading">
                <h2>Our <span>Services</span></h2>
                <div class="separator">
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
                <?php
                foreach ($services as $service) {
                ?>
                    <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="single-service-content">
                            <div class="single-services-icon"><i class="fa fa-gears"></i></div>
                            <h3><?php print_r($service['submenu']); ?></h3>
                            <a href="<?php echo (($service['flag'] == 1) ? base_url() . $service['link'] : 'javascript:void(0)'); ?>" data-text="Learn More" class="theme-button-one bttn color-one"><span>Learn More</span></a>
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
<!-- Our Services Wrapper End -->

<!-- Latest Projects Start -->
<?php
if (!empty($galleries)) {
?>
    <section class="gallery-wrapper home">
        <div class="gallery-content">
            <div class="container-fluid">
                <div class="row">
                    <?php
                    foreach ($galleries as $gallery) {
                    ?>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 no-padding">
                            <div class="sb-photo"> <img src="<?php echo base_url(); ?>assets/frontend/images/gallery/<?php echo $gallery->file_path; ?>" alt="<?php echo $gallery->title; ?>" class="img-fluid">
                                <div class="photo-overlay">
                                    <div class="overlay-content">
                                        <div class="zoom-icon"> <a href="<?php echo base_url(); ?>assets/frontend/images/gallery/<?php echo $gallery->file_path; ?>"><i class="fa fa-arrows-alt" aria-hidden="true"></i></a> </div>
                                        <h2><?php echo $gallery->title; ?></h2>
                                        <span><?php echo $gallery->description; ?></span><br>
                                        <a class="text-white" href="<?php echo base_url(); ?>gallery" target="_blank">
                                            <span>View All</span>
                                        </a>
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




<!-- Testimonials Wrapper Start -->
<?php
if (!empty($testimonials)) {
?>
    <section class="testimonials-wrapper">
        <div class="container">
            <div class="section_heading">
                <h2>What Our <span>Client Say</span></h2>
                <div class="separator">
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
            <div class="two-item-carousel owl-carousel owl-theme">
                <?php
                foreach ($testimonials as $testimonial) {
                ?>
                    <div class="single-testimonial-item text-center">
                        <div class="quote-icon"> <span class="fa fa-quote-left"></span> </div>
                        <div class="inner-content">
                            <div class="client-info">
                                <h3><?php echo $testimonial->name; ?></h3>
                                <span><?php echo $testimonial->address; ?></span>
                            </div>
                            <div class="img-box"> <img src="<?php echo base_url(); ?>assets/frontend/images/testimonials/<?php echo $testimonial->file_path; ?>" alt=""> </div>
                            <div class="text-box">
                                <p><?php echo $testimonial->short_desc; ?></p>
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
<!-- Testimonials Wrapper End -->
<!-- Electric Repair Start -->
<div class="electric-repair-services">
    <div class="container-fluid">
        <div class="row">
            <div class="election-repair-main">
                <div class="col-sm-12 col-md-6 no-padding">
                    <div class="election-repair election-repair-img1">
                        <div class="electric-repair-left">						<h3>Our Mission <span>Accounting Procedures Guidebook</span></h3>
                            <p>
                                Proactively unleash orthogonal niches rather than interoperable opportunities. Dynamically engage 24/365 materials after high-payoff web services. Authoritatively foster diverse potentialities vis-a-vis excellent niches.							</p>														<p>Monotonectally enhance interoperable paradigms via team building channels. Phosfluorescently predominate robust services with vertical content. Globally network viral innovation without prospective resources. Quickly.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 no-padding">
                    <div class="election-repair election-repair-img2">
                        <div class="electric-repair-right"><h3>Our Vission <span>We are Best in the Field</span></h3>
                            <p>
Proactively unleash orthogonal niches rather than interoperable opportunities. Dynamically engage 24/365 materials after high-payoff web services. Authoritatively foster diverse potentialities vis-a-vis excellent niches.</p><p>Monotonectally enhance interoperable paradigms via team building channels. Phosfluorescently predominate robust services with vertical content. Globally network viral innovation without prospective resources. Quickly.
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Electric Repair End -->

<!-- Blog Wrapper Start -->
<?php
if (!empty($blog4home)) {
?>
    <section class="blog-wrapper">
        <div class="container">
            <div class="section_heading">
                <h2>Our <span>Blog</span></h2>
                <div class="separator">
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
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