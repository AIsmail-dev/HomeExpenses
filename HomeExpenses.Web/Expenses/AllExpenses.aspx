<%@ Import Namespace="HomeExpenses.Data" %>

<%@ Page Title="جميع المدفوعات" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="AllExpenses.aspx.cs" Inherits="HomeExpenses.Web.AllExpenses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .table td, .table th {
            padding: 0 2px 0 2px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>المدفوعات</h1>
    <p>
        <a href="addExpense.aspx">اضافة مدقوع</a>
        <a href="ChangeCurrentMonth.aspx">تغيير الشهر الحالى</a>
    </p>
    <table class="table">
        <thead>
            <tr>
                <th>اجمالى قيمة المدفوعات
                </th>
                <th>المبلغ المتبقى
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <label id="lblTotalPayed" runat="server"></label>
                </td>
                <td>
                    <label id="lblRest" runat="server"></label>
                </td>
            </tr>
        </tbody>
    </table>
    <% foreach (var itemExpense in ItemExpensesList)
        { %>
    <table class="table" style="border-style: inset; margin-bottom: 10px;">
        <thead>
            <tr>
                <th>اسم الصنف
                </th>
                <th>السعر الاقصى للصنف
                </th>
                <th>اجمالى قيمة المدفوع من الصنف
                </th>
                <th>المتبقى من رصيد الصنف
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= itemExpense.ItemName %>
                </td>
                <td><%= itemExpense.ItemPrice %>
                </td>
                <td><%= itemExpense.ExpensesPrices %>
                </td>
                <td><%= itemExpense.ItemPrice - itemExpense.ExpensesPrices %>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <table class="table" style="border-style: groove; margin-bottom: 5px;">
                        <thead>
                            <tr>
                                <th>اسم المدفوع
                                </th>
                                <th>سعر المدفوع
                                </th>
                                <th>الشهر
                                </th>
                                <th>تاريخ التسجيل
                                </th>
                                <th>تاريخ اخر تعديل
                                </th>
                                <th>التفاصيل
                                </th>
                                <th>تم السداد
                                </th>
                                <th>خيارات
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <% foreach (var expense in itemExpense.ItemExpensesList)
                                { %>
                            <tr>
                                <td><%= expense.Name %>
                                </td>
                                <td><%= expense.Price %>
                                </td>
                                <td><%= expense.RelateToMonth.ToString("M/yyyy") %>
                                </td>
                                <td><%= expense.CreatedAt.ToString("d/M/yyyy") %>
                                </td>
                                <td><%= expense.UpdatedAt.ToString("d/M/yyyy") %>
                                </td>
                                <td><%= expense.Description %>
                                </td>
                                <td><%= expense.Payed == true ? "نعم" : "لا" %>
                                </td>
                                <td><a href="addExpense.aspx?expenseId=<%: expense.ExpenseId %>">تعديل المدفوع</a>
                                </td>
                            </tr>
                            <%} %>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <%} %>
</asp:Content>
