<html>

    <head>
        <style>
            body {
                color: #004C4C;
                background-image: url('https://image.ibb.co/c2K0Qv/dark.png'); 
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }
            html {
                height: 100%
            }

            h1 {
                color: #004C4C;
            } 

            .button {
                background-color: #018B8B;
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 1em 0px;
                cursor: pointer;
            }
            .button1 {
                background-color: #E7E172; 
                color: #004C4C; 
                border: 2px solid #018B8B;
            }
            .button1:hover {
                background-color: #018B8B;
                color: white;
            }

            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #004C4C;
                text-align: center;
                padding: 8px;
            }

            tr:nth-child(odd) {
                background-color: #E7E172;
            }


            #table-scroll {
                height:350px;
                overflow:auto;  
                margin-top:20px;
            }

            p {
                display: block;
                -webkit-margin-before: 1em;
                -webkit-margin-after: 0em;
                -webkit-margin-start: 0px;
                -webkit-margin-end: 0px;
            }
            p.thick {
                font-weight: bold;
            }
        </style>
    </head>

    <body>
        <h1>Temperature GET all.</h1>

        <div id="table-scroll">
            <table>
                <tr>
                  <th>ID</th>
                  <th>Content</th>
                </tr>
                <#list temperatureList as itemFromTemperatureList>
                    <tr>
                      <td><p class="thick">${itemFromTemperatureList.id}</p></td>
                      <td><p class="thick">${itemFromTemperatureList.content}</p></td>
                    </tr>
                </#list>
            </table>
        </div>

        <br />

        <form method="POST" action="/login_check">
            <input type="submit" class="button button1" value="BACK" />
            <input type="hidden" name="id" value="1">
        </form>
    </body>

</html>

