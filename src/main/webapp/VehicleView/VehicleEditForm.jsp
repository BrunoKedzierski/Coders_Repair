<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 13.08.18
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="../WEB-INF/fragments/header.jsp"/>


<h1 style="text-align: center;">Edit vehicle</h1>
<hr>
<form action="/vehicle-add" method="post" >
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Car id</label>
        <input type="text" class="form-control" value="${id}" name="model" required readonly>
        </label>

    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Model</label>
        <input type="text" class="form-control" placeholder="Model" name="model" required>
        </label>

    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Brand</label>
        <input type="text" class="form-control" placeholder="Brand" name="brand" required>
        </label>
    </div>

    <div class="form-group" style="margin-left: auto;margin-right: auto;" >
        <label>Production</label>
        <input  class="form-control" placeholder="Year" type="number" min="1970" max="2018" step="1" name="year" required>
        </label>

    </div>

    <div class="form-group" style="margin-left: auto;margin-right: auto;" >
        <label>Next checkup</label>
        <input  class="form-control" placeholder="Checkup date" type="date" name="checkup" required>
        </label>

    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect1">Owner id</label>
        <select class="form-control" id="exampleFormControlSelect1" name="id" required>
            <c:forEach var="customer" items="${customers}">
                <option value="${customer.id}">Id:${customer.id} - ${customer.name} ${customer.surname}</option>
            </c:forEach>
        </select>
    </div>
    <button type="submit" class="btn-lg btn-primary" style="float: right" value="submit">Edit      <i class="fas fa-plus"></i></button>
</form>
<jsp:include page="../WEB-INF/fragments/footer.jsp"/>
</html>