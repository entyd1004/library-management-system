<%-- 
    Document   : Login
    Created on : Apr 14, 2022, 4:03:58 PM
    Author     : DPV
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body style="background-color: #556676">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center pt-5">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Sign-In</h3></div>
                                    <div class="card-body">
                                        <form action="login" method="POST">
                                            <div class="form-floating mb-3">
                                                <input name="username" class="form-control" id="inputEmail" type="text" placeholder="Username" required=""/>
                                                <label for="inputEmail">Username</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="password" class="form-control" id="inputPassword" type="password" placeholder="Password" required=""/>
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <c:if test="${notify != null}">
                                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                    <strong>Failed!</strong> ${notify}.
                                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                </div>
                                            </c:if>
                                            <c:if test="${success != null}">
                                                <script>
                                                    Swal.fire(
                                                            'Success!',
                                                            'Login successful!',
                                                            'success'
                                                            )
                                                    var delayInMilliseconds = 1000; //1 second

                                                    setTimeout(function () {
                                                        window.location.href = 'dashboard';
                                                    }, delayInMilliseconds);
                                                </script>
                                            </c:if>

                                            <div class="form-check mb-3">
                                                <input name="remember" class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">Remember me</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button type="submit" class="btn btn-primary w-100">Login</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>

</html>

