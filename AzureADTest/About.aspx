<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AzureADTest.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <asp:LoginView runat="server" ViewStateMode="Disabled">
        <LoggedInTemplate>
            <h1 class="navbar-text">Hello, <%: Context.User.Identity.Name  %>!</h1>
            <h1>
                <asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutText="Sign out"
                    LogoutPageUrl="~/" OnLoggingOut="Unnamed_LoggingOut" />
            </h1>
        </LoggedInTemplate>
        <AnonymousTemplate>
            <div class="btn btn-outline-primary">
             <asp:LinkButton Text="Sign in" runat="server" OnClick="Unnamed_Click" />
            </div>
        </AnonymousTemplate>
    </asp:LoginView>
</asp:Content>
