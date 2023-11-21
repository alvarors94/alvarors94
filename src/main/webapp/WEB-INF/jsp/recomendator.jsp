<%@ include file="comunes/cabecero.jsp"%>
<%@ include file="comunes/navegacion.jsp"%>

<div class="container">
  <div class="text-center" style="margin: 30px">
    <h3>Beer Recommendator 0.0.1 SNAPSHOT</h3>
  </div>
  <form action="/recomendator" modelAttribute="cervezaForma" method="post">

<!-- CAMPO DE COUNTRY-->
    <div class="mb-3">
      <label for="country" class="form-label">Country</label>
      <input type="text" class="form-control" id="country"
             name="country" value="${beer.country}">
    </div>
    <!-- CAMPO DE ESTILO-->
    <div class="mb-3">
      <label for="style" class="form-label">Style</label>
      <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
          Choose a style from the list
        </button>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Belgian-Style Dark Strong Ale)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Belgian-Style Dubbel)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Belgian-Style Fruit Lambic)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Belgian-Style Pale Strong Ale)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Belgian-Style Quadrupel)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Belgian-Style Tripel)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Belgian-Style White)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (French & Belgian-Style Saison)</a></li>
          <li><a class="dropdown-item" href="#">Belgian and French Ale (Other Belgian-Style Ales)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Classic English-Style Pale Ale)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (English-Style Dark Mild Ale)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (English-Style India Pale Ale)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (English-Style Pale Mild Ale)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Extra Special Bitter)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Oatmeal Stout)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Old Ale)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Ordinary Bitter)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Scotch Ale)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Scottish-Style Light Ale)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Special Bitter or Best Bitter)</a></li>
          <li><a class="dropdown-item" href="#">British Ale (Sweet Stout)</a></li>
          <li><a class="dropdown-item" href="#">German Ale (German-Style Brown Ale/Altbier)</a></li>
          <li><a class="dropdown-item" href="#">German Ale (South German-Style Hefeweizen)</a></li>
          <li><a class="dropdown-item" href="#">German Ale (South German-Style Weizenbock)</a></li>
          <li><a class="dropdown-item" href="#">German Lager (German-Style Doppelbock)</a></li>
          <li><a class="dropdown-item" href="#">German Lager (German-Style Oktoberfest)</a></li>
          <li><a class="dropdown-item" href="#">German Lager (German-Style Pilsener)</a></li>
          <li><a class="dropdown-item" href="#">German Lager (German-Style Schwarzbier)</a></li>
          <li><a class="dropdown-item" href="#">German Lager (Traditional German-Style Bock)</a></li>
          <li><a class="dropdown-item" href="#">Irish Ale (Classic Irish-Style Dry Stout)</a></li>
          <li><a class="dropdown-item" href="#">Irish Ale (Foreign  (Export)-Style Stout)</a></li>
          <li><a class="dropdown-item" href="#">Irish Ale (Irish-Style Red Ale)</a></li>
          <li><a class="dropdown-item" href="#">Irish Ale (Porter)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style Amber/Red Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style Barley Wine Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style Brown Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style Imperial Stout)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style India Pale Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style Pale Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style Stout)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (American-Style Strong Pale Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (Dark American-Belgo-Style Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (Golden or Blonde Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Ale (Imperial or Double India Pale Ale)</a></li>
          <li><a class="dropdown-item" href="#">North American Lager (American-Style Lager)</a></li>
          <li><a class="dropdown-item" href="#">North American Lager (American-Style Light Lager)</a></li>
          <li><a class="dropdown-item" href="#">null (null)</a></li>
          <li><a class="dropdown-item" href="#">Other Lager (Baltic-Style Porter)</a></li>
          <li><a class="dropdown-item" href="#">Other Style (American-Style Cream Ale or Lager)</a></li>
          <li><a class="dropdown-item" href="#">Other Style (Fruit Beer)</a></li>
          <li><a class="dropdown-item" href="#">Other Style (Herb and Spice Beer)</a></li>
          <li><a class="dropdown-item" href="#">Other Style (Light American Wheat Ale or Lager)</a></li>
          <li><a class="dropdown-item" href="#">Other Style (Out of Category)</a></li>
          <li><a class="dropdown-item" href="#">Other Style (Winter Warmer)</a></li>
        </ul>
      </div>
      <input type="text" class="form-control" id="style" name="style" value="${beer.style}" readonly>
    </div>

    <!-- CAMPO DE % ALCOHOL-->
    <div class="mb-3">
      <label for="abv" class="form-label">% ABV</label>
      <input type="range" class="form-range" min="0" max="20" step="0.1" id="abv" name="abv" value="${beer.abv}">
      <p id="rangeValue"></p>
    </div>

    <div class="mb-3">
      <label for="abv" class="form-label">% ABV</label>
      <div class="range-slider">
        <span class="range-selected"></span>
      </div>
      <div class="range-input">
        <input type="range" class="min" min="0" max="20" value="3" step="0.1">
        <input type="range" class="max" min="0" max="20" value="7" step="0.1">
      </div>
    </div>
</form>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>

