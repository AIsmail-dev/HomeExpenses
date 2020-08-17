<%@ Page Title="تغيير الشهر الحالى" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="ChangeCurrentMonth.aspx.cs" Inherits="HomeExpenses.Web.ChangeCurrentMonth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .month-editbackground {
      
            background: url('../css/img/month-img.jpg');
            
            background-position: center center;
            background-size:cover;
            background-attachment:fixed;
        }
        .month-editbackground__wrapper{
            background-color:rgb(0, 0, 0,0.9);
            padding:130px 0;
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
        option {
            color:#000
        }
    </style>


    <div class="month-editbackground">
    <div class="month-editbackground__wrapper">
    <div class="container">
    <h1 class="text-center pb-5" style="color: white;
    font-weight: 800;">تغيير الشهر الحالى</h1>
    <div class="row no-gutters mx-auto">
        <div class="col-md-8">
            <div class="form-group">
                <label class="control-label">شهر المدفوع</label>
                <select id="slcRelatedMonth" name="slcRelatedMonth" runat="server" class="form-control">
                    <option value="1-7-2020">7 / 2020</option>
                    <option value="1-8-2020">8 / 2020</option>
                    <option value="1-9-2020">9 / 2020</option>
                    <option value="1-10-2020">10 / 2020</option>
                    <option value="1-11-2020">11 / 2020</option>
                    <option value="1-12-2020">12 / 2020</option>
                    <option value="1-1-2021">1 / 2021</option>
                    <option value="1-2-2021">2 / 2021</option>
                    <option value="1-3-2021">3 / 2021</option>
                    <option value="1-4-2021">4 / 2021</option>
                    <option value="1-5-2021">5 / 2021</option>
                    <option value="1-6-2021">6 / 2021</option>
                    <option value="1-7-2021">7 / 2021</option>
                    <option value="1-8-2021">8 / 2021</option>
                    <option value="1-9-2021">9 / 2021</option>
                    <option value="1-10-2021">10 / 2021</option>
                    <option value="1-11-2021">11 / 2021</option>
                    <option value="1-12-2021">12 / 2021</option>
                </select>
            </div>
            <div class="form-group pt-5">
                <asp:Button id="btnSave" runat="server" Text="حفظ" OnClick="BtnSave_Click" class="btn btn-success pr-4 pl-4"/>
                <a href="AllExpenses.aspx" class="btn btn-info mr-3 pr-4 pl-4">العودة</a>
            </div>
        </div>
    </div>
        </div>
        </div>
    </div>
</asp:Content>
