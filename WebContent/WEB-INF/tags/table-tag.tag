<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ attribute name="id" required="true" rtexprvalue="false"%>
<%@ attribute name="searchFieldEnable" required="true" rtexprvalue="false"%>

<!-- If you want to enable Filter on the table -->
<c:if test="${searchFieldEnable == true}">
	<div id="content-search" class="content-search filter">
		<label for="searchTextField"><fmt:message key="table.search" /></label>
		<input type="text" name="searchTextField" id="searchTextField" size="35" class="text ui-widget-content ui-corner-all" />
		<button id="filterClearOne" class="ui-state-default ui-corner-all icon-button">
			<fmt:message key="table.clean-filter" />
		</button>
	</div>
</c:if>
<table id="${id}" class="ui-widget ui-widget-content display datatable">
	<thead>
		<tr class="ui-widget-header ">
			<jsp:doBody />
		</tr>
	</thead>
	<tbody>
		<tr style="display: none;"></tr>
	</tbody>
</table>
<div id="pagerOne" class="content-table-pagination" align="right">
	<a href="#" class="first">
		<fmt:message key="table.pagination.first" />
	</a>
	&nbsp;
	<a href="#" class="prev">
		<fmt:message key="table.pagination.previous" />
	</a>
	&nbsp;
	<input type="text" class="pagedisplay" size="3" readonly="readonly" />
	&nbsp;
	<a href="#" class="next">
		<fmt:message key="table.pagination.next" />
	</a>
	&nbsp;
	<a href="#" class="last">
		<fmt:message key="table.pagination.last" />
	</a>
	&nbsp;
	<select class="pagesize text ui-widget-content ui-corner-all">
		<option selected="selected" value="10">10</option>
		<option value="20">20</option>
		<option value="30">30</option>
		<option value="40">40</option>
	</select>
</div>