package com.neo.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ShiroPrincipal implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5928460133450678232L;
	
	private UserInfo user;
	
	/**
	 * 用户权限列表
	 */
	
	private List<String> authorities = new ArrayList<String>();
	/**
	 * 用户角色列表
	 */
	private List<String> roles = new ArrayList<String>();
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public List<String> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(List<String> authorities) {
		this.authorities = authorities;
	}
	public List<String> getRoles() {
		return roles;
	}
	public void setRoles(List<String> roles) {
		this.roles = roles;
	}
}
