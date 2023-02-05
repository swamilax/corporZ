<!-- Breadcrumb Wrapper -->
<script src='https://www.google.com/recaptcha/api.js' async defer></script>
<script>
    function onSubmit(token) {
        document.getElementById("demo-form").submit();
    }
</script>
<div class="breadcrumb-wrapper">
    <div class="images-overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-heading">
                    <h1>Contact Us</h1>
                </div>
                <div class="page-breadcrumb-inner">
                    <div class="page-breadcrumb">
                        <div class="breadcrumb-list">
                            <ul>
                                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                <li><a href="javascript:void(0);">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About Us area -->
<section class="inner-page-wrapper contact-us-wrapper">

    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
				<h1>Get A Free Quote</h1><br/>
                <?php echo (!empty($this->session->flashdata('msg'))) ? $this->session->flashdata('msg') : ''; ?>
                <div class="contact-form">
                    <form action="<?php echo base_url(); ?>contact-us/send" method="POST" id="contact-form" name="contact_form" class="default-form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-box">
                                    <input type="text" name="form_name" value="" placeholder="Your Name" required>
                                    <div class="icon"> <i class="fa fa-user" aria-hidden="true"></i> </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-box">
                                    <input type="email" name="form_email" value="<?php echo (!empty($_GET['form_email'])) ? $_GET['form_email'] : ""; ?>" placeholder="Email Address" required>
                                    <div class="icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-box">
                                    <input type="text" name="form_phone" value="" placeholder="Phone" required>
                                    <div class="icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-box">
                                    <input type="text" name="form_subject" value="<?php echo (!empty($_GET['form_subject'])) ? $_GET['form_subject'] : ""; ?>" placeholder="Subject" required>
                                    <div class="icon"> <i class="fa fa-file-text" aria-hidden="true"></i> </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="input-box">
                                    <textarea name="form_message" placeholder="Your Message.." required><?php echo (!empty($_GET['form_message'])) ? $_GET['form_message'] : ""; ?></textarea>
                                    <div class="icon"> <i class="fa fa-comment" aria-hidden="true"></i> </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="g-recaptcha" data-sitekey="6LeqV7MZAAAAAGOM15h14FVxdp-Y6LxadqtKxdAj"></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">

                                <div class="button-box">
                                    <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                    <button class="theme-button-one bttn color-one" data-text="Submit Here" type="submit" data-loading-text="Please wait...">Submit Here</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <section class="contact-address-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4">
                    <div class="single-address-box">
                        <h3>About Us</h3>
                        <p><?php echo $settings['footer_about']; ?></p>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4">
                    <div class="single-address-box">
                        <h3>Our Address</h3>
                        <p><?php echo $settings['address']; ?></p>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4">
                    <div class="single-address-box">
                        <h3>Contact Info</h3>
                        <p>
                            <?php echo 'Email: ' . $settings['email']; ?><br>
                            <?php echo 'Phone: ' . $settings['phone']; ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>
<!-- Google Map Start -->
<div class="google-map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d224345.83923192866!2d77.06889754725779!3d28.52758200617606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfd5b347eb62d%3A0x52c2b7494e204dce!2sNew%20Delhi%2C%20Delhi!5e0!3m2!1sen!2sin!4v1609008483286!5m2!1sen!2sin" allowfullscreen=""></iframe>
</div>