package ru.netology.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.repository.SqlRepository;

import java.util.List;

@RestController
public class Controller {

    private final SqlRepository repository;

    @Autowired
    public Controller(SqlRepository repository) {
        this.repository = repository;
    }

    @GetMapping("products/fetch-product")
    public List<String> getString(@RequestParam("name") String name) {
        return repository.getProductName(name);
    }
}
