package com.example.managementSystem.controller;

import com.example.managementSystem.dto.OrderItemRequest;
import com.example.managementSystem.model.Order;
import com.example.managementSystem.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/orders")
@RequiredArgsConstructor
@Tag(name = "Orders", description = "API для управления заказами")
public class OrderController {
    private final OrderService orderService;

    @PostMapping
    @Operation(summary = "Создать заказ", description = "Создаёт новый заказ для указанного пользователя.")
    public ResponseEntity<Order> createOrder(
            @RequestParam Long userId,
            @RequestBody List<OrderItemRequest> orderItems
    ) {
        return ResponseEntity.ok(orderService.createOrder(userId, orderItems));
    }

    @GetMapping("/{id}")
    @Operation(summary = "Получить заказ по ID", description = "Возвращает детали заказа по его идентификатору.")
    public ResponseEntity<Order> getOrderById(@PathVariable Long id) {
        Optional<Order> order = orderService.getOrderById(id);
        return order.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @GetMapping("/user/{userId}")
    @Operation(summary = "Получить заказы пользователя", description = "Возвращает список всех заказов указанного пользователя.")
    public ResponseEntity<List<Order>> getOrdersByUser(@PathVariable Long userId) {
        return ResponseEntity.ok(orderService.getOrdersByUser(userId));
    }

    @DeleteMapping("/{id}")
    @Operation(summary = "Удалить заказ", description = "Удаляет заказ по его ID.")
    public ResponseEntity<Void> deleteOrder(@PathVariable Long id) {
        orderService.deleteOrder(id);
        return ResponseEntity.noContent().build();
    }
}
