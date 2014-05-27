package model;

import java.security.*;
import java.math.*;

public class Gravatar {
	public static String glink(String st) {
		String image = "";
		String has = md5(st.toLowerCase());
		String link = "http://www.gravatar.com/avatar.php?gravatar_id=";
		image = link + has;
		return image;
	}

	public static String hex(byte[] array) {

		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < array.length; ++i) {
			sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(
					1, 3));

		}
		return sb.toString();
	}

	static public String md5(String message) {
		String has = "";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			has = hex(md.digest(message.getBytes("CP1252")));
			return has;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return has;
	}
}
