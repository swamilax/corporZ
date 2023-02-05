<!-- Breadcrumb Wrapper -->
<div style="background-image: url('<?php echo base_url('assets/frontend/images/blogs/') . $blog[0]->file_path; ?>');" class="breadcrumb-wrapper">
    <div class="images-overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-heading">
                    <h1><?php echo $blog[0]->title; ?></h1>
                    <span class="line"></span>
                    <p><?php echo $blog[0]->short; ?></p>
                </div>
                <div class="page-breadcrumb-inner">
                    <div class="page-breadcrumb">
                        <div class="breadcrumb-list">
                            <ul>
                                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                <?php
                                if ($blog[0]->pid != 0) { ?>
                                    <li><a href="<?php echo $blog[0]->link; ?>"><?php echo $blog[0]->catname; ?></a></li>
                                <?php
                                }
                                ?>
                                <li><a href="javascript:void(0);"><?php echo $blog[0]->title; ?></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About Us area -->
<section id="about-us" class="inner-page-wrapper about-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xl-12 about-text">
                <?php
                echo $blog[0]->content;
                ?>
            </div>
        </div>
    </div>
</section>