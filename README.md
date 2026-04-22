## Hyperscale Java Commerce Lab

This repository captures the hyperscale ecommerce lab that scales a Spring Boot 4.0.3/Java 25+ system to support 100 million requests per minute. The emphasis is on architecting from the JVM upward—virtual threads, fast boot, distributed perimeter, high-scale state, Kafka-based messaging, rigorous observability, and production-ready SRE practices.

The lab begins with a multi-module monolith so that every developer understands how a single Spring Boot execution behaves under load. We apply Domain-Driven Design to carve bounded contexts out of that modular monolith; as contexts become well understood, they evolve into a distributed mesh of microservices. This approach minimizes premature distribution, keeps the JVM surface area manageable during early experimentation, and lets the team iterate toward a secure, scalable mesoscale architecture once the domains are defined.

## Summary
Hands-on exploration of how to build, secure, optimize, and operate a hyperscale commerce platform. The lab blends JVM tuning, distributed systems patterns, performance engineering, and site reliability rigor so that every layer—auth, order, inventory, gateway—survives relentless traffic and evolving requirements.


## Project Overview
1. **JVM and Spring Foundations** – Master virtual threads, class data sharing, GraalVM natives, and Spring module boundaries before splitting into services.
2. **Distributed Perimeter** – Centralized identity (Keycloak), gateway-based request control, and token propagation that keep every entry point safe.
3. **High-Scale State** – Soft reservations, lock-free journals, Redis caches, and distributed locking to keep inventory accurate under flash sales.
4. **Asynchronous Messaging** – Saga patterns, transactional outbox, and Kafka exactly-once semantics ensure orders never get lost or duplicated.
5. **Performance & Observability** – Tuned JDBC pools, low-latency GC, profiling, tracing, metrics, and dashboards that expose the 100M RPM reality.
6. **Hyperscale Operations** – Docker, Kubernetes (HPA, probes, blue/green, canaries), multi-region deployments, and zero-downtime migrations for Day-2 readiness.

## Key Topics Covered
- **Virtual threads vs. platform threads** and Loom philosophy for massive concurrency.
- **Class Data Sharing (CDS)** and native images to shrink warm-up times.
- **Keycloak and OAuth2/OpenID Connect** as the centralized IdP for the perimeter.
- **Spring Cloud Gateway** with rate limiting, filters, and Resilience4j.
- **Soft reservation systems**, lock-free journals, Redis caching, Redlock, and fencing tokens.
- **Kafka exactly-once**, transactional outbox, Saga choreography/orchestration, retry topics, DLT, and schema evolution.
- **Performance tuning** (HikariCP, ZGC/Shenandoah, async-profiler, JFR, HTTP/2, CDN design).
- **Contract testing (Pact/Cloud Contract)**, Testcontainers, chaos engineering, OpenTelemetry/Tempo/Loki observability suite.
- **SRE practices** including HPA driven by Kafka lag, blue/green/canary, multi-region active-active, secrets management, and chaos readiness.

## Sectioned Learning Path
| Section | Focus |
| --- | --- |
| **Core JVM & Spring** | Boot lifecycle, DDD boundaries, logging, validation, and throughput benchmarking for the auth perimeter. |
| **Distributed Perimeter** | Keycloak, gateway, RBAC, service discovery, filters, circuit breakers, and rate limiting. |
| **High-Scale State** | Inventory reservations, locking strategies, caching, queueing, sharding, and throughput testing. |
| **Asynchronous Messaging** | Order API, Kafka, outbox, saga patterns, compensations, idempotent consumers, and schema evolution. |
| **Performance Engineering** | HikariCP tuning, GC, thread pinning, profiling, HTTP/2, Kafka batching, and CDN patterns. |
| **Advanced Testing & Observability** | Contract tests, integration suites, chaos experiments, tracing, logging, metrics, and alerting. |
| **Hyperscale Operations** | Docker/K8s deployments, HPA, migrations, blue/green/canary, multi-region, secrets, and chaos reviews. |

## Getting Started
### Prerequisites
- Java 21 or newer (Gradle/Maven target aligned with Java 21+).  
- Maven 3.9+.  
- Docker + Kubernetes CLI if you plan to run the lab end-to-end.

### Build
```bash
mvn -q compile
```

### Run
```bash
mvn -q spring-boot:run
```

## Non-Functional Constraints
- Load test the system up to 100 million requests per minute.
- Keep every service behind the secured perimeter and propagate tokens securely.
- Maintain zero downtime during deployments and database migrations.
- Correlate metrics, traces, and logs to keep MTTR minimal during incidents.
