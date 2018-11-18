<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Data Edit &amp; Load</h1>
        <p class="lead">Konkurs za poziciju Junior .Net Developera</p>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Izaberite pregled"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True">SQL DATABASE</asp:ListItem>
                <asp:ListItem>JSON</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Promijeni" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="Id" DataSourceID="bazaPodataka_Proizvodi" Height="210px" Width="613px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="factory" HeaderText="factory" SortExpression="factory" />
                    <asp:BoundField DataField="retailer" HeaderText="retailer" SortExpression="retailer" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="bazaPodataka_Proizvodi" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM [Proizvod] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Proizvod] ([name], [description], [category], [factory], [retailer], [price]) VALUES (@name, @description, @category, @factory, @retailer, @price)" SelectCommand="SELECT * FROM [Proizvod]" UpdateCommand="UPDATE [Proizvod] SET [name] = @name, [description] = @description, [category] = @category, [factory] = @factory, [retailer] = @retailer, [price] = @price WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="factory" Type="String" />
                    <asp:Parameter Name="retailer" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="factory" Type="String" />
                    <asp:Parameter Name="retailer" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />

            <script>
                function checking() {
                    let x = document.getElementById('upisiDiv');
                   

                    x.style.display = "block";
                    }
                </script>
            <asp:CheckBox ID="CheckBox1" runat="server" type="checkbox" Text="Dodaj novi proizvod" OnClick="checking()" />
            <br />
            <div style="display:none" id="upisiDiv">

                
                <div style="height: 246px; margin-top: 26px" id="divUpisi">
                    <table style="width: 100%; height: 104px;">
                        <tr>
                            <td style="width: 197px">Naziv</td>
                            <td>
                                <asp:TextBox ID="naziv" runat="server"></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td style="width: 197px; height: 20px">Opis</td>
                            <td style="height: 20px" id="opis">
                                <asp:TextBox ID="opis" runat="server"></asp:TextBox>
                            </td>
                           
                        </tr>
                        <tr>
                            <td style="width: 197px; height: 20px">Kategorija</td>
                            <td style="height: 20px" id="category">
                                <asp:TextBox ID="kategorija" runat="server"></asp:TextBox>
                            </td>
                           
                        </tr>
                         <tr>
                            <td style="width: 197px; height: 20px">Fabrika</td>
                            <td style="height: 20px">
                                <asp:TextBox ID="fabrika" runat="server"></asp:TextBox>
                             </td>
                           
                        </tr>
                          <tr>
                            <td style="width: 197px; height: 20px">Prodavac</td>
                            <td style="height: 20px">
                                <asp:TextBox ID="prodavac" runat="server"></asp:TextBox>
                              </td>
                           
                        </tr>

                          <tr>
                            <td style="width: 197px; height: 20px">Cijena</td>
                            <td style="height: 20px">
                                <asp:TextBox ID="cijena" runat="server"></asp:TextBox>
                              </td>
                           
                        </tr>
                    </table>
                    <asp:Button ID="Button1" runat="server" Height="67px" OnClick="Button1_Click" Text="Upisi" Width="121px" />
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
