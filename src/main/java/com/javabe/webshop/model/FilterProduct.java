package com.javabe.webshop.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class FilterProduct {
    private String search;
    private int priceGT;
    private int priceLT;
    private String gender;
    private int rate;
    private String type;

    @Override
    public String toString() {
        return "FilterProduct{" +
                "search='" + search + '\'' +
                ", priceGT=" + priceGT +
                ", priceLT=" + priceLT +
                ", gender='" + gender + '\'' +
                ", rate=" + rate +
                ", type='" + type + '\'' +
                '}';
    }
}
