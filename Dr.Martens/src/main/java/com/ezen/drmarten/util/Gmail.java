package com.ezen.drmarten.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator {
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("kojingon97@gmail.com", "lrplomzuprdvmmuj");
	}
}
