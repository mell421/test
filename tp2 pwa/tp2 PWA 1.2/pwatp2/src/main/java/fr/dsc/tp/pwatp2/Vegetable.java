package fr.dsc.tp.pwatp2;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Vegetable {
    
    String name;
    String color;
    Double price;

    @Id
    @GeneratedValue
    public long id;

    public Vegetable() {
    }

    public Vegetable(String name, String color, Double price) {
        this.name = name;
        this.color = color;
        this.price = price;
    }

	public String getColor() {
        return color;
    }

    public String getName() {
        return name;
    }

    public Double getPrice() {
        return price;
    }
    
    public void setColor(String color) {
        this.color = color;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(Double price) {
        this.price = price;
    }   
}