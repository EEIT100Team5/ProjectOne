<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登入</title>
        <style>
            .test {
                border: 2px red solid;
            }

            .rowtest {
                border: 2px blue solid;
            }
        </style>
    </head>

    <body>
        <%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>
            <div class="container">

                <h1 class="mt4 md3">登入系統</h1>

                <div class="row ">

                    <div class="col-md-3">
                    </div>

                    <div class="col-md-6 ">

                        <div class="wrapper">
                            <form:form id="login" method="POST" action="${pageContext.request.contextPath}/login" modelAttribute="MemberBean" class="wrapper">
                                <form:input class="form-control input-sm" id="logAcc" type="text" path="account" placeholder="account" />
                                <br>
                                <form:input class="form-control input-sm" id="logPwd" type="password" path="password" placeholder="password" />
                                <br>
                                <a href="${pageContext.request.contextPath}/MemberCenter/forgotPassword">
                                    <button type="button" id="#regButton" class="btn btn-primary">忘記密碼?</button>
                                </a>

                                <label class="checkbox">
                                    <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
                                </label>
                                <p>${ErrorMessageKey.error}</p>

                                <input type="submit" class="btn btn-primary" value="登入" />
                            </form:form>
                        </div>




                    </div>


                </div>


            </div>

            


    </body>

    </html>