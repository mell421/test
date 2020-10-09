package fr.dsc.tp.pwatp2;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class TempVegetableRep implements VegetableRep {

    public ArrayList<Vegetable> vegetableList;  

     @Override
    public List<Vegetable> findAll() {
        return this.vegetableList;
    }

    @Override
    public VegetableRep add(Vegetable v) {
        this.vegetableList.add(v);
        return this;
    }
    
    public TempVegetableRep() {
        vegetableList = new ArrayList<>();
        this.add(new Vegetable("banane", "yellow", 1.0));
        this.add(new Vegetable("pomme", "red", 2.0));
        this.add(new Vegetable("pasteque", "green", 5.0));
    }
}
