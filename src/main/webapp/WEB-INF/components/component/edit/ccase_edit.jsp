<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>VVAA (ADMIN)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<c:url value="/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
    <script src="<c:url value="/js/bootstrap.js"/>"></script>
    <script src="<c:url value="/js/script.js"/>"></script>
</head>
<body style="background-color: #508bfc;">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="<c:url value="/main"/>">VVAA (ADMIN)</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav">
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/main"/>"><spring:message
                        code="label.page.home"/></a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/catalog"/>"><spring:message
                        code="label.page.catalog"/></a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/config"/>"><spring:message
                        code="label.page.config"/></a></li>
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
                    <sec:authorize access="isAuthenticated()">
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
                    </sec:authorize>
                    <sec:authorize access="!isAuthenticated()">
                        <a class="nav-link dropdown-toggle" href="" data-bs-toggle="dropdown"
                           style="float: right"><spring:message code="label.page.profile"/></a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="<c:url value="/sign-in"/>"><spring:message
                                    code="label.auth.signin"/></a></li>
                            <li><a class="dropdown-item" href="<c:url value="/sign-up"/>"><spring:message
                                    code="label.auth.signup"/></a></li>
                        </ul>
                    </sec:authorize>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="vh-100" style="background-color: #508bfc;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12">
                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">
                        <form id="add-component" action="<c:url value="/admin/case/${ccase.id}/edit"/>" method="post"
                              enctype="multipart/form-data">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                            <h3 class="mb-5">Edit computer case</h3>

                            <div class="errors mb-5">
                                <c:if test="${error != null}">
                                    <h5 class="mb-2" style="color: #b02a37">${error}</h5>
                                </c:if>
                            </div>

                            <div class="mb-3 row">
                                <label for="inputProducer" class="col-sm-3 col-form-label">
                                    <spring:message code="label.component.producer"/></label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="producer" id="inputProducer"
                                           placeholder="computer case producer" value="${ccase.producer}" required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputModel" class="col-sm-3 col-form-label">
                                    <spring:message code="label.component.model"/></label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="model" id="inputModel"
                                           placeholder="computer case model" value="${ccase.model}" required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCore" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.casetype"/></label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="caseType" id="inputCore"
                                           placeholder="computer case type" value="${ccase.caseType}" required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCoreNum" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.colour"/></label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="colour" id="inputCoreNum"
                                           placeholder="computer case colour" value="${ccase.colour}" required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputSocket" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.material"/></label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="material" id="inputSocket"
                                           placeholder="computer case material" value="${ccase.material}" required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.sectionnumber"/></label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="sectionNumber" id="inputCrystalName"
                                           placeholder="computer case section number" value="${ccase.sectionNumber}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName1" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.commother"/></label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="compatible_motherboards"
                                           id="inputCrystalName1"
                                           placeholder="computer case compatible motherboards"
                                           value="${ccase.compatible_motherboards}" required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName5" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.maxgraphicscardwidth"/></label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="maxGraphicsCardWidth" id="inputCrystalName5"
                                           placeholder="graphics card max width" step="any" value="${ccase.maxGraphicsCardWidth}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName6" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.maxpowerunitwidth"/></label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="maxPowerUnitWidth" id="inputCrystalName6"
                                           placeholder="power unit max width" step="any" value="${ccase.maxPowerUnitWidth}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName2" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.height"/></label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="height" id="inputCrystalName2"
                                           placeholder="computer case height" step="any" value="${ccase.height}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName3" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.width"/></label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="width" id="inputCrystalName3"
                                           placeholder="computer case width" step="any" value="${ccase.width}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName4" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.depth"/></label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="depth" id="inputCrystalName4"
                                           placeholder="computer case depth" step="any" value="${ccase.depth}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputCrystalName7" class="col-sm-3 col-form-label">
                                    <spring:message code="label.case.weight"/></label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="weight" id="inputCrystalName7"
                                           placeholder="computer case weight" step="any" value="${ccase.weight}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputPrice" class="col-sm-3 col-form-label">Price</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="price" id="inputPrice"
                                           placeholder="computer case price" step="any" value="${ccase.price}"
                                           required>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="formFileSm" class="form-label"></label>
                                <input class="form-control form-control-sm" name="imageFile" id="formFileSm"
                                       type="file">
                            </div>

                        </form>

                        <table class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <td colspan="2"><h3><spring:message code="label.component.stores"/></h3></td>
                                <td>
                                    <a href="<c:url value="/admin/ccase/${ccase.id}/source/new"/>" class="btn btn-success">New</a>
                                </td>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${ccase.sources}" var="source">
                                <tr>
                                    <td>${source.name}</td>
                                    <td><a href="${source.link}">${source.link}</a></td>
                                    <td>
                                        <form action="/admin/ccase/${ccase.id}/source/${source.id}/delete"
                                              method="post">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                            <button class="btn p-0" type="submit">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
                                                     fill="currentColor"
                                                     class="bi bi-trash" viewBox="0 0 16 16">
                                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                    <path fill-rule="evenodd"
                                                          d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                                </svg>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                        <button form="add-component" class="btn btn-primary btn-lg btn-block" type="submit">Edit
                        </button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>
