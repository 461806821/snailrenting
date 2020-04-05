package com.alien.mapper;

import com.alien.entity.SnailOrder;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailOrderMapper {

    List<SnailOrder> list(SnailOrder record);

    SnailOrder select(SnailOrder record);

    void update(SnailOrder record);

    void insert(SnailOrder record);

    void delete(SnailOrder record);

    void updateState(SnailOrder record);

    void updatePayState(SnailOrder record);

}