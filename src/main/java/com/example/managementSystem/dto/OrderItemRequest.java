package com.example.managementSystem.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderItemRequest {
    private Long productId;
    private int quantity;
}
