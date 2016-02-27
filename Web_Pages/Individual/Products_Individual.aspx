<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Products_Individual.aspx.cs" Inherits="Web_Pages_Products_Individual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="IndividualProducts_StyleSheet.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="../../JShop/Jquery.shop.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="site">
    <div id="content">
        <div id="products"> 
            <ul>
                <li>
                    <div class="product-image"> 
                        <img src="../../Images/Individual_Products/Individual_1.png" />
                    </div>

                    <div class="product-description" data-name="Color Printing" data-price="1.0">
                        <div id="product_number">011 </div>                         
                        <h3 class="product-name">Color Printing</h3>
                        <p class="product-price">&dollar; 1.0</p>

                            
                        <form class="add-to-cart" action="http://isys420project03.azurewebsites.net/Web_Pages/ShoppingCart.aspx" method="post">
                            <div>
                                <label for="qty-1">Quantity</label>
                                <input type="text" name="qty-1" id="qty-1" class="qty" value="1"/>
                            </div>
                            <p><input type="submit" value="Add To Cart" class="btn"/></p>
                        </form>
                    </div>
                </li>

                <li class="empty-li"> </li>

                <li>
                    <div class="product-image"> 
                        <img src="../../Images/Individual_Products/Individual_2.png" />
                    </div>

                    <div class="product-description" data-name="B/W Printing" data-price="0.5">
                        <div id="product_number">012 </div>                                             
                        <h3 class="product-name">B/W Printing</h3>
                        <p class="product-price">&dollar; 0.5</p>

                        <form class="add-to-cart" action="http://isys420project03.azurewebsites.net/Web_Pages/ShoppingCart.aspx" method="post">
                            <div>
                                <label for="qty-2">Quantity</label>
                                <input type="text" name="qty-2" id="qty-2" class="qty" value="1"/>
                            </div>
                            <p><input type="submit" value="Add To Cart" class="btn"/></p>
                        </form>
                    </div>
                </li>

                <li class="empty-li"> </li>

                <li>
                    <div class="product-image"> 
                        <img src="../../Images/Individual_Products/Individual_3.png" />
                    </div>

                    <div class="product-description" data-name="Scanning" data-price="0.75">
                        <div id="product_number">013 </div>                                                 
                        <h3 class="product-name">Scanning</h3>
                        <p class="product-price">&dollar; 0.75</p>

                        <form class="add-to-cart" action="http://isys420project03.azurewebsites.net/Web_Pages/ShoppingCart.aspx" method="post">
                            <div>
                                <label for="qty-3">Quantity</label>
                                <input type="text" name="qty-3" id="qty-3" class="qty" value="1"/>
                            </div>
                            <p><input type="submit" value="Add To Cart" class="btn"/></p>

                        </form>
                    </div>
                </li>

                <li class="empty-li"> </li>

                <li>
                    <div class="product-image"> 
                        <img src="../../Images/Individual_Products/Individual_4.png" />
                    </div>

                    <div class="product-description" data-name="Faxing" data-price="1.5">
                        <div id="product_number">014 </div>                                                 
                        <h3 class="product-name">Faxing</h3>
                        <p class="product-price">&dollar; 1.5</p>

                        <form class="add-to-cart" action="http://isys420project03.azurewebsites.net/Web_Pages/ShoppingCart.aspx" method="post">
                            <div>
                                <label for="qty-4">Quantity</label>
                                <input type="text" name="qty-4" id="qty-4" class="qty" value="1"/>
                            </div>
                            <p><input type="submit" value="Add To Cart" class="btn"/></p>

                        </form>
                    </div>
                </li>
                <li class="empty-li"> </li>

                <li>
                    <div class="product-image"> 
                        <img src="../../Images/Individual_Products/Individual_5.jpg" />
                    </div>

                    <div class="product-description" data-name="Copying" data-price="0.2">
                        <div id="product_number">015 </div>                                                 
                        <h3 class="product-name">Copying</h3>
                        <p class="product-price">&dollar; 0.2</p>

                        <form class="add-to-cart" action="http://isys420project03.azurewebsites.net/Web_Pages/ShoppingCart.aspx" method="post">
                            <div>
                                <label for="qty-5">Quantity</label>
                                <input type="text" name="qty-5" id="qty-5" class="qty" value="1"/>
                            </div>
                            <p><input type="submit" value="Add To Cart" class="btn"/></p>

                        </form>
                    </div>
                </li>

                <li class="empty-li"> </li>

                <li class="large-empty-li"> </li>
                <li class="empty-li"> </li>

            </ul>

        </div>

    </div>
</div>

</asp:Content>

