package com.neo.util;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.UnavailableSecurityManagerException;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.neo.entity.ShiroPrincipal;
import com.neo.entity.UserInfo;

public class UserUtils {
	
		public final static int iterations = 2;
		public final static int salt_size = 8;

		/**
		 * 获取授权主要对象
		 */
		public static Subject getSubject(){
			return SecurityUtils.getSubject();
		}
		
	
		
		/**
		 * 获取Shiro Session
		 * @return
		 */
		public static Session getSession(){
			try{
				Subject subject = SecurityUtils.getSubject();
				Session session = subject.getSession(false);
				if (session == null){
					session = subject.getSession();
				}
				if (session != null){
					return session;
				}
			}catch (InvalidSessionException e){
				
			}
			return null;
		}
		
		// ============== User Cache ==============
		
		public static Object getCache(String key) {
			return getCache(key, null);
		}
		
		public static Object getCache(String key, Object defaultValue) {
//			Object obj = getCacheMap().get(key);
			Object obj = getSession().getAttribute(key);
			return obj==null?defaultValue:obj;
		}

		public static void putCache(String key, Object value) {
//			getCacheMap().put(key, value);
			getSession().setAttribute(key, value);
		}

		public static void removeCache(String key) {
//			getCacheMap().remove(key);
			getSession().removeAttribute(key);
		}
	public static String encodePassword(String password,String username,String salt){
		return new Md5Hash(password,username+salt,iterations).toHex();
	}
	public static UserInfo getCurrentUser() {
		Subject subject = SecurityUtils.getSubject();
		UserInfo user = (UserInfo) subject.getPrincipal();
		return user;
	}
	public static ShiroPrincipal getPrincipal(){
		try{
			Subject subject = SecurityUtils.getSubject();
			ShiroPrincipal principal = (ShiroPrincipal) subject.getPrincipal();
			if (principal != null){
				return principal;
			}
//			subject.logout();
		}catch (UnavailableSecurityManagerException e) {
			
		}catch (InvalidSessionException e){
			
		}
		return null;
	}
	public static UserInfo encodePassword(UserInfo user){
		String password = user.getPassword();
		String username = user.getUsername();
		String salt = CommonUtils.randomBase62(salt_size);
		String password_cipherText = encodePassword(password,username,salt);
		user.setPassword(password_cipherText);
		user.setSalt(salt);
		System.out.println(password_cipherText+"  "+salt);
		return user;
	}
	
		
	public static void main(String[] args) {
		String password = "111111";
		String username = "yanao";
		String salt = "6WbUBh4B";
		String password_cipherText= encodePassword(password,username,salt); 
		System.out.println(password_cipherText);
//		//a6a3f8e27196e4eaf81b01afe0a6d7df 5d6fdb4d1f0323dfb151825aeb8b7ab2
		UserInfo user = new UserInfo();
		user.setPassword(password);
		user.setUsername(username);
		encodePassword(user);
	}

		
	
}
