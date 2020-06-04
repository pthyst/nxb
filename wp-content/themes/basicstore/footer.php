<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @version 1.5.0
 * @package basicstore
 */

?>

			</div><!-- .row -->

		</div><!-- .container fluid -->

	</section><!-- #site-content -->


	<footer id="site-footer" class="">

		<div class="container">

			<?php if (is_active_sidebar('sidebar-footer')) : ?>

			 <div id="footer-widgets">

				 <div class="row">

					 <?php dynamic_sidebar('Footer'); ?>

				 </div><!-- .row -->

			 </div><!-- #footer-widgets -->

			<hr>

			<?php endif; ?>

			<div id="site-copyright" class="text-center">
				
				<!-- <p><?php echo esc_html ('&#169;' ); ?> <?php echo esc_html (date('Y') ); ?> <?php echo get_bloginfo( 'name' ); ?>. <?php _e("All Rights Reserved","basicstore"); ?></p>

				<p><?php printf( esc_html__( 'Proudly powered by %1$s', 'basicstore' ), '<a href="https://wordpress.org" target="_blank">WordPress</a>' ); ?>

				<span class="sep"> | </span>

				<?php printf( esc_html__( 'Theme: %1$s by %2$s', 'basicstore' ), 'BasicStore', '<a href="https://wpfactory.com/author/theme-al/" target="_blank">Theme.al</a>' ); ?></p>-->

			</div><!-- .site-info -->
			<div class="container-fluid" id="nxb_info">
				<div class="info info--left">
					<ul>
						<li><i class="fas fa-building"></i> Trụ sở chính: 280 An Dương Vương, phường 4, Quận 5, Thành phố Hồ Chí Minh</li>
						<li><i class="fas fa-clock"></i> Giờ làm việc: 8h30 - 16h30 </li>
						<li><i class="fas fa-phone-alt"></i> Điện thoại - Fax : (+84)-(28)-39381382</li>
						<li><i class="fas fa-envelope"></i> Email : nxbdhsp@hcmue.edu.vn</li>
					</ul>
				</div>
				<div class="info info--right"></div>
			</div>
			

		</div><!-- .container -->
	<script src="https://kit.fontawesome.com/bf89e056e5.js" crossorigin="anonymous"></script>
	</footer><!-- #site-footer -->


<?php wp_footer(); ?>


</body>
</html>
