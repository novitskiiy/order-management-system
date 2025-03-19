# "Order Management System"

## Description of task:
Using Java + Spring, develop a REST API for managing orders in an online store. 
The system should allow creating, viewing, updating, and deleting orders, as well as storing information about users and products. 
The code should follow best practices (validation, testing, documentation, logging, etc.)

## Functional requirements:
### Users:
* Create a new user (registration).
* Get information about the user.
* Delete a user.
### Products:
* Add a new product.
* Get a list of products.
* Delete a product.
### Orders:
* Create a new order (the user selects products, their quantity).
* Get order details by identifier.
* Cancel an order.
* Get a list of all orders for a specific user.
### Additionally: 
* Configure security.
* Use Docker.
* Add caching.

## Testing User endpoints
### Create a new user (registration).
POST `http://localhost:8080/users`
JSON
`{
  "email": "artem@example.com",
  "name": "Artem Honcharov"
}`
![imgonline-com-ua-GIF-Animation-jPWhG5xxRyZ76sU](https://github.com/user-attachments/assets/4a60437b-9732-454c-bef8-26e14fe90d86)
### Get information about the user.
GET `http://localhost:8080/users/11`

![imgonline-com-ua-GIF-Animation-0PT3cdlIV9zHY](https://github.com/user-attachments/assets/8dedda14-71bf-4a2d-b9bf-9069b21da68b)
### Delete a user.
DELETE `http://localhost:8080/users/11`

## Testing Products endpoints:
### Add a new product.
POST `http://localhost:8080/products`
JSON
`{
  "name": "Iphone 22",
  "price": 1200.00
}`
![imgonline-com-ua-GIF-Animation-DWQGGsIaOZ9](https://github.com/user-attachments/assets/a1e8e5fe-d2b5-4c08-92ed-addca1d5124e)
### Get a list of products.
GET `http://localhost:8080/products`
![imgonline-com-ua-GIF-Animation-YyHhTPfYSw33sg](https://github.com/user-attachments/assets/4781106b-6f69-44cd-a82e-97f4205919e4)
### Delete a product.
DELETE `http://localhost:8080/products/22`

## Testing Order endpoints: (previously basic authorization required)
### Create a new order (the user selects products, their quantity).
POST `http://localhost:8080/orders?userId=3`
JSON
`[
  {
    "productId": 9,
    "quantity": 2
  },
  {
    "productId": 6,
    "quantity": 1
  }
]`
![imgonline-com-ua-GIF-Animation-3XKdJv9oVvI](https://github.com/user-attachments/assets/2ba20d75-614e-41a6-a043-2a462148e1c0)
### Get order details by identifier.
GET `http://localhost:8080/orders/7`
![imgonline-com-ua-GIF-Animation-5adPAmzLVLDbwP](https://github.com/user-attachments/assets/9d0339c7-d1bd-4452-9664-16b2c75dff68)
### Cancel an order.
DELETE `http://localhost:8080/orders/7`
### Get a list of all orders for a specific user.
GET `http://localhost:8080/orders/user/1`
![imgonline-com-ua-GIF-Animation-rXajxERB8id](https://github.com/user-attachments/assets/72571a23-beea-4a90-9efe-eea6a1bf23b0)

## Additional
Realized documentation of 3 Controllers (UserController, ProductController, OrderController) for Swagger UI 
`http://localhost:8080/swagger-ui.html`

![imgonline-com-ua-GIF-Animation-OgtoyjqyRQE9QQ](https://github.com/user-attachments/assets/c39d0649-accb-4093-a5bf-ed569ed1a09a)

Configure security
Basic authorization is configured, which is necessary for interacting with order requests.
If we try to get information about all user orders without authorization, we will get 401 Unauthorized. After successful authorization, we will be able to receive information.
![imgonline-com-ua-GIF-Animation-db9P9cz2GFX](https://github.com/user-attachments/assets/0e7c791b-7a2e-42f9-88ab-9e9f4e40ace4)

