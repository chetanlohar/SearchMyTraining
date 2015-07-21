package com.searchmytraining.service;

import com.searchmytraining.entity.GroupRequestEntity;

public interface EmailNotificationService {
	
	/**
	 * Send Notification of Group Training Request
	 * @param grouprequestentity
	 */
	public void sendGroupTrainingRequestNotification(GroupRequestEntity grouprequestentity);

}
