<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="BootCampExercise.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<br/>
	<table>
		<tr>
			<td>
				<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			</td>
			<td><asp:Button ID="CreateEvent" runat="server" Text="Create Event" OnClick="CreateEvent_Click" /> </td>
		</tr>
		
	</table>
	<br/>
	<asp:Label ID="Label1" runat="server" Text="List of Events"></asp:Label>
	<asp:ListView ID="eventList" runat="server"  DataKeyNames="id" GroupItemCount="1"
	              ItemType="BootCampExercise.Models.EventInformation" SelectMethod="GetEvents">
		<GroupTemplate>
			<tr id="itemPlaceholderContainer" runat="server">
				<td id="itemPlaceholder" runat="server"></td>
			</tr>
		</GroupTemplate>
		<ItemTemplate>
			<td runat="server">
				<table>
					<tr>
						<td  style="vertical-align: top; text-align:left;">
							<%#: Item.Name %>
						</td>
						<td  style="vertical-align: top; text-align:left;">
							<a href="Signup.aspx?eventId=<%#:Item.Id%>">SingUp</a>
						</td>
					</tr>
				</table>
			</p>
			</td>
		</ItemTemplate>
		<LayoutTemplate>
			<table style="width:100%;">
				<tbody>
				<tr>
					<td>
						<table id="groupPlaceholderContainer" runat="server" style="width:100%">
							<tr id="groupPlaceholder"></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr></tr>
				</tbody>
			</table>
		</LayoutTemplate>
		<EmptyDataTemplate>
			<table >
				<tr>
					<td>No data was returned.</td>
				</tr>
			</table>
		</EmptyDataTemplate>
	</asp:ListView>
</asp:Content>
