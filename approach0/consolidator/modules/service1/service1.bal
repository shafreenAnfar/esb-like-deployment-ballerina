import ballerina/io;
import approach0/consolidator.clistener;

service /service1 on clistener:consolidatorListener {

    function init() {
        io:println("Service 1 started");
    }

    resource function get hello() returns string {
        return "Hello from Service 1!";
    }
}
