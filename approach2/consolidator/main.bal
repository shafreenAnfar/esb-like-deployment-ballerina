import ballerina/io;
import ballerina/lang.runtime;
import approach2/common_listener;
import approach2/service_1 as _;
import approach2/service_2 as _;

public function main() returns error? {
    io:println("All services started");
    runtime:registerListener(common_listener:commonListener);
}
