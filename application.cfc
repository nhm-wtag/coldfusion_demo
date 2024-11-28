
component {

    this.datasources["mydatabase"] = {
        class: "com.mysql.cj.jdbc.Driver", 
        bundleName: "com.mysql.cj", 
        bundleVersion: "8.4.0",
        connectionString: "jdbc:mysql://host.docker.internal:3306/myDatabase?characterEncoding=UTF-8&serverTimezone=Etc/UTC&maxReconnects=3",
        username: "admin",
        password: "encrypted:f23ea40d46561e4a38f384f6eae6e4c9b27e1c8c1aa8d23e",
        
        // optional settings
        connectionLimit:-1, // default:-1
        liveTimeout:15, // default: -1; unit: minutes
        alwaysSetTimeout:true, // default: false
        validate:false, // default: false
    };
    
    public any function onApplicationStart() {

        restInitApplication( 
            dirPath="/var/www/api",
            serviceMapping="/api",
            password="admin"
        );

        application.queryhelper = new util.Converter();
    }
}