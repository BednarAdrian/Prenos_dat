package sk.fri.uniza.microservice;

import sk.fri.uniza.microservice.loginForm.LoginFormResource;
import sk.fri.uniza.microservice.loginCheck.LoginCheckResource;
import sk.fri.uniza.microservice.sensorTemperature.SensorTemperatureResource;
import sk.fri.uniza.microservice.sensorHumidity.SensorHumidityResource;
import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import io.dropwizard.views.ViewBundle;
import java.util.Map;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 * Spustanie serveru, registracia zdrojov, kontrola funkcnosti.
 * 
 * @author Adrian Bednar, Lubos Fukas, Stefan Sliacky
 */
public class DropwizardApplication extends Application<DropwizardConfiguration> {

    static SessionFactory buildSessionFactory;

    /**
     * Metoda main, ktora spusta samotny server.
     * 
     * @param args
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        Configuration conf = new Configuration();
        conf.configure();

        StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
        buildSessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();

        new DropwizardApplication().run(args);
    }

    public static SessionFactory getBuildSessionFactory() {
        return buildSessionFactory;
    }

    /**
     *
     * @param bootstrap
     */
    @Override
    public void initialize(Bootstrap<DropwizardConfiguration> bootstrap) {
        bootstrap.addBundle(new ViewBundle<DropwizardConfiguration>() {
            @Override
            public Map<String, Map<String, String>> getViewConfiguration(DropwizardConfiguration configuration) {

                return super.getViewConfiguration(configuration);
            }
        });
    }

    /**
     * Vytvara instancie zdrojov a registruje ich do prostredia Jersey.
     * Kontroluje funkcnost sablony pomocou instancie triedy
     * TemplateHealthCheck.
     *
     * @param configuration
     * @param environment
     */
    @Override
    public void run(DropwizardConfiguration configuration, Environment environment) {

        final DropwizardResource resource = new DropwizardResource();
        final SensorTemperatureResource temperatureResource = new SensorTemperatureResource();
        final SensorHumidityResource humidityResource = new SensorHumidityResource();
        final LoginFormResource loginResource = new LoginFormResource();
        final LoginCheckResource loginCheckResource = new LoginCheckResource();

        final DropwizardTemplateHealthCheck healthCheck = new DropwizardTemplateHealthCheck(configuration.getTemplate());
        environment.healthChecks().register("template", healthCheck);

        environment.jersey().register(resource);
        environment.jersey().register(temperatureResource);
        environment.jersey().register(humidityResource);
        environment.jersey().register(loginResource);
        environment.jersey().register(loginCheckResource);
    }

}
