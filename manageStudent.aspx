<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manageStudent.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
            <div class="col-md-1">

            </div>
          <div class="col-md-10">
            <!-- general form elements -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Manage Student</h3>
              </div>
              <!-- /.card-header -->
   
              <!-- form start -->
              
                <div class="card-body">
                   
                  <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered table-hover dataTable"  AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="1238px" AllowPaging="True" AllowSorting="True">
                      <Columns>
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                          <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                          <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
                          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                          <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                          <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
                          <asp:BoundField DataField="Birth" HeaderText="Birth" SortExpression="Birth" />
                          <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                      </Columns>
                    </asp:GridView>
       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDemoConnectionString %>" SelectCommand="SELECT * FROM [tbl_student]" UpdateCommand="update tbl_student set Name=@Name, Adress=@Adress, Phone=@Phone, Gender=@Gender, Birth=@Birth, Date=@Date where ID=@ID" DeleteCommand="delete from tbl_student where ID=@ID"></asp:SqlDataSource>
       
                 </div>
  
           
     
            </div>
         <div class="col-md-1">

            </div>
          </div>
        
             
    </section>
</asp:Content>

