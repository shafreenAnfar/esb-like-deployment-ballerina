import approach2/common_listener;
import ballerina/io;

service /service1 on common_listener:commonListener {

    function init() {
        io:println("Service 1 started");
    }

    resource function get hello() returns string {
        return "Hello from Service 1!";
    }
}