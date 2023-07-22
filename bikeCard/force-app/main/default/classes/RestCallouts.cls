public with sharing class RestCallouts {
    public static HttpResponse getAnimals(){
        //1. Prepare HttpRequest
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
        //2. Prepare Internet
        Http http = new Http();
        //3. Send the request over to receive the response
        HttpResponse response = http.send(request);
        //4. Process the response
        if(response.getStatusCode()==200){
            System.debug(response.getStatus());
            System.debug(response.getBody()); 
        }
        return response;
    }

    public static HttpResponse getBlogs(){
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndPoint('https://mockyard.herokuapp.com/blogs');
        Http http = new Http();
        HttpResponse response = http.send(request);
        if(response.getStatusCode()==200){
            System.debug(response.getBody()); 
            String jsonString = response.getBody();
            // JSON.deserialize(jsonString, apexType);
        }
        return response;
    }
}