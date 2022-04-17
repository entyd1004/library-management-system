<%-- 
    Document   : Account.jsp
    Created on : Apr 16, 2022, 5:09:40 PM
    Author     : DPV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Account</title>
        <%@include file="Header.jsp" %>
    </head>
    <body class="sb-nav-fixed">
        <%@include file="Navbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="layoutSidenav_nav.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Account</h1>               
                        <hr>

                        <div class="card mb-4">
                            <div class="card-header mb-4">
                                <a href="create-account" type="button" class="btn btn-outline-success">
                                    <i class="fa-solid fa-plus me-2"></i>Add Membership
                                </a>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr style="background-color: #FFCE73">
                                            <th class="text-center">Username</th>
                                            <th class="text-center">Password</th>
                                            <th class="text-center">Name</th>
                                            <th class="text-center">Date of birth</th>
                                            <th class="text-center">Role</th>
                                            <th class="text-center"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listAccount}" var="ac">
                                            <tr>
                                                <td class="text-center">${ac.getUsername()}</td>
                                                <td class="text-center">${ac.getPassword()}</td>
                                                <td class="text-center">${ac.getName()}</td>
                                                <td class="text-center">${ac.getDOB()}</td>
                                                <td class="text-center">${ac.getRole()== 1 ? "Adminstrator":"User"}</td>
                                                <c:choose>
                                                    <c:when test="${ac.getRole() == 1}">
                                                        <td class="text-center">
                                                            <a><i class="fa-solid fa-square-xmark fa-lg"></i></a>
                                                        </td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="text-center">
                                                            <a href="#"><i class="fa-solid fa-pen-to-square text-primary fa-lg"></i></a>
                                                            <a href="#" ><i class="fa-solid fa-trash text-danger fa-lg"></i></a>
                                                        </td>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <%@include file="Footer.jsp" %>
            </div>
        </div>
    </body>
</html>