package com.neo.dao;

import com.neo.entity.UserInfo;

public interface UserInfoMapper {
    /**通过username查找用户信息;*/
    public UserInfo findByUsername(String username);
}