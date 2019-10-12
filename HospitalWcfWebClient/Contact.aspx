<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HospitalWcfWebClient.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <style type="text/css">
   body { background: #e6e6e6 !important; }/* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
</style>
    <h2><%: Title %></h2>
    <address>
        One Hospital Way<br />
        Hosmon, WA 98052-6399<br />
        <abbr title="Phone">Phone:</abbr>
        501 501 501
    </address>

    <address>
        <strong>Mail:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Office:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
