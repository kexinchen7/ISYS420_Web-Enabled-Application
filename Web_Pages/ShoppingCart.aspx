<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Web_Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="../JShop/Jquery.shop.js"></script>
    <link href="ShoppingCart_StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="site">
        <header id="cart-head">
            <h1>Your Shopping Cart!</h1>
        </header>
        <div id="content">
            <form id="shopping-cart" action="http://isys420project03.azurewebsites.net/Web_Pages/ShoppingCart.aspx" method="post">
                <table class="shopping-cart">
                    <thead class="shopping-cart">
                        <tr>
                            <th scope="col">Item</th>
                            <th scope="col">Qty</th>
                            <th scope="col" colspan="2">Price</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
                <p id="sub-total">
                    <strong>Sub Total</strong>: <span id="stotal"></span>
                </p>

                <ul id="shopping-cart-actions">
                    <li>
                        <input type="submit" name="update" id="update-cart" class="btn" value="Update Cart"/>
                    </li>
                    <li>
                        <input type="submit" name="delete" id="empty-cart" class="btn" value="Empty Cart"/>
                    </li>
                    <li>
                        <a href="http://isys420project03.azurewebsites.net/Web_Pages/University/Products_University.aspx" class="btn">Continue Shopping</a>
                    </li>
                    <li>
                        <a href="#" class="btn">Go To Checkout</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>

</asp:Content>
