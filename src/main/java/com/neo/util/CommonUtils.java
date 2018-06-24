package com.neo.util;

import java.security.SecureRandom;
import java.util.Date;

import org.springframework.util.StringUtils;

public class CommonUtils {
	
	private static SecureRandom random = new SecureRandom();
	private static final char[] BASE62 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".toCharArray();
	private static final String pointString = ".";
	public static String randomFileName(String orgFileName) {
		String result = new Date().getTime()+randomBase62(4);
		if(StringUtils.isEmpty(orgFileName)||orgFileName.indexOf(pointString)<0) return result;
		result += pointString+orgFileName.substring(orgFileName.lastIndexOf(pointString) + 1);
		return result;
	}
	/**
	 * 基于Base62编码的SecureRandom随机生成bytes.
	 */
	public static String randomBase62(int length) {
		byte[] randomBytes = new byte[length];
		random.nextBytes(randomBytes);
		char[] chars = new char[randomBytes.length];
		for (int i = 0; i < randomBytes.length; i++) {
			chars[i] = BASE62[((randomBytes[i] & 0xFF) % BASE62.length)];
		}
		return new String(chars);
	}
	public static void main(String[] args) {
		System.out.println(randomFileName("sss.xls"));
		System.out.println(randomFileName("sss.xls.doc"));
	}
}
