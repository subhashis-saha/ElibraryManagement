<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ElibraryManagement.adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150" src="Image/adminuser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="p-2 border-primary">
                                    <label>Admin ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtadid" runat="server" placeholder="Admin ID"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="p-2 border-primary">
                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>


                                <div class="p-2 border-primary">
                                    <div class="d-grid gap-1">
                                        <asp:Button class="btn btn-outline-primary" ID="Button2" runat="server" Text="Sign Up" OnClick="Button2_Click" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>
</asp:Content>
