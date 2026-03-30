import ballerina/http;
import ballerina/time;

// Simple Hello World Test API Service
service /api on httpListener {

    // Basic hello world endpoint
    resource function get hello() returns HelloResponse {
        return {
            message: "Hello World!",
            timestamp: time:utcNow()[0]
        };
    }

    // Echo endpoint - returns what you send
    resource function get echo(@http:Query string text = "default") returns EchoResponse {
        return {
            echo: text,
            method: "GET"
        };
    }

    // POST echo endpoint
    resource function post echo(@http:Payload string text) returns EchoResponse {
        return {
            echo: text,
            method: "POST"
        };
    }

    // Health check endpoint
    resource function get health() returns StatusResponse {
        return {
            status: "UP",
            version: "1.0.0"
        };
    }

    // Greeting with path parameter
    resource function get greet/[string name]() returns string {
        return string `Hello, ${name}!`;
    }
}
