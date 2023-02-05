<!--main slider-->
<section class="main-slider">
    <div class="main-slider-carousel owl-carousel owl-theme">
        <?php
        if ($sliders) {
            foreach ($sliders as $slider) {
        ?>
                <div class="slide" style="background-image:url(<?php echo base_url() . 'assets/frontend/images/sliders/' . $slider->file_path; ?>)">
                    <div class="container">
                        <?php
                        if (!empty($sociallinks)) {
                        ?>
                            <ul class="social-links d-none d-xl-block">
                                <?php
                                foreach ($sociallinks as $sociallink) {
                                ?>
                                    <li><a class="<?php echo $sociallink->fa_icon; ?>" target="_blank" href="<?php echo $sociallink->link; ?>"></a></li>
                                <?php
                                }
                                ?>
                            </ul>
                        <?php
                        }
                        ?>
                        <div class="content">
                            <?php
                            if (!empty($slider->name)) {
                                $heading = explode('-', $slider->name);
                                echo "<h1>$heading[0] <span>$heading[1]</span></h1>";
                            }
                            ?>
                            <div class="tp-btn"> <a href="<?php echo $slider->link; ?>" data-text="Contact Us" class="theme-button-one bttn color-one"><span>Contact Us</span></a> </div>
                        </div>
                    </div>
                </div>

        <?php }
        } ?>
    </div>
</section>
<!-- main slider end -->