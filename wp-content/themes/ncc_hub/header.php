<!doctype html>
<html <?php language_attributes(); ?> class="no-js">
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">

		<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' :'; } ?> <?php bloginfo('name'); ?></title>


        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/favicon.ico" rel="shortcut icon">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/touch.png" rel="apple-touch-icon-precomposed">

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="<?php bloginfo('description'); ?>">

		<?php wp_head(); ?>

		<style type="text/css">
			
			html { background: #e52d42; }
			.header-left .main-nav ul li a:hover { color: #e52d42; }
			.header-right a:hover { color: #e52d42; }
			.button { background: #e52d42; }

			a:hover { color: #e52d42; }

			.inner-main a { color: #e52d42; }

			.hamburger-inner, .hamburger-inner::before, .hamburger-inner::after { background: #e52d42; } 

			.button:hover { background: #a93339; }

			.mobile-menu { background: #e52d42; }

			.contact-form { background: #e52d42; }
			.login-form { background: #e52d42; }

			#wpmem_login input[type="submit"] { color: #e52d42; }
			#wpmem_login input[type="submit"]:hover { background: #a93339; }

			.events-top { background: #e52d42; }
			.event .horizontal-break { background: #e52d42; }
			.event .icon-right-arrow { color: #e52d42;  }

			a:hover .event h5 { color: #e52d42;  }


			.vacancies-top { background: #e52d42; }
			.vacancies .horizontal-break { background: #e52d42; }
			.vacancies .icon-right-arrow { color: #e52d42;  }

			a:hover .vacancies h5 { color: #e52d42;  }


			    .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar{
				    background-color: #e52d42; 
				  }

				  .mCSB_scrollTools .mCSB_dragger:hover .mCSB_dragger_bar{
				    background-color: #e52d42; 
				  }
				  .mCSB_scrollTools .mCSB_dragger:active .mCSB_dragger_bar,
				  .mCSB_scrollTools .mCSB_dragger.mCSB_dragger_onDrag .mCSB_dragger_bar{
				    background-color: #e52d42; 
				  }

				  .header-bar { background: #e52d42; }

				   .category-list ul li a:hover { color: #e52d42; }

				   .filter-button:hover { background: #a93339; }

				   .filter.filter-active { background: #e52d42; }

				   .filter-button.is-active { color: #e52d42 !important;  }

				   .filter-button.is-active:hover { color: #fff !important;  }

				   .login-form .close-button:hover { color: #a93339; }
 
 					.contact-form .close-button:hover { color: #a93339; }

 					.contact-form input[type="submit"] { color: #e52d42 !important; }
 
 					.gform_wrapper div.validation_error { color: #e52d42 !important; }


 					.page-template-template-account-page input[type="submit"] { background:  #e52d42 !important; }
 					.page-template-template-account-page input[type="submit"]:hover { border: 1px solid #e52d42 !important; color: #e52d42 !important; }

 					.page-template-template-account-page .inner-main #wpmem_login legend { color: #e52d42 !important; }
 					.page-template-template-account-page .inner-main #wpmem_reg legend { color: #e52d42 !important; }


		</style>

		<link href="https://file.myfontastic.com/5EJSRQG2uvUpnjTEZWgsJE/icons.css" rel="stylesheet">

	</head>
	<body <?php body_class(); ?>>


		<header class="trans5">
			

			<div class="header-left">

				<div class="main-nav trans5">
					<nav>
						<ul>
							<li class="logo"><a href="<?php echo get_site_url(); ?>"><img class="trans5" src="<?php echo get_template_directory_uri(); ?>/img/ncc-logo.png" alt=""></a></li>

							<?php wp_nav_menu( array( 'theme_location' => 'main-menu','container'      => '', 'items_wrap'    => '%3$s' ) ); ?>

						</ul>
					</nav>
				</div>

			</div>


			<div class="header-right">
				
				<?php if ( is_user_logged_in() ) { ?>
				    
				    <div class="hr-item"><a href="<?php echo get_site_url(); ?>/membership-login/membership-profile/?a=edit">Your Account</a></div>

				<?php } else { ?>

				    <div class="hr-item login"><a href="#">Login/Register</a></div>

				<?php } ?>
				
					

					<div class="login-form-overlay"></div>
					<div class="login-form">

						<div class="login-close close-button">
							<div class="icon-cancel"></div>
						</div>

						<h4>Log In</h4>

						<?php echo do_shortcode('[wpmem_form login]'); ?>
						New User? <a class="register" href="<?php echo get_site_url(); ?>/register/">Click here to register</a>
					</div>
					

					<div class="hr-item contact-button"><a href="#" class="button">Get In Touch</a></div>

					<div class="contact-form-overlay"></div>

					<div class="contact-form">

						<div class="contact-close close-button">
							<div class="icon-cancel"></div>
						</div>

						<h4>Get In Touch</h4>
						
						<?php echo do_shortcode('[gravityform id="1" title="false" description="false"]'); ?>

					</div>

					<div class="hr-item hide-lg menu-button">
						
					<div class="hamburger hamburger--collapse">
					  <div class="hamburger-box">
					    <div class="hamburger-inner"></div>
					  </div>
					</div>

					</div>
				

			</div>


		</header>



		

		

		<div class="mobile-menu">
			<nav>
				<ul>
					<?php wp_nav_menu( array( 'theme_location' => 'main-menu','container'      => '', 'items_wrap'    => '%3$s' ) ); ?>
				</ul>
			</nav>
		</div>


		
		<div class="main">






