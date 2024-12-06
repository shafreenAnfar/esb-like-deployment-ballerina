import ballerina/io;
import approach0/consolidator.clistener;

service /service2 on clistener:consolidatorListener {

    function init() {
        io:println("Service 2 started");
    }

    resource function get hello() returns string {
        return "Hello from Service 2!";
    }
}
