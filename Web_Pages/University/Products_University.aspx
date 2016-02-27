<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Products_University.aspx.cs" Inherits="Web_Pages_Products_University" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="UniversityProducts_StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="textbook-row">
        <table>
            <tr class="first-row">
                <td class="img-cell">
                     <a href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product1.aspx"> 
                     <img src="../../Images/University_Products/textbook_1.png"/> 
                     </a>
                     <a class="links_products" href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product1.aspx">    
                     <h4> Operating Systems</h4>
                     <p><span>$35.00</span></p>
                     </a>
             
                </td>
                <td class="img-cell">
                    <a href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product2.aspx"> 
                    <img src="../../Images/University_Products/textbook_2.png" /> </a>
                    <a class="links_products" href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product2.aspx">       
                    <h4> Murach's HTML5 and CSS3</h4>
                    <p><span>$26.00</span></p>
                    </a>
                </td>

                <td class="img-cell">
                    <a href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product3.aspx"> 
                    <img src="../../Images/University_Products/textbook_3.png" /> 
                    </a>
                    <a class="links_products" href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product3.aspx">    
                    <h4>Head First Java, 2nd Edition</h4>
                    <p><span>$24.00</span></p>
                    </a>
                </td>
            </tr>
        </table>
    </div>

    <div class="textbook-row">
        <table>
            <tr class="first-row">
                <td class="img-cell">
                    <a href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product4.aspx">
                    <img src="../../Images/University_Products/textbook_4.jpg" /> 
                    </a>
                    <a class="links_products" href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product4.aspx"> 
                    <h4> Data Structure & Algorithm</h4>
                    <p><span>$35.00</span></p>
                     </a>

                </td>
                <td class="img-cell">
                    <a href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product5.aspx">
                    <img src="../../Images/University_Products/textbook_5.jpg" /> 
                    </a>
                    <a class="links_products" href="http://isys420project03.azurewebsites.net/Web_Pages/University/University_Product5.aspx"> <h4> Project Management</h4>
                    <p><span>$26.00</span></p>
                    </a>
                </td>

            </tr>
        </table>
    </div>

</asp:Content>

