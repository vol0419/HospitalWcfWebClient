<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HospitalWcfWebClient.About" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
   body { background: #99ccff !important; }
   .row { background: #e6e6e6 !important; }/* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
</style>
     <div class="row">
        <div class="col-md-10">
            <div style="background-color: #6699FF; color: #000000; font-size: xx-large">Patient Visits<br />
            </div>
            <p>
                &nbsp;</p>
            <p>
                Patient ID<input id="Text7" runat="server" type="text" value="1003" /></p>
            <p>
                Recognition<input id="Text1" runat="server" type="text" /></p>
            <p>
                Recommendation<input id="Text2" runat="server" type="text" /></p>
            <p>
                Doctor<input id="Text3" runat="server" type="text" /></p>
            <p>
                Date of visit<input id="Text6" runat="server" type="date" /></p>
            <p>
                Visit ID<input id="Text5" runat="server" type="text" /></p>
            <p>
                <asp:button type="button" ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary" Text="Insert" Height="50px" Width="170px" />
                <asp:button type="button" ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-info " Text="Search" Height="50px" Width="170px" />
                <asp:button type="button" ID="Button4" runat="server" OnClick="Button4_Click" class="btn btn-danger" Text="Delete" 
                    OnClientClick="return confirm('Are you sure to delete?');" Height="50px" Width="170px"/>
            </p>
            <p>
                <asp:Label ID="labelParseMessage" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
            </p>
                <asp:GridView ID="GridView1" runat="server" Width="958px" CssClass="table table-striped" Height="221px">
                </asp:GridView>
        </div>
    </div>
</asp:Content>
