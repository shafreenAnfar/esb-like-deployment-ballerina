import ballerina/http;
import ballerina/lang.runtime;
import approach1/service_1;
import approach1/service_2;
import ballerina/io;

http:Listener consolidatorListener = check new(9090);

public function main() returns error? {
    service_1:Service1 s1 = new;
    service_2:Service2 s2 = new;

    check consolidatorListener.attach(s1, "service1");
    check consolidatorListener.attach(s2, "service2");
    
    check consolidatorListener.'start();

    io:println("Consolidator service started on port 9090");
    runtime:registerListener(consolidatorListener);
}
