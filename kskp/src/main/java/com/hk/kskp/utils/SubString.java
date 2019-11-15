package com.hk.kskp.utils;

public class SubString {
		public static String sub(String date) {
			String str = date.substring(6)+"년"+" "+date.substring(0, 2)+"월"+" "+date.substring(3, 5)+"일";
			return str;	
		}
}
