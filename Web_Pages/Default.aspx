<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Web_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="HomePage_StyleSheet.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="../JBackSlide/slides.min.jquery.js"></script>
	<script>
		$(function(){
			// Set starting slide to 1
			var startSlide = 1;
			// Get slide number if it exists
			if (window.location.hash) {
				startSlide = window.location.hash.replace('#','');
			}
			// Initialize Slides
			$('#slides').slides({
				preload: true,
				preloadImage: '../Images/Home_Page/loading.gif',
				generatePagination: false,
				play: 5000,
				pause: 2500,
				hoverPause: true,
				// Get the starting slide
				start: startSlide,
				animationComplete: function(current){
					// Set the slide number as a hash
					window.location.hash = '#' + current;
				}
			});
		});
	</script> 
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

		<div id="container">
			<div id="slides">
				<div class="slides_container">
					<div class="slide">
                        <div> <img src="../Images/Home_Page/Homepageimage_1.png" alt=""> </div>
					</div>
					<div class="slide">
                        <div> <img src="../Images/Home_Page/Homepageimage_2.png" alt=""> </div>
					</div>
					<div class="slide">
                        <div> <img src="../Images/Home_Page/Homepageimage_3.jpg" alt=""> </div>
					</div>
					<div class="slide">
                         <div> <img src="../Images/Home_Page/Homepageimage_4.jpg" alt=""> </div>
					</div>
				</div>
				<a href="#" class="prev"><img src="../Images/Home_Page/arrow-prev.png" width="24" height="43" alt="Arrow Prev"></a>
				<a href="#" class="next"><img src="../Images/Home_Page/arrow-next.png" width="24" height="43" alt="Arrow Next"></a>				
			</div>

		</div>
 
</asp:Content>

