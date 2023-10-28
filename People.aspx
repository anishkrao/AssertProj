<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="People.aspx.cs" Inherits="AssertProj.People" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            
        
            var m = <%= males %>;
            var f = <%= females %>;
            var b = <%= boys %>;
            var g = <%= girls %>;
            var ctx = document.getElementById('donutChart').getContext('2d');
            var donutChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Males', 'Females', 'Boys', 'Girls'],
                    datasets: [{
                        data: [m, f, b, g],
                        backgroundColor: ['#FF5733', '#33FF57', '#3357FF', '#FF33AA'],
                    }]
                },
                options: {
                    cutoutPercentage: 70,
                    responsive: false,
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center pt-3">
        <div class="row" >
            <div class="col-md-3">
                <img src="images/man.png" width="100px" height="100px" />
            </div>
            <div class="col-md-3">
                <img src="images/woman.png" width="100px" height="100px" />
            </div>
            <div class="col-md-3">
                <img src="images/user.png" width="100px" height="100px" />
            </div>
            <div class="col-md-3">
                <img src="images/girl.png" width="100px" height="100px" />
                
            </div>
        </div>
        <div class="row" >
            <div class="col-md-3">
                
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-md-3">
                
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-md-3">
                
                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-md-3">
                
                <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row pt-3">
            <div class="col-md-12 text-center">
                <canvas id="donutChart" width="300" height="300"></canvas>
                
            </div>
        </div>
    </div>
   
</asp:Content>
