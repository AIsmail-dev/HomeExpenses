<%@ Page Title="اضافة مستخدم" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="HomeExpenses.Web.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .user-editbackground {
      
            background: url('../css/img/user.jpg');
            
            background-position: center center;
            background-size:cover;
            background-attachment:fixed;
        }
        .user-editbackground__wrapper{
            background-color:rgb(0, 0, 0,0.9);
            padding:100px 0;
        }
        .form-control:focus {
            color: #495057;
            background-color: transparent !important;
            border-color: #80bdff;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);
            color: #fff;
        }
        label {
            color:#fff;
        }
        .form-control {
            border-radius:unset;
            background-color: transparent !important;
            color:#fff;
            border: none;
            border-right :1px solid #fff !important;
            border-bottom:1px solid #fff !important;
        }
    </style>


    <div class="user-editbackground">
    <div class="user-editbackground__wrapper">
    <div class="container">
    <h1 class="text-center pb-5" style="color: white;
    font-weight: 800;">اضافة مستخدم</h1>
    <div class="row no-gutters mx-auto">
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">اسم المستخدم</label>
                <input id="txtName" runat="server" class="form-control" />
            </div>
                    </div>
                <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">اسم البريد الالكترونى</label>
                <input id="txtEmail" runat="server" class="form-control" />
            </div>
                    </div>
                <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">كلمة السر</label>
                <input id="txtPassword" type="password" runat="server" class="form-control" />
            </div>
                    </div>
                <div class="col-md-12">
            <div class="form-group">
                <asp:Button id="btnSave" runat="server" Text="حفظ" OnClick="BtnSave_Click" class="btn btn-success pr-4 pl-4"/>
                <a href="AllItems.aspx" class="btn btn-info mr-3 pr-4 pl-4">العودة</a>
            </div>  
                    </div>
        </div>
    </div>
    </div>
        </div>
    </div>
    </div>
</asp:Content>
