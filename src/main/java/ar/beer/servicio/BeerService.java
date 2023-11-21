package ar.beer.servicio;


import ar.beer.modelo.Beer;
import ar.beer.repositorio.BeerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BeerService implements IBeerService{

    @Autowired
    private BeerRepository beerRepository;

    @Override
    public List<Beer> listarCervezas() {
        return beerRepository.findAll();
    }

    @Override
    public Beer buscarCervezasPorId(Integer idBeer) {
        Beer beer = beerRepository.findById(idBeer).orElse(null);
        return beer;
    }

    @Override
    public void guardarCerveza(Beer beer) {
        beerRepository.save(beer);
    }

    @Override
    public void eliminarCerveza(Beer beer) {
        beerRepository.delete(beer);
    }
}
