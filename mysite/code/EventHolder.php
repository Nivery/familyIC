<?php
class EventHolder extends ParentPage {

	public static $db = array(
	
	);

	public static $has_one = array(
	'Icon' => 'Image'
	);

	public static $allowed_children = array (
	'EventPage'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new UploadField('Icon'));

		return $fields;
	}


}

class EventHolder_Controller extends ParentPage_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public function getAllEvents(){
		$events = EventPage::get()->sort('Date', 'ASC')->limit(5);
		return $events;

	}


}