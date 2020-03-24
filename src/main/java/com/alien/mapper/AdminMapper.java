package com.alien.mapper;

import com.alien.entity.SnailAdmin;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by alien on 2020/3/19 0019 13:31
 */
@Repository
public interface AdminMapper {

    List<SnailAdmin> list(SnailAdmin SnailAdmin);

    SnailAdmin select(SnailAdmin SnailAdmin);

    void insert(SnailAdmin SnailAdmin);

    void update(SnailAdmin SnailAdmin);

    void delete(SnailAdmin SnailAdmin);
}
