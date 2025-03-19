package com.example.managementSystem.service;

import com.example.managementSystem.dto.OrderItemRequest;
import com.example.managementSystem.model.*;
import com.example.managementSystem.repository.OrderRepository;
import com.example.managementSystem.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OrderService {
    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    private final UserService userService;

    public Order createOrder(Long userId, List<OrderItemRequest> orderItemsRequest) {
        User user = userService.getUserById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));

        List<OrderItem> orderItems = orderItemsRequest.stream().map(req -> {
            Product product = productRepository.findById(req.getProductId())
                    .orElseThrow(() -> new RuntimeException("Product not found"));
            return OrderItem.builder()
                    .product(product)
                    .quantity(req.getQuantity())
                    .build();
        }).collect(Collectors.toList());

        Order order = Order.builder()
                .user(user)
                .orderItems(orderItems)
                .build();

        orderItems.forEach(item -> item.setOrder(order)); // Устанавливаем связь с заказом

        return orderRepository.save(order);
    }

    public Optional<Order> getOrderById(Long id) {
        return orderRepository.findById(id);
    }

    public List<Order> getOrdersByUser(Long userId) {
        User user = userService.getUserById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        return orderRepository.findByUser(user);
    }

    public void deleteOrder(Long id) {
        Order order = orderRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Order not found"));
        orderRepository.delete(order);
    }
}
