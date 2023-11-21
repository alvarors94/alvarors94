package ar.beer.repositorio;


import ar.beer.modelo.Beer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BeerRepository extends JpaRepository<Beer, Integer> {
}
