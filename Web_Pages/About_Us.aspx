<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="About_Us.aspx.cs" Inherits="Web_Pages_About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="AboutUs_StyleSheet.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <table>
        <tr>
            <td>
                <p> CopyPlus opened in November 1988, 
                    when three Texas A&M students decided that the students, 
                    faculty and staff needed a better solution for their copying and duplicating needs. 
                    We now employ close to 50 people, and have a satellite location at the MSC on campus.
                </p>
                <p> Our service include university printing, company printing, and individual printing. 
                    There are two locations.
                </p>
            </td>
            <td class="empty-col"></td>
            <td>
                <img src="../Images/About_Us/AboutUs_1.jpg"/>
            </td>
        </tr>
        <tr class="empty-row"></tr>
        <tr>
            <td>
                <img src="../Images/About_Us/AboutUs_map_1.jpg"/>
            </td>
            <td class="empty-col"></td>
            <td>
                <img src="../Images/About_Us/AboutUs_map_2.jpg"/>
            </td>
        </tr>
        </table>


</asp:Content>

