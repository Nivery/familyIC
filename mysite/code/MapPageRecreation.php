<?php
class MapPageRecreation extends ParentPage {

	public static $db = array(
	'MapLink' => 'Text'
	);

	public static $has_one = array(
	'Logo' => 'Image'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new TextField('MapLink'));

		return $fields;
	}


}
class MapPageRecreation_Controller extends ParentPage_Controller {

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