package com.quanlysinhvien.service;

import java.util.List;

public interface IGenericService<T> {
    List<T> getAll();
    Long insert(T t);
    void update(T t);
    void delete(int id);
}
