package com.neo.sevice.impl;

import javax.annotation.Resource;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.stereotype.Service;

import com.neo.dao.UserInfoMapper;
import com.neo.entity.UserInfo;
import com.neo.sevice.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Resource
    private UserInfoMapper dao;
    @Override
    public UserInfo findByUsername(String username) {
        System.out.println("UserInfoServiceImpl.findByUsername()");
        return dao.findByUsername(username);
    }
    public static void main(String[] args) {  
        String hashAlgorithmName = "MD5";//加密方式  
        Object crdentials = "123456";//密码原值  
        Object salt = "8d78869f470951332959580424d4bf4f";//盐值  
        int hashIterations = 1024;//加密1024次  
        Object result = new SimpleHash(hashAlgorithmName,crdentials,salt,hashIterations);  
        System.out.println(result);  
    }  
}