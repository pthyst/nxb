(function( $ ) {
	'use strict';

	/**
	 * All of the code for your admin-facing JavaScript source
	 * should reside in this file.
	 *
	 * Note: It has been assumed you will write jQuery code here, so the
	 * $ function reference has been prepared for usage within the scope
	 * of this function.
	 *
	 * This enables you to define handlers, for when the DOM is ready:
	 *
	 * $(function() {
	 *
	 * });
	 *
	 * When the window is loaded:
	 *
	 * $( window ).load(function() {
	 *
	 * });
	 *
	 * ...and/or other possibilities.
	 *
	 * Ideally, it is not considered best practise to attach more than a
	 * single DOM-ready or window-load handler for a particular page.
	 * Although scripts in the WordPress core, Plugins and Themes may be
	 * practising this, we should strive to set a better example in our own work.
	 */

	/*********************** NEW VERSION ***********************/
	var lineChartStyleOption_1 = {
        scales: {
            yAxes: [{
                display: false
            }],
            xAxes: [{
                display: false
            }]
        },
        legend: {
            display: false
        },
        elements: {
            point: {
                radius: 1
            },
            line: {
                tension: 0
            }
        },
        stepsize: 100
    };
    var lineChartStyleOption_2 = {
        scales: {
            yAxes: [{
                display: false
            }],
            xAxes: [{
                display: false
            }]
        },
        legend: {
            display: false
        },
        elements: {
            point: {
                radius: 0
            },
            line: {
                tension: 0
            }
        },
        stepsize: 100
    };
	var current_page = jQuery("#current_page").val();


    
/* Premium Code Stripped by Freemius */


    if ($(".apvc-counter-icon").length) {
		$(".apvc-counter-icon").select2();
	}

	/************************ Settings Page ***********************/
	jQuery(document).on("click","#apvc_save_settings",function( e ){
		e.preventDefault();

		var formData = jQuery('#apvc_settings_form').serialize();
		
		jQuery.ajax({
	      type : "post",
	      url : apvc_ajax.ajax_url,
	      data : { action: "apvc_save_settings", formData:formData },
	      success: function(response) {
	      	if( response == 'success' ){
	      		var url = window.location.href+"&m=success"; 
	      		window.location.href = url;
	      	}
	      }
	  	});
	});
	jQuery(document).on("click",".confirm-reset-settings",function( e ){
		e.preventDefault();
		jQuery.ajax({
	      type : "post",
	      url : apvc_ajax.ajax_url,
	      data : { action: "apvc_reset_settings" },
	      success: function(response) {
	      	if( response == 'success' ){
	      		var url = window.location.href+"&m=success&t=reset"; 
	      		window.location.href = url;
	      	}
	      }
	  	});
	});
	jQuery(document).on("click","#apvc_reset_button",function( e ){
		e.preventDefault();
		showSwal('warning-message-and-cancel');
	});
	jQuery(document).on("click",".confirm-reset-data-settings",function( e ){
		e.preventDefault();
		jQuery.ajax({
	      type : "post",
	      url : apvc_ajax.ajax_url,
	      data : { action: "apvc_reset_data_settings" },
	      success: function(response) {
	      	if( response == 'success' ){
	      		var url = window.location.href+"&m=success&t=reset_data"; 
	      		window.location.href = url;
	      	}
	      }
	  	});
	});
	jQuery(document).on("click","#apvc_reset_data_button",function( e ){
		e.preventDefault();
		showSwal('warning-message-and-cancel-data');
	});
	/************************ Settings Page End ***********************/


	/************************ Generate Shortcode ***********************/
	jQuery(document).on("click",".apvc_generate_shortcode",function( e ){
		e.preventDefault();
		jQuery(".shLoader").show();
		var formData = jQuery('#apvc_generate_shortcode').serialize();
		jQuery.ajax({
	      type : "post",
	      url : apvc_ajax.ajax_url,
	      data : { action: "apvc_generate_shortcode", formData:formData },
	      success: function(response) {
	      	jQuery(".shLoader").hide();
	      	if( response != '' ){
	      		jQuery("#shortcode_output").html(response);
	      	}
	      }
	  	});
	});

	jQuery(document).on('click',"#shortcode_copy",function( e ){
		e.preventDefault();
		var el = document.getElementById("shortcode_text");
		var range = document.createRange();
		range.selectNodeContents(el);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
		document.execCommand('copy');
		showSwal('success-message');
	});
	/************************ Generate Shortcode End ***********************/
	function getUrlParameter(sParam) {
	    var sPageURL = window.location.search.substring(1),
	        sURLVariables = sPageURL.split('&'),
	        sParameterName,
	        i;

	    for (i = 0; i < sURLVariables.length; i++) {
	        sParameterName = sURLVariables[i].split('=');
	        if (sParameterName[0] === sParam) {
	            return sParameterName[1] === undefined ? '-' : decodeURIComponent(sParameterName[1]);
	        }
	    }
	};

	if( current_page == 'trending' ){

		var d = getUrlParameter('d');
		var e = getUrlParameter('e');
		var pts = getUrlParameter('pts');
		if( pts == "-") { pts = ""; }
		var psts = getUrlParameter('psts');
		if( psts == "-") { psts = ""; }
		jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_top_pages_data", d:d, e:e},
	       success: function(response) {
	       	jQuery("#apvc_top_pages_data").html(response);
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_top_posts_data",d:d, e:e,pts:pts},
	       success: function(response) {
	       	jQuery("#apvc_top_posts_data").html(response);
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_top_countries_data", d:d, e:e, psts:psts, pts:pts },
	       success: function(response) {
	       	jQuery("#apvc_top_countries_data").html(response);
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_top_ip_address_data",d:d, e:e, psts:psts, pts:pts},
	       success: function(response) {
	       	jQuery("#apvc_top_ip_address_data").html(response);
	       }
	    });
    
    } else if( current_page == 'shortcode') {
    	
    	setTimeout(function(){
			jQuery.ajax({
		       type : "post",
		       url : apvc_ajax.ajax_url,
		       data : { action: "apvc_get_all_articles_sh"},
		       success: function(response) {
		       	jQuery(".apvc_articles_list").append(response);
		       	jQuery(".apvc_articles_list").select2();
		       }
		    });
		},100);

    } else if( current_page == 'dashboard' ) {

    	jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_total_counts_of_the_year_data"},
	       success: function(response) {
	       	jQuery("#total_counts_year_data").html(response);
	       	if ($('#apvc_total_visits_yearly').length) {
	            var lineChartCanvas = $("#apvc_total_visits_yearly").get(0).getContext("2d");
	            var gradientStrokeFill_1 = lineChartCanvas.createLinearGradient(1, 2, 1, 400);
	            gradientStrokeFill_1.addColorStop(0, '#fff');
	            gradientStrokeFill_1.addColorStop(1, infoColor);

	            var list = jQuery('#apvc_total_visits_yearly').attr("months").split(",");
	            var lineChart = new Chart(lineChartCanvas, {
	                type: 'line',
	                data: {
	                    labels: list,
	                    datasets: [{
	                        label: 'Visits',
	                        data: list,
	                        borderColor: infoColor,
	                        backgroundColor: gradientStrokeFill_1,
	                        borderWidth: 2,
	                        fill: true
	                    }]
	                },
	                options: lineChartStyleOption_2
	            });
	        }
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_total_counts_of_the_month_data"},
	       success: function(response) {
	       	jQuery("#total_counts_month_data").html(response);

	       	if ($('#apvc_total_visits_monthly').length) {
	            var lineChartCanvas = $("#apvc_total_visits_monthly").get(0).getContext("2d");
	            var gradientStrokeFill_1 = lineChartCanvas.createLinearGradient(1, 2, 1, 400);
	            gradientStrokeFill_1.addColorStop(0, '#fff');
	            gradientStrokeFill_1.addColorStop(1, primaryColor);

	            var Mlist = jQuery('#apvc_total_visits_monthly').attr("month").split(",");
	            var lineChart = new Chart(lineChartCanvas, {
	                type: 'line',
	                data: {
	                    labels: Mlist,
	                    datasets: [{
	                        label: 'Visits',
	                        data: Mlist,
	                        borderColor: primaryColor,
	                        backgroundColor: gradientStrokeFill_1,
	                        borderWidth: 2,
	                        fill: true
	                    }]
	                },
	                options: lineChartStyleOption_2
	            });
	        }
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_total_counts_of_the_week_data"},
	       success: function(response) {
	       	jQuery("#total_counts_weeks_data").html(response);

	       	if ($('#apvc_total_visits_weekly').length) {
	            var lineChartCanvas = $("#apvc_total_visits_weekly").get(0).getContext("2d");
	            var gradientStrokeFill_1 = lineChartCanvas.createLinearGradient(1, 2, 1, 400);
	            gradientStrokeFill_1.addColorStop(0, '#fff');
	            gradientStrokeFill_1.addColorStop(1, successColor);

	            var Wlist = jQuery('#apvc_total_visits_weekly').attr("weeks").split(",");
	            var lineChart = new Chart(lineChartCanvas, {
	                type: 'line',
	                data: {
	                    labels: Wlist,
	                    datasets: [{
	                        label: 'Visits',
	                        data: Wlist,
	                        borderColor: successColor,
	                        backgroundColor: gradientStrokeFill_1,
	                        borderWidth: 2,
	                        fill: true
	                    }]
	                },
	                options: lineChartStyleOption_2
	            });
	        }
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_total_counts_daily_data"},
	       success: function(response) {
	       	jQuery("#total_counts_daily_data").html(response);

	       	if ($('#apvc_total_visits_daily').length) {
	            var lineChartCanvas = $("#apvc_total_visits_daily").get(0).getContext("2d");
	            var gradientStrokeFill_1 = lineChartCanvas.createLinearGradient(1, 2, 1, 400);
	            gradientStrokeFill_1.addColorStop(0, '#fff');
	            gradientStrokeFill_1.addColorStop(1, dangerColor);
	            
	            var Dlist = jQuery('#apvc_total_visits_daily').attr("days").split(",");
	            var lineChart = new Chart(lineChartCanvas, {
	                type: 'line',
	                data: {
	                    labels: Dlist,
	                    datasets: [{
	                        label: 'Visits',
	                        data: Dlist,
	                        borderColor: dangerColor,
	                        backgroundColor: gradientStrokeFill_1,
	                        borderWidth: 2,
	                        fill: true
	                    }]
	                },
	                options: lineChartStyleOption_2
	            });
	        }
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_browsers_stats_data"},
	       success: function(response) {
	       	jQuery("#apvc_browser_stats_data").html(response);
		       	if ($("#apvcBrowsersStatsChart").length) {
		            var ch_value = jQuery("#apvcBrowsersStatsChart").attr("ch_value").split(',');
		            var ch_keys = jQuery("#apvcBrowsersStatsChart").attr("ch_keys").split(',');

		            var apvcBrowsersStatsChart = $("#apvcBrowsersStatsChart").get(0).getContext("2d");
		            var doughnutPieData = {
		                datasets: [{
		                    data: ch_value,
		                    backgroundColor: [
		                        primaryColor,
		                        secondaryColor,
		                        successColor,
		                        warningColor,
		                        dangerColor,
		                        infoColor,
		                        darkColor,
		                        lightColor
		                    ],
		                    borderColor: [
		                        primaryColor,
		                        secondaryColor,
		                        successColor,
		                        warningColor,
		                        dangerColor,
		                        infoColor,
		                        darkColor,
		                        lightColor
		                    ],
		                }],

		                // These labels appear in the legend and in the tooltips when hovering different arcs
		                labels: ch_keys
		            };
		            var doughnutPieOptions = {
		                cutoutPercentage: 75,
		                animationEasing: "easeOutBounce",
		                animateRotate: true,
		                animateScale: false,
		                responsive: true,
		                maintainAspectRatio: true,
		                showScale: true,
		                legend: {
		                    display: false
		                },
		                layout: {
		                    padding: {
		                        left: 0,
		                        right: 0,
		                        top: 0,
		                        bottom: 0
		                    }
		                }
		            };
		            var doughnutChart = new Chart(apvcBrowsersStatsChart, {
		                type: 'doughnut',
		                data: doughnutPieData,
		                options: doughnutPieOptions
		            });
		        }
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_referral_stats_data"},
	       success: function(response) {
				jQuery("#apvc_referral_stats_data").html(response);
		     	if ($("#trafficReferralChart").length) {
		            var ref_value = jQuery("#trafficReferralChart").attr("ref_value").split(',');
		            var ref_keys = jQuery("#trafficReferralChart").attr("ref_keys").split(',');

		            var doughnutChartCanvas = $("#trafficReferralChart").get(0).getContext("2d");
		            var doughnutPieData = {
		                datasets: [{
		                    data: ref_value,
		                    backgroundColor: [
		                        primaryColor,
		                        secondaryColor,
		                        successColor,
		                        warningColor,
		                        dangerColor,
		                        infoColor,
		                        darkColor,
		                        lightColor
		                    ],
		                    borderColor: [
		                        primaryColor,
		                        secondaryColor,
		                        successColor,
		                        warningColor,
		                        dangerColor,
		                        infoColor,
		                        darkColor,
		                        lightColor
		                    ],
		                }],

		                // These labels appear in the legend and in the tooltips when hovering different arcs
		                labels: ref_keys
		            };
		            var doughnutPieOptions = {
		                cutoutPercentage: 75,
		                animationEasing: "easeOutBounce",
		                animateRotate: true,
		                animateScale: false,
		                responsive: true,
		                maintainAspectRatio: true,
		                showScale: true,
		                legend: {
		                    display: false
		                },
		                layout: {
		                    padding: {
		                        left: 0,
		                        right: 0,
		                        top: 0,
		                        bottom: 0
		                    }
		                }
		            };
		            var doughnutChart = new Chart(doughnutChartCanvas, {
		                type: 'doughnut',
		                data: doughnutPieData,
		                options: doughnutPieOptions
		            });
		        }
	       }
	    });

	    jQuery.ajax({
	       type : "post",
	       url : apvc_ajax.ajax_url,
	       data : { action: "apvc_get_os_stats_data"},
	       success: function(response) {
				jQuery("#apvc_os_stats_data").html(response);
		     	if ($("#osSourceChart").length) {
		            var os_value = jQuery("#osSourceChart").attr("os_value").split(',');
		            var os_keys = jQuery("#osSourceChart").attr("os_keys").split(',');

		            var doughnutChartCanvas = $("#osSourceChart").get(0).getContext("2d");
		            var doughnutPieData = {
		                datasets: [{
		                    data: os_value,
		                    backgroundColor: [
		                        primaryColor,
		                        secondaryColor,
		                        successColor,
		                        warningColor,
		                        dangerColor,
		                        infoColor,
		                        darkColor,
		                        lightColor
		                    ],
		                    borderColor: [
		                        primaryColor,
		                        secondaryColor,
		                        successColor,
		                        warningColor,
		                        dangerColor,
		                        infoColor,
		                        darkColor,
		                        lightColor
		                    ],
		                }],

		                // These labels appear in the legend and in the tooltips when hovering different arcs
		                labels: os_keys
		            };
		            var doughnutPieOptions = {
		                cutoutPercentage: 75,
		                animationEasing: "easeOutBounce",
		                animateRotate: true,
		                animateScale: false,
		                responsive: true,
		                maintainAspectRatio: true,
		                showScale: true,
		                legend: {
		                    display: false
		                },
		                layout: {
		                    padding: {
		                        left: 0,
		                        right: 0,
		                        top: 0,
		                        bottom: 0
		                    }
		                }
		            };
		            var doughnutChart = new Chart(doughnutChartCanvas, {
		                type: 'doughnut',
		                data: doughnutPieData,
		                options: doughnutPieOptions
		            });
		        }
	       }
	    });

    }

	jQuery(document).on("change","#shortcode_type",function(e){
		e.preventDefault();
		if( jQuery(this).val() == 'individual' ){
			jQuery(".shArticles").show();			
		} else {
			jQuery(".shArticles").hide();
		}
	});

	/************************ Generate Shortcode End ***********************/


})( jQuery );



(function($) {
  showSwal = function(type) {
    'use strict';
    if (type === 'success-message') {
      swal({
        title: apvc_translation.success,
	    text: apvc_translation.shortcode_copied,
        icon: 'success',
        timer: 2000,
        button: false,
      });

    } else if (type === 'file-success-message') {
      swal({
        title: apvc_translation.success,
	    text: apvc_translation.import_completed,
        icon: 'success',
        timer: 2000,
        button: false,
      });

    }  else if (type === 'file-failed-message') {
      swal({
        title: apvc_translation.failed,
	    text: apvc_translation.import_failed,
        icon: 'error',
        timer: 2000,
        button: false,
      });

    } else if (type === 'delete-success-message') {
      swal({
        title: apvc_translation.success,
	    text: apvc_translation.shortcode_delete,
        icon: 'success',
        timer: 2000,
        button: false,
      });
    } else if (type === 'file-delete-success-message') {
      swal({
        title: apvc_translation.success,
	    text: apvc_translation.file_delete,
        icon: 'success',
        timer: 2000,
        button: false,
      });
    } else if (type === 'file-export-success') {
      swal({
        title: apvc_translation.success,
	    text: apvc_translation.export_completed,
        icon: 'success',
        timer: 2000,
        button: false,
      });
    } else if (type === 'basic') {
      swal({
	    text: apvc_translation.valid_date,
        icon: 'warning',
        timer: 3000,
        button: false,
      });
    } else if (type === 'valid-file') {
      swal({
	    text: apvc_translation.valid_file,
        icon: 'warning',
        timer: 3000,
        button: false,
      });
    } else if (type === 'date_warning') {
      
      swal({
	    text: apvc_translation.date_warning,
        icon: 'warning',
        timer: 3000,
        button: false,
      });
    }  else if (type === 'data_warning') {
      swal({
	    text: apvc_translation.data_warning,
        icon: 'warning',
        timer: 3000,
        button: false,
      });
    } else if (type === 'warning-message-and-cancel') {
      swal({
        title: apvc_translation.are_you_sure,
        text: apvc_translation.are_you_sure_text,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3f51b5',
        cancelButtonColor: '#ff4081',
        confirmButtonText: apvc_translation.confirm_btn,
        buttons: {
          cancel: {
            text: apvc_translation.cancel_btn,
            value: null,
            visible: true,
            className: "btn btn-danger",
            closeModal: true,
          },
          confirm: {
            text: apvc_translation.okay_btn,
            value: true,
            visible: true,
            className: "btn btn-primary confirm-reset-settings",
            closeModal: true
          }
        }
      })
    } else if (type === 'warning-message-and-cancel-data') {
      swal({
        title: apvc_translation.are_you_sure,
        text: apvc_translation.are_you_sure_text,
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#3f51b5',
        cancelButtonColor: '#ff4081',
        confirmButtonText: apvc_translation.confirm_btn,
        buttons: {
          cancel: {
            text: apvc_translation.cancel_btn,
            value: null,
            visible: true,
            className: "btn btn-danger",
            closeModal: true,
          },
          confirm: {
            text: apvc_translation.okay_btn,
            value: true,
            visible: true,
            className: "btn btn-primary confirm-reset-data-settings",
            closeModal: true
          }
        }
      })
    } else if (type === 'custom-html') {
      swal({
        content: {
          element: "input",
          attributes: {
            placeholder: apvc_translation.shortcode_save,
            type: "text",
            class: 'form-control',
            id:"shortcode_name",
          },
        },
        button: {
          text: apvc_translation.okay_btn,
          value: true,
          visible: true,
          className: "btn btn-primary save_shortcode_ok"
        }
      });
  	}	

  }

})(jQuery);