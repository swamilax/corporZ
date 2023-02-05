<!-- Pre Loader -->
<div id="preloader">
    <div id="loader"></div>
</div>
<!--  header top start  -->
<header class="header-section">
    <div class="header-bottomarea">
        <div class="container">
            <div class="header-bottom">
                <!-- Header Logo -->
                <a href="<?php echo base_url(); ?>" class="header-logo"><img src="<?php echo base_url(); ?><?php echo ($logo != "" ? $logo : 'assets/frontend/images/logo.png'); ?>" alt="<?php echo $alt; ?>"> </a>
                <!--// Header Logo -->
                <!-- Main Navigation -->
                <nav class="in-navigation">
                    <?php
                    if (!empty($navigations)) {
                    ?>
                        <ul>
                            <?php
                            foreach ($navigations as $navigation) {
                            ?>
                                <li class="<?php echo ($navigation['level1'] == '') ? '' : 'in-dropdown'; ?>"><a href="<?php echo (($navigation['flag'] == 1) ? base_url() . $navigation['link'] : 'javascript:void(0)'); ?>"><?php echo $navigation['menu']; ?></a>
                                    <?php
                                    if (!empty($navigation['level1'])) {
                                    ?>
                                        <ul class="dropdown">
                                            <?php
                                            foreach ($navigation['level1'] as $submenu) {
                                            ?>
                                                <li class="<?php echo ($submenu['level2'] == '') ? '' : 'in-dropdown'; ?>"><a href="<?php echo (($submenu['flag'] == 1) ? base_url() . $submenu['link'] : 'javascript:void(0)'); ?>"><?php echo $submenu['submenu']; ?></a>
                                                    <?php
                                                    if (!empty($submenu['level2'])) {
                                                    ?>
                                                        <ul style="left: 100%;top: 0;margin-left: 1px;" class="dropdown">
                                                            <?php
                                                            foreach ($submenu['level2'] as $subsubmenu) {
                                                            ?>
                                                                <li><a href="<?php echo $subsubmenu['link']; ?>"><?php echo $subsubmenu['catname']; ?></a></li>
                                                            <?php
                                                            }
                                                            ?>
                                                        </ul>
                                                    <?php
                                                    }
                                                    ?>
                                                </li>
                                            <?php
                                            }
                                            ?>
                                        </ul>
                                    <?php
                                    }
                                    ?>
                                </li>



                            <?php
                            }
                            ?>

                        </ul>
                    <?php
                    }
                    ?>


                </nav>
                <!--// Main Navigation -->
            </div>
        </div>
    </div>
    <div class="mobile-menu-wrapper clearfix">
        <div class="container">
            <div class="mobile-menu"></div>
        </div>
    </div>
</header>
<!-- Banner Wrapper Start -->