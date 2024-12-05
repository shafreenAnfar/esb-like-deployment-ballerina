import ballerina/http;
import ballerina/io;

public listener http:Listener commonListener = check new(9090);

function init() {
    io:println("Common listener started on port 9090");
}
