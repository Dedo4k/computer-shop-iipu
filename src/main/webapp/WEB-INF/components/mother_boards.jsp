<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title><spring:message code="label.components.motherboards"/></title>
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
    String[] form_fct = request.getParameterValues("form_factor");
    String[] sckt = request.getParameterValues("socket");
    String[] mem_slt = request.getParameterValues("memory_slots");
    String[] video_mem_type = request.getParameterValues("video_memory_type");
    String[] m_tw = request.getParameterValues("m_two");
    String[] pci_ver = request.getParameterValues("pci_version");
    String[] chip = request.getParameterValues("chipset");
    String[] minLengths = request.getParameterValues("min_length");
    String[] maxLengths = request.getParameterValues("max_length");
    String minLength = null;
    String maxLength = null;
    String[] minWidths = request.getParameterValues("min_width");
    String[] maxWidths = request.getParameterValues("max_width");
    String minWidth = null;
    String maxWidth = null;
    if (prod != null) {
        pageContext.setAttribute("prod", Arrays.asList(prod));
    }
    if (form_fct != null) {
        pageContext.setAttribute("form_fct", Arrays.asList(form_fct));
    }
    if (sckt != null) {
        pageContext.setAttribute("sckt", Arrays.asList(sckt));
    }
    if (mem_slt != null) {
        pageContext.setAttribute("mem_slt", Arrays.asList(mem_slt));
    }
    if (video_mem_type != null) {
        pageContext.setAttribute("video_mem_type", Arrays.asList(video_mem_type));
    }
    if (m_tw != null) {
        pageContext.setAttribute("m_tw", Arrays.asList(m_tw));
    }
    if (pci_ver != null) {
        pageContext.setAttribute("pci_ver", Arrays.asList(pci_ver));
    }
    if (chip != null) {
        pageContext.setAttribute("chip", Arrays.asList(chip));
    }
    if (minLengths == null || minLengths[0].equals("")) {
        minLength = "";
    } else {
        minLength = minLengths[0];
    }
    if (maxLengths == null || maxLengths[0].equals("")) {
        maxLength = "";
    } else {
        maxLength = maxLengths[0];
    }
    pageContext.setAttribute("minLength", minLength);
    pageContext.setAttribute("maxLength", maxLength);
    if (minWidths == null || minWidths[0].equals("")) {
        minWidth = "";
    } else {
        minWidth = minWidths[0];
    }
    if (maxWidths == null || maxWidths[0].equals("")) {
        maxWidth = "";
    } else {
        maxWidth = maxWidths[0];
    }
    pageContext.setAttribute("minWidth", minWidth);
    pageContext.setAttribute("maxWidth", maxWidth);
