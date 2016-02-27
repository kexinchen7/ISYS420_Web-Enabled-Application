<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Company_Product4_Page.aspx.cs" Inherits="Web_Pages_Company_Company_Product4_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CompanyProducts_StyleSheet.css" rel="stylesheet" />
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="../../JShop/Jquery.shop.js"></script>

    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="../../JZoom/JavaScript.js"></script>
    <script>
         $(document).ready(function(){
         $(".Product_Company_Images").jqzoomer();
            });
    </script>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="site">   

<div class="Product_Company_Images">
    <a href="http://isys420project03.azurewebsites.net/Images/Company_Products/Product4G.jpg">
        <img  src="http://isys420project03.azurewebsites.net/Images/Company_Products/Product4.jpg" />
    </a>
</div>
 </br> 
 <div class="product-description" data-name="Original Business Cards" data-price="13.99">    
    <h3 class="product-name">Original Business Cards</h3>
    <div id="product_number">009 </div> 
    <p class="product-price">&dollar; 13.99</p>   
    <form class="add-to-cart" action="http://isys420project03.azurewebsites.net/Web_Pages/ShoppingCart.aspx" method="post">
          <div>
          <label for="qty-6">Quantity</label>
          <input type="text" name="qty-6" id="qty-6" class="qty" value="1"/>     
          </div>
          <p><input class="btn" type="submit" value="Add To Cart" /></p>
   </form> 
   
 </div>
             
   
    <div class ="description">
          <div class="product_features">
            <h2> PRODUCT FEATURES </h2>
              <ul>
                <li> - Printed in premium paper stock with a smooth Matte or shiny Gloss finish</li>
                <li> - Hundreds of exclusive designs to choose from, or you can upload your own</li>
                <li> - Thanks to Printfinity you can print a different image on to every one.</li>
              </ul>
           </div>

           <div class="return_fund_policy">
             <h2> RETURN AND FUND POLICY </h2> 
             If you are not completely satisfied with your purchase, simply return the item or items to us in their original condition within 14 days of receipt. We will issue a refund on receipt, or exchange the item for a different size / colour if preferred. However delivery charges are only refundable if you have cancelled your entire order within the 7 day Cooling-Off Period or where the goods are faulty and a refund is made.
             <br /> <br />
            </p>
           </div>
    </div>
</div>
                     
  
</asp:Content>

