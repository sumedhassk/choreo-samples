import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Employees",
	id: "Employees-30ed248d-c492-4ca7-94e7-1a19f2473047"
}
service /employees on new http:Listener(9090) {

    isolated resource function post .(@http:Payload Employee emp) returns int|error? {
        return addEmployee(emp);
    }

    isolated resource function get [int id]() returns Employee|error? {
        return getEmployee(id);
    }

    isolated resource function get .() returns Employee[]|error? {
        return getAllEmployees();
    }

    isolated resource function put .(@http:Payload Employee emp) returns int|error? {
        return updateEmployee(emp);
    }

    isolated resource function delete [int id]() returns int|error? {
        return removeEmployee(id);       
    }
    
}