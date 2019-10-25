package com.hk.kskp.utils;

import java.util.Random;

public class FindUtil {

	public static String getNewPwd() throws Exception{
		char[] charSet = {'0','1','2','3','4','5','6','7','8','9',
						'A','B','C','D','E','F','G','H','I','J','K',
						'L','M','N','O','P','Q','R','S','T','U','V',
						'W','X','Y','Z',
						'!','@','#','$','%','^','&','*'};
		
		StringBuffer newkey= new StringBuffer();
		
		for(int i =0; i<10; i++) {
			int idx=(int) (charSet.length * Math.random());
			newkey.append(charSet[idx]);
		}
		
		
		return newkey.toString();
		}
	
	public static String createKey() {
		StringBuffer key= new StringBuffer();
		Random rnd = new Random();
		
		for(int i =0; i<10; i++) {
			int index = rnd.nextInt(3);
			
			switch (index) {
			case 0:
				key.append((char)((int)(rnd.nextInt(26))+97));
				break;
			case 1:
				key.append((char)((int)(rnd.nextInt(26))+65));
				break;
			case 2:
				key.append((rnd.nextInt(10)));
				break;
			}
		}
		return key.toString();
	}
}
