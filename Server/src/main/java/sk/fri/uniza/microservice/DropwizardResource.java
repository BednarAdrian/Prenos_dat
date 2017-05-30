package sk.fri.uniza.microservice;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.Consumes;
import org.hibernate.Session;
import sk.fri.uniza.microservice.sensorTemperature.SensorTemperature;
import sk.fri.uniza.microservice.sensorHumidity.SensorHumidity;

/**
 * Umoznuje posielat data zo senzorov do databazy.
 * 
 * @author Adrian Bednar, Lubos Fukas, Stefan Sliacky
 */
@Path("/dropwizard")
@Produces(MediaType.APPLICATION_JSON)
public class DropwizardResource {

    /**
     * Bezparametricky konstruktor.
     */
    public DropwizardResource() {
    }

    /**
     * Umoznuje posielat data typu temperature.
     *
     * @param input
     * @return input
     */
    @POST
    @Path("/temperature")
    @Consumes(MediaType.APPLICATION_JSON)
    public SensorTemperature sayTemperature(SensorTemperature input) {

        Session session = DropwizardApplication.buildSessionFactory.openSession();
        session.beginTransaction();
        session.save(input);
        session.getTransaction().commit();
        session.close();
        return input;

    }

    /**
     * Umoznuje posielat data typu humidity.
     *
     * @param input
     * @return input
     */
    @POST
    @Path("/humidity")
    @Consumes(MediaType.APPLICATION_JSON)
    public SensorHumidity sayHumidity(SensorHumidity input) {

        Session session = DropwizardApplication.buildSessionFactory.openSession();
        session.beginTransaction();
        session.save(input);
        session.getTransaction().commit();
        session.close();
        return input;

    }
    
}
