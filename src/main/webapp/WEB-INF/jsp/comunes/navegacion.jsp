<!-- Agregar los url de la aplicacion -->
<c:set var="urlInicio">
    <c:url value="${application.contextPath}/" />
</c:set>

<c:set var="urlAgregar">
    <c:url value="${application.contextPath}/agregar" />
</c:set>

<div class="container">
    <nav class="navbar navbar-expand-lg bg-primary"
         data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${urlInicio}">Beer list</a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav" aria-controls="navbarNav"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active"
                           aria-current="page" href="${urlInicio}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${urlAgregar}">Add beer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/beer/recomendator">Beer Recomendator</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
