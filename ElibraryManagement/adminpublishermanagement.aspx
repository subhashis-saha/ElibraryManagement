<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="ElibraryManagement.adminpublishermanagement" %>

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
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Image/publisher.png" width="80" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
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
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="Publisher"></asp:TextBox>
                                        <asp:Button class="btn btn-outline-info" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Publisher Name"></asp:TextBox>
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

            <div class="col-md-7">
                <div class="card card-body">



                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Publisher List</h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-success table-striped-columns" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                    <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                </div>

            </div>
        </div>


    </div>
</asp:Content>
