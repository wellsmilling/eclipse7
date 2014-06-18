<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
 
 
 
        <div class="body">
            <h1>Form page !</h1>

 
<span style="float: right">
    <a href="?lang=en">en</a> 
    | 
    <a href="?lang=fr">fr</a>
</span>
            
 
            <form:form method="post" action="addContact">
<%-- 		<table>
			<tr>
				<td><label> <strong><spring:message
								code="label.firstName" /></strong>
				</label></td>
				<td><input name="firstName" /></td>
			</tr>
			<tr>
				<td><label> <strong><spring:message
								code="label.lastName" /></strong>
				</label></td>
				<td><input name="lastName" /></td>
			</tr>
			<tr>
				<spring:message code="label.submit" var="labelSubmit"></spring:message>
				<td colspan="2"><input type="submit" value="${labelSubmit}" /></td>
			</tr>
		</table> --%>
		
		<table>
    <tr>
        <td><form:label path="firstname"><strong><spring:message
								code="label.firstName" /></strong></form:label></td>
        <td><form:input path="firstname" /></td> 
    </tr>
    <tr>
        <td><form:label path="lastname"><strong><spring:message
								code="label.lastName" /></strong></form:label></td>
        <td><form:input path="lastname" /></td>
    </tr>
   
    <tr>
				<spring:message code="label.submit" var="labelSubmit"></spring:message>
				<td colspan="2"><input type="submit" value="${labelSubmit}" /></td>
			</tr>
</table>  
		
		
	</form:form>
        </div>
 
 
 
    </tiles:putAttribute>
</tiles:insertDefinition>