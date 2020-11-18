package utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class AlgCripto {
	public String criptoMD5(String senha) throws NoSuchAlgorithmException,
	UnsupportedEncodingException
	{
		MessageDigest algoritoCripto = MessageDigest.getInstance("MD5");
		byte criptoMD5[] = algoritoCripto.digest(senha.getBytes("UTF-8"));
		StringBuilder hex = new StringBuilder();
		for(byte x : criptoMD5)
			hex.append(String.format("%02X", 0xFF & x));
		String shex = hex.toString();
		return shex;
	}

}
