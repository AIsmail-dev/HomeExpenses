<%@ Import Namespace="HomeExpenses.Data" %>

<%@ Page Title="جميع الاصناف" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="AllItems.aspx.cs" Inherits="HomeExpenses.Web.AllItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>

        .items-bacground {
            background: url('../css/img/items.jpg');
            
            background-position: center center;
            background-size:cover;
            background-attachment:fixed;
        }

        .items-bacground-wapper {
            background-color:rgb(0, 0, 0,0.8);
            padding:200px 0;
        }

        @media (min-width: 280px) and (max-width: 767.98px) {
        .table td,.table .thead-dark th {
            padding:4px !important;
            font-size:9px;
        }
        .btn-primary {
            font-size:7px;
        }
        }
        @media (min-width: 767.98px) {
        .table td,.table .thead-dark th {
            padding:10px 6px !important;
            font-size:16px;
        }
        .btn-primary {
            font-size:12px;
        }
        }

    </style>
    <div class="items-bacground">
        <div class="items-bacground-wapper">
    <h1 class="text-center" style="color: white;
    font-weight: 800;">الاصناف</h1>
        </div>
        </div>
    
    <div class="container">
    <p class="pt-5 pb-5">
        <a href="addItem.aspx" class="btn btn-success">اضافة صنف</a>

    </p>
    <table class="table table-bordered table-responsive-stack table-striped">
        <thead>
            <tr class="thead-dark">
                <th>اسم الصنف
                </th>
                <th>نوع الصنف
                </th>
                <th>سعر الصنف
                </th>
                <th>صنف افتراضى
                </th>
                <th>مدة الشهور
                </th>
                <th>خيارات
                </th>
            </tr>
        </thead>
        <tbody>
            <% foreach (var item in ItemsList)
                { %>
            <tr>
                <td><%= item.Name %>
                </td>
                <td><%= item.ItemTypeId %>
                </td>
                <td style="    color: forestgreen;
    font-weight: 700;"><%= item.Price %>
                    SAR
                </td>
                <td><%= item.DefaultIncluded ? "نعم" : "لا" %>
                </td>
                <td><%= item.MonthsPeriod %>
                </td>
                <td><a href="addItem.aspx?itemId=<%: item.ItemId %>" class="btn btn-primary">تعديل الصنف</a>
                </td>
            </tr>
            <%} %>
        </tbody>
    </table>
        </div>
 
</asp:Content>
