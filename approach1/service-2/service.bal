import ballerina/http;
import ballerina/io;

public isolated service class Service2 {
    *http:Service;

    public function init() {
        io:println("Service 2 initialized");
    }

    isolated resource function get hello() returns string {
        return "Hello, World! from Service 2";
    }
}