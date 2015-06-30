package com.searchmytraining.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class WhiteList {

	public static void main(String[] args) {
		
		try {
			Scanner s = new Scanner(new File("classpath:whitelist.txt"));
			System.out.println(s.nextLine());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

	}

}
