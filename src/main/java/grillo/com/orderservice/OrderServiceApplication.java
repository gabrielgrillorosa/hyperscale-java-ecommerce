package grillo.com.orderservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class OrderServiceApplication {

    public static void main(String[] args) {
        System.out.println("--- JVM: Starting SpringApplication.run() ---");
        SpringApplication.run(grillo.com.orderservice.OrderServiceApplication.class, args);
        System.out.println("--- JVM: SpringApplication.run() finished (or context closed) ---");
    }

    @Bean
    public String applicationName() {
        return "OrderService";
    }
}