<!-- CTA Wrapper Start -->
<section class="cta-wrapper">
    <div class="container">
        <div class="col col-lg-12">
            <div class="cta-text">
                <h3>Consulting Agency for Your Business</h3>
                <p>Distinctively grow go forward manufactured products and optimal networks. Enthusiastically disseminate user-centric outsourcing.</p>
                <span class="line"></span>
                <ul>
                    <li>Contact Us</li>
                    <li><i class="fa fa-headphones"></i> <?php echo $settings['phone']; ?></li>
                    <li><i class="fa fa-envelope"></i> <?php echo $settings['email']; ?></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- CTA Wrapper End -->
<!-- Clients Wrapper Start -->
<?php
if (!empty($partners)) {
?>
    <div class="clinets-wrapper">
        <div class="container">
            <div class="section_heading">
                <h2>Our <span>Partners</span></h2>
                <div class="separator">
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
            <div class="owl-carousel partners owl-theme">
                <?php
                foreach ($partners as $partner) {
                ?>
                    <div class="item"><img alt="" src="<?php echo base_url(); ?>assets/frontend/images/partners/<?php echo $partner->file_path; ?>"></div>
                <?php
                }
                ?>
            </div>
        </div>
    </div>
<?php
}
?>
<!-- Clients Wrapper End -->

<!-- Footer Wrapper Start -->
<footer class="footer-top">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-3 col-xl-5">
                <aside class="widget no-padding">
                    <h3 class="widget-title one"><img alt="" src="<?php echo base_url(); ?><?php echo ($footer_logo != "" ? $footer_logo : 'assets/frontend/images/logo.png'); ?>" alt="<?php echo $alt; ?>"></h3>
                    <div class="about-widget">
                        <?php
                        if (!empty($footer_about)) {
                        ?>
                            <p><?php echo $footer_about; ?></p>
                        <?php
                        }
                        ?>
                        <?php
                        if (!empty($sociallinks)) {
                        ?>
                            <div class="social-icon">
                                <?php
                                foreach ($sociallinks as $sociallink) {
                                ?>
                                    <a target="_blank" href="<?php echo $sociallink->link; ?>"><i class="<?php echo $sociallink->fa_icon; ?>"></i></a>

                                <?php
                                }
                                ?>
                            </div>
                        <?php
                        }
                        ?>

                    </div>
                </aside>
            </div>
            <div class="col-sm-6 col-lg-3 col-xl-2">
                <aside class="widget nav-widget">
                    <h3 class="widget-title">Quick Links</h3>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </aside>
            </div>
            <div class="col-sm-6 col-lg-3 col-xl-2">
                <aside class="widget nav-widget">
                    <h3 class="widget-title">Our Services</h3>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </aside>
            </div>
            <div class="col-sm-6 col-lg-3 col-xl-3 bottom-form">
                <aside class="widget nav-widget">
                    <h3 class="widget-title">Get a Free Quote</h3>
                    <form method="GET" action="<?php echo base_url(); ?>contact-us">
                        <div class="form-group">
                            <input name="form_email" placeholder="Email" type="email" required>
                        </div>
                        <div class="form-group">
                            <input name="form_subject" placeholder="Subject" type="text" required>
                        </div>
                        <div class="form-group">
                            <input name="form_message" placeholder="Message" type="text" required>
                        </div>
                        <button type="submit" class="btn">Send</button>
                    </form>
                </aside>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Wrapper End -->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <p>© Copyright <?php echo date('Y'); ?> <span id="year"></span> By CorporZ. All Rights Reserved<br />Maintained By <a href="https://github.com/swamilax/corporZ/" target="_blank" rel="noopener noreferrer"><span class="color">CorporZ GitHub Team</span></a></p>
            </div>
        </div>
    </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<?php
if (!empty($scripts)) {
    foreach ($scripts as $script) {
        echo $script;
    }
}
?>

</body>

</html>