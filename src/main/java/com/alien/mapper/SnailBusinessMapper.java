package com.alien.mapper;

import com.alien.entity.SnailBusiness;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SnailBusinessMapper {

    SnailBusiness select(SnailBusiness record);

    List<SnailBusiness> list(SnailBusiness record);

    void update(SnailBusiness record);

    void insert(SnailBusiness record);

    void delete(SnailBusiness record);

    Long count(SnailBusiness record);

    void updateState(SnailBusiness record);

}