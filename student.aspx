<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="Users" %>

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
                <h3 class="card-title">Add Studnet</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              
                <div class="card-body">
                   
                    <div class="form-group">
                    <label for="name">Student Name </label>
                   <%-- <input  type="text"  runat="server" class="form-control" id="name" placeholder="full name"/>--%>
                      <asp:TextBox ID="txtStdName" class="form-control" runat="server" placeholder="Student Name" required=""></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label for="name">Address</label>
                   <%-- <input  type="text"  runat="server" class="form-control" id="name" placeholder="full name"/>--%>
                      <asp:TextBox ID="txtAddress" class="form-control" runat="server" placeholder="Address" ></asp:TextBox>
             </div>
                    <div class="form-group">
                    <label for="Phone">Phone Number</label>
                    <%--<input  type="text"  runat="server" class="form-control" id="username" placeholder="username"/>--%>
                    <asp:TextBox ID="txtPhone" class="form-control" runat="server" placeholder="Address"></asp:TextBox>
                  </div>

                     <div class="form-group">
                    <label for="exampleInputEmail1">Gender</label>
                    <%--<input  type="password"  runat="server" class="form-control" id="password" placeholder="password"/>--%>
                         <asp:DropDownList ID="txtGender" runat="server" class=" form-control">
                            <asp:ListItem Value="">Please Select</asp:ListItem>  
                              <asp:ListItem Value="Male">Male</asp:ListItem>  
                              <asp:ListItem Value="Female">Female</asp:ListItem>  
                         </asp:DropDownList>
                  </div>
                
                       <div class="form-group">
                            <asp:DropDownList ID="txtMarital" runat="server" class=" form-control">
                            <asp:ListItem Value="">Marital Status</asp:ListItem>  
                              <asp:ListItem Value="Single">Single</asp:ListItem>  
                              <asp:ListItem Value="Married">Married</asp:ListItem>  
                         </asp:DropDownList>

                           <div class="form-group">
                    <label for="birth">Place of Birth</label>
                    <%--<input  type="text"  runat="server" class="form-control" id="username" placeholder="username"/>--%>
                    <asp:TextBox ID="txtbirth" class="form-control" runat="server" placeholder="Place of Birth"></asp:TextBox>
                  </div>

                    <div class="form-group">
                  <label>Date:</label>
                    <div class="input-group date" id="reservationdate" data-target-input="nearest">
                       <%-- <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate">--%>
                        <asp:TextBox ID="txtDate" class="form-control datetimepicker-input"  data-target="#reservationdate"  runat="server" placeholder="Place of Birth" ></asp:TextBox>
                        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                    </div>

                          
                </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
   <%--               <button type="submit" runat="server" name="button" id="button" class="btn btn-primary" onclick=""></button>--%>
                  <asp:Button ID="Submit" class="btn btn-success"  runat="server" Text="Show" OnClick="butttonClick" ValidationGroup="Required" />
                </div>
       
            </div>
  
           
     
            </div>
         <div class="col-md-1">

            </div>
          </div>
        
             
    </section>
</asp:Content>

