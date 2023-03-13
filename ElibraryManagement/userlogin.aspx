<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ElibraryManagement.userlogin" %>

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
                                    <img src="Image/generaluser.png" width="150" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
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
                                    <label>Member ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtmi" runat="server" placeholder="Member ID"></asp:TextBox>
                                    </div>

                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>


                                <div class="mx-auto" style="width: fit-content">
                                </div>

                                <div class="p-2 border-primary">
                                    <div class="d-grid gap-1">
                                        <asp:Button class="btn btn-outline-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                </div>

                                <div class="p-2 border-primary">
                                    <div class="d-grid gap-1">
                                        <asp:Button class="btn btn-outline-primary" ID="Button2" runat="server" Text="Sign Up" />
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
