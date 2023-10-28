<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="AssertProj.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center pt-3">
        <div class="row" >
            <div class="col-md-3">
                <img src="images/man.png" width="100px" height="100px" />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-3">
                <img src="images/woman.png" width="100px" height="100px" />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-3">
                <img src="images/user.png" width="100px" height="100px" />
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-3">
                <img src="images/girl.png" width="100px" height="100px" />
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row justify-content-center pt-3">
            <div class="col-md-3">
                <asp:LinkButton ID="LinkButton1" class="btn btn-secondary" runat="server" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>
