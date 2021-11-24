<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title><spring:message code="label.components.cases"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<c:url value="/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/components.css"/>">
    <script src="<c:url value="/js/bootstrap.js"/>"></script>
    <script src="<c:url value="/js/script.js"/>"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="<c:url value="/main"/>">VVAA</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav">
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/catalog"/>"><spring:message
                        code="label.page.catalog"/></a></li>
                <li class="nav-item dropdown" id="myDropdown1">
                    <a class="nav-link dropdown-toggle" href="" data-bs-toggle="dropdown"
                       style="float: right"><spring:message code="label.lang"/></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="<c:url value="?lang=en"/>"><spring:message
                                code="label.lang.en"/></a></li>
                        <li><a class="dropdown-item" href="<c:url value="?lang=ru"/>"><spring:message
                                code="label.lang.ru"/></a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown" id="myDropdown">
                    <a class="nav-link dropdown-toggle" href="" data-bs-toggle="dropdown"
                       style="float: right"><sec:authentication property="principal.firstName"/> <sec:authentication
                            property="principal.lastName"/></a>
                    <ul class="dropdown-menu">
                        <sec:authentication property="principal.id" var="user_id"/>
                        <li><a class="dropdown-item" href="<c:url value="/user/${user_id}"/>"><spring:message
                                code="label.page.account"/></a></li>
                        <sec:authorize access="hasAuthority('ADMIN')">
                            <li><a class="dropdown-item" href="<c:url value="/admin"/>"><spring:message
                                    code="label.page.settings"/></a></li>
                        </sec:authorize>
                        <li>
                            <form action="<c:url value="/logout"/>" method="post">
                                <a class="dropdown-item" href="<c:url value="/logout"/>"><spring:message
                                        code="label.auth.signout"/></a>
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<%
    String[] prod = request.getParameterValues("producer");
    String[] types = request.getParameterValues("type");
    String[] colr = request.getParameterValues("colour");
    String[] mat = request.getParameterValues("material");
    String[] sct = request.getParameterValues("section");
    if (prod != null) {
        pageContext.setAttribute("prod", Arrays.asList(prod));
    }
    if (types != null) {
        pageContext.setAttribute("types", Arrays.asList(types));
    }
    if (colr != null) {
        pageContext.setAttribute("colr", Arrays.asList(colr));
    }
    if (mat != null) {
        pageContext.setAttribute("mat", Arrays.asList(mat));
    }
    if (sct != null) {
        pageContext.setAttribute("sct", Arrays.asList(sct));
    }
%>
<div class="container align-items-center mt-5">
    <div class="row">
        <div class="filter col-3">
            <div class="card m-4">
                <form action="/catalog/cases/filter" method="get">

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.component.producer"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${producers_set}" var="producer">
                                    <label class="form-check">
                                        <c:if test="${prod.contains(producer)}">
                                            <input class="form-check-input" type="checkbox" name="producer"
                                                   value="${producer}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!prod.contains(producer)}">
                                            <input class="form-check-input" type="checkbox" name="producer"
                                                   value="${producer}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${producer}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.case.casetype"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${types_set}" var="type">
                                    <label class="form-check">
                                        <c:if test="${types.contains(type)}">
                                            <input class="form-check-input" type="checkbox" name="type"
                                                   value="${type}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!types.contains(type)}">
                                            <input class="form-check-input" type="checkbox" name="type"
                                                   value="${type}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${type}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.case.colour"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${colours_set}" var="colour">
                                    <label class="form-check">
                                        <c:if test="${colr.contains(colour)}">
                                            <input class="form-check-input" type="checkbox" name="colour"
                                                   value="${colour}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!colr.contains(colour)}">
                                            <input class="form-check-input" type="checkbox" name="colour"
                                                   value="${colour}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${colour}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.case.material"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${materials_set}" var="material">
                                    <label class="form-check">
                                        <c:if test="${mat.contains(material)}">
                                            <input class="form-check-input" type="checkbox" name="material"
                                                   value="${material}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!mat.contains(material)}">
                                            <input class="form-check-input" type="checkbox" name="material"
                                                   value="${material}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${material}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.case.sectionnumber"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${sections_set}" var="section">
                                    <label class="form-check">
                                        <c:if test="${sct.contains(section.toString())}">
                                            <input class="form-check-input" type="checkbox" name="section"
                                                   value="${section}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!sct.contains(section.toString())}">
                                            <input class="form-check-input" type="checkbox" name="section"
                                                   value="${section}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${section}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <div class="container align-items-center align-middle justify-content-center">
                        <button type="submit" class="btn btn-primary w-100 p-0 m-0">Find</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-9">
            <c:forEach items="${cases}" var="ccase">
                <div class="row">
                    <div class="card m-4">
                        <div class="row">
                            <div class="col-3">
                                <img class="card-img-top" src="<c:url value="/img/case.jpg"/>" alt="processor">
                            </div>
                            <div class="col-9">
                                <div class="card-body">
                                    <a href="/catalog/ccase/${ccase.id}" class="text-decoration-none"><h5
                                            class="card-title">${ccase.toString()}</h5></a>
                                    <p class="card-text">${ccase.info()}</p>
                                    <h5 class="btn btn-warning">${ccase.price} <spring:message
                                            code="label.currency.byn"/></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>