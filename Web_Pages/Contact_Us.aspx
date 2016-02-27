<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="Web_Pages_Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="ContactUs_StyleSheet.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="contact-page">    
    <div id="contact_img">
        <img src="../Images/Contact_Us/ContactUs_background.jpg" />
        <div id="contact_label">
            <h2>Contact Us</h2>
            <p>We’re here to help! Contact us with any question and we will do our best to reply as soon as we can. </p>
        </div>
    </div>

    <div id="contact-form">
        <div id="contact-form-content">
            <div id="contact-info">
                <table>
                    <tr>
                        <td class="empty-col"></td>
                        <td class="empty-col"></td>                                                
                        <td><b>Mailing Address:</b></td>

                        <td class="empty-col"></td>
                        <td class="empty-col"></td>                                                                             
                        <td><b>Write to Us:</b></td>
                    </tr>
                    
                    <tr>
                        <td class="empty-col"></td>                        
                        <td class="empty-col"></td>                        
                        <td>
                            2222 Texas Ave.<br />
                            College Station, TX, 77840.<br /> <br />
            
                            <b>Call us 24/7:</b> <br /> 
                            Tel: 123-456-7890<br /> <br /> 
            
                            <b>Or email us at:</b><br/>
                            info@mysite.com<br /><br/>
                            <b>Questions? See Our <a href="#"> FAQ</a></b><br />                           
                        </td>
                        

                        <td class="empty-col"></td>
                        <td class="empty-col"></td>             
                        <td> 
                            <div id="contact-input">
                               <input class="inline-input" type="text" name="name" placeholder="Name" />
                               <input class="inline-input" type="email" name="email" placeholder="Email" />
                               <textarea rows="10" cols="50" placeholder="Message"></textarea>
                               <br />
                               <input class="submit-btn" type="submit" value="Submit"/>
                            </div>
                        </td>                            
                    </tr>
                        
                        
                </table>

        </div>

    </div>
</div>

</asp:Content>

