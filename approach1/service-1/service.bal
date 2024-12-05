import ballerina/http;
import ballerina/io;

public isolated service class Service1 {
    *http:Service;

    public function init() {
        io:println("Service 1 initialized");
    }

    isolated resource function get hello() returns string {
        return "Hello, World! from Service 1";
    }
}