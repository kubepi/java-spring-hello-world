package org.examples.java.helloworld.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("/")
    public String helloWorld() {
        String podName = System.getenv("POD_NAME");
        String podNamespace = System.getenv("POD_NAMESPACE");
        String podIp = System.getenv("POD_IP");

        return "Hello Kubernetes World! Currently saying hello from: \n"
                + "Pod Name: " + podName + " \n"
                + "Pod Namespace: " + podNamespace + " \n"
                + "Pod IP Address: " + podIp + " \n";
    }
}
