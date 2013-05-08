<?php
class DoctorPage extends ParentPage {

	public static $db = array(
	'Name' => 'Text',
	'Specialty' => 'Text',
	'PhoneNo' => 'Text',
	'Address' => 'Text',
	'Clinic' => 'Text',
	'Website' => 'Text',
	'FilterText' => 'Text',
	);

	public static $has_one = array(
	'Picture' => 'Image'
	);

	public function getCMSFields(){

		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new TextField('Name'));
		$fields->addFieldToTab('Root.Main', new TextField('Specialty'));
		$fields->addFieldToTab('Root.Main', new TextField('PhoneNo'));
		$fields->addFieldToTab('Root.Main', new TextField('Address'));
		$fields->addFieldToTab('Root.Main', new TextField('Clinic'));
		$fields->addFieldToTab('Root.Main', new TextField('Website'));
		$fields->addFieldToTab('Root.Main', new TextField('FilterText'));
		
		return $fields;

	}
	/*
	public function getFilterText(){
		$filterText = '';
		$tempArray = array('Name', 'Specialty', 'PhoneNo', 'Address', 'Clinic', 'FilterText');
		foreach ($tempArray as $temp){
			if (isset($this->$temp)){
				if ($this->$temp){
					$filterText = $this->$temp . ' ';
				}
			}
		}
	 	return $filterText;
	}
	*/


}

class DoctorPage_Controller extends ParentPage_Controller {

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
	/*
	public function getFilterText(){
		$filterText = '' . $this->Name . ' ' . $this->Specialty . ' ' . $this->PhoneNo . ' ' . $this->Address . ' ' . $this->Clinic . ' ' . $this->Website . ' ' . $this->FilterText;
		return $filterText;
	}
	*/
	

	
	

}