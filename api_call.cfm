<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to ColdFusion</title>
</head>
<body>

                <strong style="margin-left:500px"> Tag based approach <br></strong>
    <cfhttp url="http://localhost:8888/rest/api/data/users" method="GET" result="response"> </cfhttp>
    <cfoutput>#response.fileContent#</cfoutput>

    <br><br><br><br>

                <strong style="margin-left:500px"> Script based approach <br></strong>

    <cfscript>
        httpService = new http (url="http://localhost:8888/rest/api/data/users", method="GET");
        response = httpService.send().getPrefix("Response");
        writeOutput(response.fileContent);
    </cfscript>
     
</body>
</html>
