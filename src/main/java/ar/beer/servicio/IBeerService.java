package ar.beer.servicio;


import ar.beer.modelo.Beer;

import java.util.List;

public interface IBeerService {
    public List<Beer> listarCervezas();

    public Beer buscarCervezasPorId(Integer idBeer);

    public void guardarCerveza(Beer beer);

    public void eliminarCerveza(Beer beer);

}
