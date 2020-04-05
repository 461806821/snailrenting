package com.alien.mapper;

import com.alien.entity.SnailBanner;
import com.alien.entity.SnailRoom;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailBannerMapper {

    List<SnailRoom> getBannerHouses();

    List<SnailBanner> list(SnailBanner record);

    void insert(SnailBanner record);

    void delete(SnailBanner record);

}