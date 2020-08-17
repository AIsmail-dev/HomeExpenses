<%@ Import Namespace="HomeExpenses.Data" %>

<%@ Page Title="جميع المستخدمين" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="AllUsers.aspx.cs" Inherits="HomeExpenses.Web.AllUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .user-background {
      
            background: url('../css/img/user.jpg');
            
            background-position: center center;
            background-size:cover;
            background-attachment:fixed;
        }
        .user-background-wapper{
            background-color:rgb(0, 0, 0,0.9);
            padding:130px 0;
        }

    </style>


    <div class="user-background">
        <div class="user-background-wapper">
    <h1 class="text-center pb-5" style="color: white;
    font-weight: 800;">المستخدمين</h1>
        </div>
        </div>
    <div class="container">
    <p class="pt-3">
        <a href="addUser.aspx" class="btn btn-success">اضافة مستخدم</a>
    </p>

    <table class="table table-bordered table-responsive-stack table-striped">
        <thead>
            <tr class="thead-dark">
                <th>اسم المستخدم
                </th>
                <th>اسم البريد الالكترونى
                </th>
                <th>خيارات
                </th>
            </tr>
        </thead>
        <tbody>
            <% foreach (var user in UsersList)
                { %>
            <tr>
                <td><%= user.Name %>
                </td>
                <td><%= user.Email %>
                </td>
                <td><a href="addUser.aspx?userId=<%: user.UserId %>" class="btn btn-primary">تعديل المستخدم</a>
                </td>
            </tr>
            <%} %>
        </tbody>
    </table>
        </div>
</asp:Content>
