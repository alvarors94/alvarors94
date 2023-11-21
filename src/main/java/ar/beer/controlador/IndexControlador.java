package ar.beer.controlador;


import ar.beer.modelo.Beer;
import ar.beer.servicio.BeerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class IndexControlador {
    private static final Logger logger =
            LoggerFactory.getLogger(IndexControlador.class);

    @Autowired
    BeerService beerService;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String iniciar(ModelMap modelo){
        List<Beer> beers = beerService.listarCervezas();
        beers.forEach((beer) -> logger.info(beer.toString()));
        //Compartimos el modelo con la vista
        modelo.put("beers", beers);
        return "index";//index.jsp
    }

    @RequestMapping(value="/agregar", method = RequestMethod.GET)
    public String mostrarAgregar(){
        return "agregar";//agregar.jsp
    }

    @RequestMapping(value="/agregar", method = RequestMethod.POST)
    public String agregar(@ModelAttribute("cervezaForma") Beer beer){
        logger.info("Cerveza a agregar: " + beer);
        beerService.guardarCerveza(beer);
        return "redirect:/";//redirige al path "/"
    }

    @RequestMapping(value="/editar", method = RequestMethod.GET)
    public String mostrarEditar(@RequestParam int idBeer, ModelMap modelo){
        Beer beer = beerService.buscarCervezasPorId(idBeer);
        logger.info("Cerveza a editar: " + beer);
        modelo.put("beer", beer);
        return "editar";//mostrar editar.jsp
    }

    @RequestMapping(value="/editar", method = RequestMethod.POST)
    public String editar(@ModelAttribute("beer") Beer beer){
        logger.info("Cerveza a guardar: " + beer);
        beerService.guardarCerveza(beer);
        return "redirect:/";
    }

    @RequestMapping(value = "/eliminar", method = RequestMethod.GET)
    public String eliminar(@RequestParam int idBeer){
        Beer beer = new Beer();
        beer.setIdBeer(idBeer); //Establecemos un nuevo valor para id
        beerService.eliminarCerveza(beer);
        logger.info("Cerveza a eliminar (eliminar):" + beer);
        return "redirect:/";
    }

    @RequestMapping(value="/recomendator", method = RequestMethod.GET)
    public String mostrarRecomendador(){
        return "recomendator";//recomendator.jsp
    }

    @RequestMapping(value="/recomendator", method = RequestMethod.POST)
    public String recommend(@ModelAttribute("cervezaForma") Beer beer){
        logger.info("Cerveza a agregar: " + beer);
        beerService.guardarCerveza(beer);
        return "redirect:/";//redirige al path "/"
    }
}
