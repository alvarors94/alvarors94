<%@ include file="comunes/cabecero.jsp"%>
<%@ include file="comunes/navegacion.jsp"%>

<div class="container">
  <div class="text-center" style="margin: 30px">
    <h3>Beer Recommendator 0.0.1 SNAPSHOT</h3>
  </div>
  <form action="${urlRecomendator}" modelAttribute="cervezaForma" method="post">


    <div class="mb-3">
      <label for="country" class="form-label">Country</label>
      <input type="text" class="form-control" id="country"
             name="country" value="${beer.country}">
    </div>

    <div class="mb-3">
      <label for="style" class="form-label">Style</label>
      <input type="text" class="form-control" id="style"
             name="style" value="${beer.style}">
    </div>

    <div class="mb-3">
      <label for="abv" class="form-label">% ABV</label>
      <input type="text" class="form-control" id="abv"
             name="abv" value="${beer.abv}">
    </div>


  </form>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>

