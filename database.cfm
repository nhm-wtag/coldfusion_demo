<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to ColdFusion</title>
</head>
<body>
    
                    <strong style="margin-left:50px"> Tag based approach <br></strong>
    <cfquery name="getUsers" datasource="myDatabase">
        Select * from users
    </cfquery>
    <cfoutput> #getUsers.recordCount# Users Found! <br></cfoutput>

    <br>

                    <strong style="margin-left:50px"> Script based approach <br></strong>
    <cfscript>
        sql = "Select * from users";
        params={};
        result = queryExecute(sql,params,{datasource="myDatabase"});
        writeOutput(result.recordCount & " Users Found!");
    </cfscript>
</body>
</html>
