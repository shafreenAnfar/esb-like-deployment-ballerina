import ballerina/http;

public listener http:Listener consolidatorListener = check new(9090);
