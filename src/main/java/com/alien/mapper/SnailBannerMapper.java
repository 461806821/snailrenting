package com.alien.mapper;

import com.alien.entity.SnailBanner;
import com.alien.entity.SnailRoom;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailBannerMapper {

    List<SnailRoom> getBannerHouses();

    SnailBanner select(SnailBanner record);

    List<SnailBanner> list(SnailBanner record);

    void update(SnailBanner record);

    void insert(SnailBanner record);

    void delete(SnailBanner record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailBanner record);

    int insertSelective(SnailBanner record);

    SnailBanner selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailBanner record);

    int updateByPrimaryKey(SnailBanner record);
}