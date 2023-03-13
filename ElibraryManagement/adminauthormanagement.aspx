<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ElibraryManagement.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Image/writer.png" width="80" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="Author ID"></asp:TextBox>
                                        <asp:Button class="btn btn-outline-info" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <div class="col-md-4 d-grid gap-2 col-4 mx-auto">
                                <asp:Button class="btn btn-outline-primary" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-md-4 d-grid gap-2 col-4 mx-auto">
                                <asp:Button class="btn btn-outline-success btn-lg" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-md-4 d-grid gap-2 col-4 mx-auto">
                                <asp:Button class="btn btn-outline-danger btn-lg" ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
                            </div>
                        </div>


                    </div>



                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-6">
                <div class="card card-body">



                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Author List</h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>



                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                    <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                </div>

            </div>
        </div>


    </div>
</asp:Content>
