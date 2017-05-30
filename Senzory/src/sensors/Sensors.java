package sensors;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import static java.lang.Thread.sleep;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

/**
 * Senzory, ktore v pravidelnych intevaloch odosielaju data cez server do
 * databazy.
 *
 * @author Adrian Bednar, Lubos Fukas, Stefan Sliacky
 */
public class Sensors {

    private final String USER_AGENT = "Mozilla/5.0";

    /**
     * Odosielanie nahodnych dat z dvoch senzorov v pravidelnom intervale.
     *
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {

        Sensors http = new Sensors();

        while (true) {
            // Posielanie post request-ov
            http.sendingPostRequestTemperature();
            http.sendingPostRequestHumidity();
            sleep(1000);
        }

    }

    /**
     * Posielanie udajov teploty cez HTTP POST request. Udaje senzoru su nahodne
     * generovane a posielane cez HTTP request. Po odoslani sa na konzolu vypise
     * odpoved serveru.
     *
     * @throws Exception
     */
    private void sendingPostRequestTemperature() throws Exception {

        Random r = new Random();
        int value = r.nextInt(80) - 40;

        String url = "http://localhost:8080/dropwizard/temperature";
        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        // Zakladne nastavenie pre POST request
        con.setRequestMethod("POST");
        con.setRequestProperty("User-Agent", USER_AGENT);
        con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
        con.setRequestProperty("Content-Type", "application/json");
        String postJsonData = "{\"content\":\"" + value + " C\"}";

        // Poslanie POST request
        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.writeBytes(postJsonData);
        wr.flush();
        wr.close();

        // Nastavenie vypisu na konzolu
        int responseCode = con.getResponseCode();
        System.out.println("Sending 'POST' request to URL : " + url);
        System.out.println("Post Data : " + postJsonData);
        System.out.println("Response Code : " + responseCode);

        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String output;
        StringBuffer response = new StringBuffer();

        while ((output = in.readLine()) != null) {
            response.append(output);
        }
        in.close();

        // Vypis vysledku na konzolu
        System.out.println(response.toString());
    }

    /**
     * Posielanie udajov vlhkosti vzduchu cez HTTP POST request. Udaje senzoru
     * su nahodne generovane a posielane cez HTTP request. Po odoslani sa na
     * konzolu vypise odpoved serveru.
     *
     * @throws Exception
     */
    private void sendingPostRequestHumidity() throws Exception {

        Random r = new Random();
        int value = r.nextInt(100) + 1;

        String url = "http://localhost:8080/dropwizard/humidity";
        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        // Zakladne nastavenie pre POST request
        con.setRequestMethod("POST");
        con.setRequestProperty("User-Agent", USER_AGENT);
        con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
        con.setRequestProperty("Content-Type", "application/json");
        String postJsonData = "{\"content\":\"" + value + "%\"}";

        // Poslanie POST request
        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.writeBytes(postJsonData);
        wr.flush();
        wr.close();

        // Nastavenie vypisu na konzolu
        int responseCode = con.getResponseCode();
        System.out.println("Sending 'POST' request to URL : " + url);
        System.out.println("Post Data : " + postJsonData);
        System.out.println("Response Code : " + responseCode);

        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String output;
        StringBuffer response = new StringBuffer();

        while ((output = in.readLine()) != null) {
            response.append(output);
        }
        in.close();

        // Vypis vysledku na konzolu
        System.out.println(response.toString());
    }

}
