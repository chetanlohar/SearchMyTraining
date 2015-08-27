package com.junit;

import org.junit.Test;
public class TestJunit {
	
	String message = "Hello world!";
	MessageUtil messageUtil = new MessageUtil(message);
	
	@Test
	public void testPrintMessage()
	{
		org.junit.Assert.assertEquals(message, messageUtil.printMessage());
	}
}
