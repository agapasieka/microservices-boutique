# Microservices demo: Online Boutique 
This lab is based on [Online Boutique repo](https://github.com/GoogleCloudPlatform/microservices-demo/blob/main/README.md)

## Architecture Diagram
![architecture](docs/architecture.png)


| Service               | Language       | Description                                                                                                 |
|-----------------------|----------------|-------------------------------------------------------------------------------------------------------------|
| **frontend**          | Go             | Serves the website via an HTTP server. Automatically generates session IDs for users, no signup/login required. |
| **cartservice**       | C#             | Manages the user's shopping cart by storing and retrieving items from Redis.                               |
| **productcatalogservice** | Go         | Provides a product list from a JSON file, supports search functionality, and fetches individual products.  |
| **currencyservice**   | Node.js        | Converts currency amounts using real rates from the European Central Bank. It's the highest QPS service.   |
| **paymentservice**    | Node.js        | Mock service for charging credit cards and returning a transaction ID.                                     |
| **shippingservice**   | Go             | Estimates shipping costs and ships items to the provided address (mock).                                   |
| **emailservice**      | Python         | Sends order confirmation emails to users (mock).                                                          |
| **checkoutservice**   | Go             | Orchestrates the order process by retrieving the cart, processing payment, handling shipping, and sending notifications. |
| **recommendationservice** | Python     | Suggests related products based on items in the user's cart.                                              |
| **adservice**         | Java           | Provides contextual text ads based on specified keywords.                                                 |
| **loadgenerator**     | Python/Locust  | Simulates realistic user shopping behaviors by sending requests to the frontend.                          |



## Deployment

- [Minikube](https://github.com/agapasieka/microservices-boutique/blob/master/docs/minikube-deploy.md)
- [GKE](https://github.com/agapasieka/microservices-boutique/blob/master/docs/gke-deploy.md)
