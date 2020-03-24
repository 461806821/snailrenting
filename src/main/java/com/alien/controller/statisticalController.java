package com.alien.controller;

import com.alien.service.CollectionService;
import com.alien.service.HouseService;
import com.alien.service.OrderService;
import com.alien.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by alien on 2020/3/21 0021 17:51
 */
@Log4j2
@Controller
@RequestMapping("/statistical")
public class statisticalController {

    @Autowired
    private UserService userService;
    @Autowired
    private HouseService houseService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private CollectionService collectionService;


}
