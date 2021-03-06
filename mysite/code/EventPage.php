<?php
class EventPage extends ParentPage {

	public static $db = array(
	'Date' => 'Date',

	);

	public static $has_one = array(
	'Picture' => 'Image'
	);

	public function getCMSFields(){

	$fields = parent::getCMSFields();

	$dateField = DateField::create('Date')->setConfig('showcalendar', true);
	$fields->addFieldToTab('Root.Main', $dateField);

	$fields->addFieldToTab('Root.Main', new UploadField('Picture'));
	

	return $fields;
	}

}
class EventPage_Controller extends ParentPage_Controller {

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
	public static $allowed_actions = array (
	);


}