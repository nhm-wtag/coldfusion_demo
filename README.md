# ColdFusion Web Application

## Overview
This is a sample ColdFusion (CFML) web application demonstrating various ColdFusion programming techniques, database interactions, and API calls using both tag-based and script-based approaches.

## Project Structure
- `index.cfm`: Basic introduction to ColdFusion syntax
- `database.cfm`: Database query examples
- `condition_loop.cfm`: Conditional and loop demonstrations
- `api_call.cfm`: API interaction examples
- `compose.yaml`: Docker Compose configuration for application deployment

## Prerequisites
- Docker
- Docker Compose
- ColdFusion/Lucee compatible environment

## Technologies Used
- ColdFusion (CFML)
- MariaDB
- Docker
- Lucee Server

## Setup and Installation

### Using Docker Compose
1. Clone the repository
2. Navigate to the project directory
3. Run the following command:
   ```bash
   docker-compose up 
   ```

### Configuration Details
- Database:
  - Image: MariaDB (latest)
  - Root Password: admin
  - Database Name: myDatabase
  - Port: 3306

- Lucee Server:
  - Admin Password: admin
  - Exposed Port: 8888

## Access URLs

Once the Docker containers are running, you can access the following examples:

| Example | URL | Description |
|---------|-----|-------------|
| Base Application | `http://localhost:8888` | Main application entry point |
| Basic Output | `http://localhost:8888/index.cfm` | Demonstrates ColdFusion variable output |
| Database Query | `http://localhost:8888/database.cfm` | Shows tag and script-based database querying |
| Conditions & Loops | `http://localhost:8888/condition_loop.cfm` | Illustrates conditional logic and looping |
| API Call | `http://localhost:8888/api_call.cfm` | Demonstrates HTTP API interaction |

### Notes
- Ensure Docker containers are running
- Open these URLs in a web browser
- The API call example may require additional REST endpoint configuration

## Code Examples

### Tag-Based Approach
ColdFusion supports a tag-based syntax for various operations:
```cfml
<cfset name = "John Doe">
<cfoutput>Welcome, #name#</cfoutput>
```

### Script-Based Approach
ColdFusion also supports a script-based (more traditional programming) syntax:
```cfml
<cfscript>
    name = "John Doe";
    writeOutput("Welcome, " & name);
</cfscript>
```

## Functionality Demonstrated
- Basic variable output
- Database querying
- Conditional logic
- Looping
- HTTP API calls

## Development Notes
- Two syntax approaches are showcased: tag-based and script-based
- Examples cover fundamental web application operations

## Ports
- Web Application: 8888
- Database: 3306