%>
<div class="container align-items-center mt-5">
    <div class="row">
        <div class="filter col-3">
            <div class="card m-4">
                <form action="/catalog/mother_boards/filter" method="get">

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
                            <h6 class="title"><spring:message code="label.motherboard.formfactor"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${form_factors_set}" var="form_factor">
                                    <label class="form-check">
                                        <c:if test="${form_fct.contains(form_factor)}">
                                            <input class="form-check-input" type="checkbox" name="form_factor"
                                                   value="${form_factor}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!form_fct.contains(form_factor)}">
                                            <input class="form-check-input" type="checkbox" name="form_factor"
                                                   value="${form_factor}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${form_factor}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.socket"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${sockets_set}" var="socket">
                                    <label class="form-check">
                                        <c:if test="${sckt.contains(socket)}">
                                            <input class="form-check-input" type="checkbox" name="socket"
                                                   value="${socket}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!sckt.contains(socket)}">
                                            <input class="form-check-input" type="checkbox" name="socket"
                                                   value="${socket}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${socket}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.pciversion"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${pci_versions_set}" var="pci_version">
                                    <label class="form-check">
                                        <c:if test="${pci_ver.contains(pci_version)}">
                                            <input class="form-check-input" type="checkbox" name="pci_version"
                                                   value="${pci_version}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!pci_ver.contains(pci_version)}">
                                            <input class="form-check-input" type="checkbox" name="pci_version"
                                                   value="${pci_version}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${pci_version}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.chipset"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${chipsets_set}" var="chipset">
                                    <label class="form-check">
                                        <c:if test="${chip.contains(chipset)}">
                                            <input class="form-check-input" type="checkbox" name="chipset"
                                                   value="${chipset}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!chip.contains(chipset)}">
                                            <input class="form-check-input" type="checkbox" name="chipset"
                                                   value="${chipset}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${chipset}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.memorytype"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${video_memories_types_set}" var="video_memory_type">
                                    <label class="form-check">
                                        <c:if test="${video_mem_type.contains(video_memory_type)}">
                                            <input class="form-check-input" type="checkbox" name="video_memory_type"
                                                   value="${video_memory_type}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!video_mem_type.contains(video_memory_type)}">
                                            <input class="form-check-input" type="checkbox" name="video_memory_type"
                                                   value="${video_memory_type}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${video_memory_type}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.memoryslots"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${memory_slots_set}" var="memory_slot">
                                    <label class="form-check">
                                        <c:if test="${mem_slt.contains(memory_slot.toString())}">
                                            <input class="form-check-input" type="checkbox" name="memory_slots"
                                                   value="${memory_slot}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!mem_slt.contains(memory_slot.toString())}">
                                            <input class="form-check-input" type="checkbox" name="memory_slots"
                                                   value="${memory_slot}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${memory_slot}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.mtwo"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <c:forEach items="${m_twos_set}" var="m_two">
                                    <label class="form-check">
                                        <c:if test="${m_tw.contains(m_two.toString())}">
                                            <input class="form-check-input" type="checkbox" name="m_two"
                                                   value="${m_two}"
                                                   checked>
                                        </c:if>
                                        <c:if test="${!m_tw.contains(m_two.toString())}">
                                            <input class="form-check-input" type="checkbox" name="m_two"
                                                   value="${m_two}">
                                        </c:if>
                                        <span class="form-check-label">
                                                ${m_two}
                                        </span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.length"/>, <spring:message code="label.values.milim"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <div class="row">
                                    <label class="col-5">
                                        <input type="text" name="min_length" placeholder="Min" class="w-100" value="${minLength}">
                                    </label>
                                    <span class="col-2">
                                        &#8212
                                    </span>
                                    <label class="col-5">
                                        <input type="text" name="max_length" placeholder="Max" class="w-100" value="${maxLength}">
                                    </label>
                                    <c:if test="${error != null}">
                                        <h5 style="color: #b02a37">${error}</h5>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title"><spring:message code="label.motherboard.width"/>, <spring:message code="label.values.milim"/></h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <div class="row">
                                    <label class="col-5">
                                        <input type="text" name="min_width" placeholder="Min" class="w-100" value="${minWidth}">
                                    </label>
                                    <span class="col-2">
                                        &#8212
                                    </span>
                                    <label class="col-5">
                                        <input type="text" name="max_width" placeholder="Max" class="w-100" value="${maxWidth}">
                                    </label>
                                    <c:if test="${error != null}">
                                        <h5 style="color: #b02a37">${error}</h5>
                                    </c:if>
                                </div>
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
            <c:forEach items="${mother_boards}" var="mother_board">
                <div class="row">
                    <div class="card m-4">
                        <div class="row">
                            <c:if test="${mother_board.image == null}">
                                <div class="col-3">
                                    <img src="<c:url value="/img/mother_board.jpg"/>" class="w-100" alt="motherboard"/>
                                </div>
                            </c:if>
                            <c:if test="${mother_board.image != null}">
                                <div class="col-3">
                                    <img src="<c:url value="data:image/png;base64,${mother_board.encodeImage}"/>" class="w-100" alt="motherboard"/>
                                </div>
                            </c:if>
                            <div class="col-9">
                                <div class="card-body">
                                    <a href="/catalog/mother_board/${mother_board.id}" class="text-decoration-none">
                                        <h5
                                                class="card-title">${mother_board.toString()}</h5></a>
                                    <p class="card-text">${mother_board.formFactor}, <spring:message code="label.motherboard.socket"/> ${mother_board.socket},
                                        <spring:message code="label.motherboard.chipset"/> ${mother_board.chipset},
                                        <spring:message code="label.motherboard.memorytype"/> ${mother_board.memoryType}</p>
                                    <h5 class="btn btn-warning">${mother_board.price} <spring:message
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
