// Response types for the API

type HelloResponse record {|
    string message;
    int timestamp;
|};

type EchoResponse record {|
    string echo;
    string method;
|};

type StatusResponse record {|
    string status;
    string version;
|};
