<%@ Page Title="" Language="C#" MasterPageFile="~/Web_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Customer_Account.aspx.cs" Inherits="Web_Pages_Customer_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CustomerAccount_StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
         
 

<div id="container">
    <form  action="mysuperscript.php" autocomplete="on"> 
     
        
     <div id="Log_in">
				<h1>Log in</h1> 
				
				<p> 
					<label for="username" class="uname" data-icon="u" > Your email or username </label>
					<input id="username" name="username" required="required" type="text" "/>
				</p>
				<p> 
					<label for="password" class="youpasswd" data-icon="p"> Your password </label>
					<input id="password" name="password" required="required" type="password" " /> 
				</p>
				<p class="keeplogin"> 
					<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
					<label for="loginkeeping">Keep me logged in</label>
				</p>
				<p class="buttons"> 
					<input type="submit" class="s_buttons" value="Login" /> 
				</p>
				
				
                </div> 
	    </form>
</div>
        
<div id="register" class="animate form">
	<form  action="mysuperscript.php" autocomplete="on"> 
                <div id="registration_form">
				<h1> Sign up </h1> 
				<p> 
					<label for="usernamesignup" class="uname" data-icon="u">Your username</label>
					<input id="usernamesignup" name="usernamesignup" required="required" type="text"  />
				</p>
				<p> 
					<label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
					<input id="emailsignup" name="emailsignup" required="required" type="email"/> 
				</p>
				<p> 
					<label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
					<input id="passwordsignup" name="passwordsignup" required="required" type="password" />
				</p>
				<p> 
					<label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
					<input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" />
				</p>
				<p class="buttons"> 
					<input type="submit" class="s_buttons" value="Sign up"/> 
				</p>
			 								
		    </div>
		</form>
</div>

				

  


</asp:Content>

