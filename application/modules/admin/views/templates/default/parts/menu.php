<section class="sidebar fixed ">
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
        <!--        <li class="header">MAIN NAVIGATION</li>-->
        <li class="treeview">
            <a href="<?php echo site_url('admin/dashboard'); ?>">
                <i class="fa fa-home"></i> <span>Dashboard</span>
            </a>
        </li>
        <?php if ($this->ion_auth->is_admin()) : ?>
            <!-- <li class="treeview">
                <a href="#">
                    <i class="fa fa-users"></i>
                    <span>User Management</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="treeview">
                        <a href="<?php echo site_url('admin/user/'); ?>">
                            <i class="fa fa-edit"></i> <span>Manage Users</span>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="<?php echo site_url('admin/user_groups/'); ?>">
                            <i class="fa fa-edit"></i> <span>Manage Groups</span>
                        </a>
                    </li>
                </ul>
            </li> -->

            <li class="treeview">
                <a href="<?php echo site_url('admin/navigation'); ?>">
                    <i class="fa fa-list-alt"></i> <span>Navigation</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/categories'); ?>">
                    <i class="fa fa-mars"></i> <span>Categories</span>
                </a>
            </li>


            <li class="treeview">
                <a href="<?php echo site_url('admin/sub_categories'); ?>">
                    <i class="fa fa-mars-double"></i> <span>Sub-Categories</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/blogs_pages'); ?>">
                    <i class="fa fa-book"></i> <span>Blogs/Pages</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/sliders'); ?>">
                    <i class="fa fa-bookmark-o"></i> <span>Sliders</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/gallery'); ?>">
                    <i class="fa fa-photo"></i> <span>Gallery</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/partners'); ?>">
                    <i class="fa fa-image"></i> <span>Partners</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/socialmedia'); ?>">
                    <i class="fa fa-globe"></i> <span>Social Media</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/testimonial'); ?>">
                    <i class="fa fa-user"></i> <span>Testimonials</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/counters'); ?>">
                    <i class="fa fa-clock-o"></i> <span>Counters</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/contactus'); ?>">
                    <i class="fa fa-envelope-o"></i> <span>Contact Us</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<?php echo site_url('admin/settings'); ?>">
                    <i class="fa fa-cogs"></i> <span>Settings</span>
                </a>
            </li>

        <?php endif; ?>
    </ul>
</section>
<!-- /.sidebar -->
<script type="text/javascript">
    $(document).ready(function() {

        $('.sidebar ul li').each(function() {
            if (window.location.href.indexOf($(this).find('a:first').attr('href')) > -1) {
                $(this).closest('ul').closest('li').attr('class', 'active');
                $(this).addClass('active').siblings().removeClass('active');
            }
        });

    });
</script>