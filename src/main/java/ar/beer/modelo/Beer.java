package ar.beer.modelo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Beer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer idBeer;
    String beerName;
    String breweryName;
    String country;
    String style;
     Double abv;

}
