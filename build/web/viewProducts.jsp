<%-- 
    Document   : viewProducts
    Created on : Sep 26, 2019, 8:08:09 AM
    Author     : quochuy
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Product</title>
    </head>
    <body>
        <table border="1" cellpadding="5" cellspacing="5">
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
            
            <c:forEach var="product" items="${productList}">
                <tr>
                    <td>${product.productID}</td>
                    <td>${product.name}</td>
                    <td>${product.quantity}</td>
                    <td>${product.price}</td>
                </tr>
            </c:forEach>
        </table>
        
        <%-- For displaying Page number.
        The when condition does not display a link for the current page --%>
        <table border="1" cellpadding="5" cellspacing="5">
            <tr>
                <c:forEach begin="1" end="${noOfPages}" var="i">
                    <c:choose>
                        <c:when test="${currentPage eq i}">
                        <td>${i}</td>
                        </c:when>

                        <c:otherwise>
                            <td><a href="product.do?page=${i}">${i}</a></td>         
                        </c:otherwise>
                    </c:choose>
                    
                </c:forEach>
                <%-- for displaying next link --%>
                <c:if test="${currentPage lt noOfPages}">
                    <td><a href="product.do?page=${currentPage + 1}">Next</a></td>
                </c:if>
            </tr>
        </table>
        
        
    </body>
</html>
