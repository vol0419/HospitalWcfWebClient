<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HospitalWcfWebClient.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <style type="text/css">
   body { background: #99ccff !important; }
   .row { background: #e6e6e6 !important;
                height: 1005px;
            }/* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
</style>

    <div class="row">
        <div class="d-flex col-md-10">
            <div style="background-color: #6699FF; color: #000000; font-size: xx-large">Patient Registration<br />
            </div>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label6" runat="server" Text="ID"></asp:Label>
                <input id="Text7" runat="server" type="text" /></p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <input id="Text1" runat="server" type="text" /></p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
                <input id="Text2" runat="server" type="text" /></p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Pesel"></asp:Label>
                <input id="Text3" runat="server" type="text" /></p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Birthday"></asp:Label>
                <input id="Text6" runat="server" type="date" /></p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                <input id="Text5" runat="server" type="text" /></p>
            <p>
                <asp:Label ID="labelParseMessage" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
            </p>
            <p>
                <asp:button type="button" ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary" Text="Insert" Height="50px" Width="170px" />
                <asp:button type="button" ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-info " Text="Search" Height="50px" Width="170px" />
                <asp:button type="button" ID="Button3" runat="server" OnClick="Button3_Click" class="btn btn-success " Text="Update" Height="50px" Width="170px" />
                <asp:button type="button" ID="Button4" runat="server" OnClick="Button4_Click" class="btn btn-danger" Text="Delete" 
                    OnClientClick="return confirm('Are you sure to delete?');" Height="50px" Width="170px"/>
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" Width="500px" CssClass="table table-striped">
                </asp:GridView>
                </p>
        </div>
    </div>

</asp:Content>
