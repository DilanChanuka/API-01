import ballerina/http;

// HTTP listener for the test API
listener http:Listener httpListener = check new (servicePort);
