
component restpath="data" rest="true" {

    
    remote any function getUsers() httpmethod="GET" restpath="users" {
        try {
            var users = queryExecute('Select * from users',[],{datasource="myDatabase"});
            var processed = application.queryhelper.queryToArray(users);

        } catch (any e) {
            return {'status': 'error', 'message': 'Failed to add skill: #e.message#'};
        }

        return processed;
    }
    
}