package sk.fri.uniza.microservice;

import io.dropwizard.Configuration;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Konfiguracna trieda pre Dropwizard.
 *
 * @author Adrian Bednar, Lubos Fukas, Stefan Sliacky
 */
public class DropwizardConfiguration extends Configuration {

    @NotEmpty
    private String template;

    @JsonProperty
    public String getTemplate() {
        return template;
    }

    @JsonProperty
    public void setTemplate(String template) {
        this.template = template;
    }

}
