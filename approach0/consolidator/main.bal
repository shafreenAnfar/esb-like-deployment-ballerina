import ballerina/io;
import ballerina/lang.runtime;
import approach0/consolidator.clistener;
import approach0/consolidator.service1 as _;
import approach0/consolidator.service2 as _;

public function main() {
    io:println("Started all the services");
    runtime:registerListener(clistener:consolidatorListener);
}
