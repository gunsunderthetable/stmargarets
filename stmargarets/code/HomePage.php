<?php
class HomePage extends Page {

    public static $db = array(
        "NumberOfNews" => "Text",
        "NumberOfEvents" => "Text",
        "EventHeader" => "Text",
        "NewsHeader" => "Text",
        "DonationHTMLSnippet" => "HtmlText"
    );

    public static $has_many = array(
        "Slides" => "Slide",
        "Boxes" => "Box"
    );  

    public function getCMSFields() {
      $fields = parent::getCMSFields();
        $fields->RemoveByName('Map');
        $gridFieldConfig = GridFieldConfig::create()->addComponents(
          new GridFieldSortableRows('SortOrder'),                         
          new GridFieldToolbarHeader(),
          new GridFieldAddNewButton('toolbar-header-right'),
          new GridFieldSortableHeader(),
          new GridFieldDataColumns(),
          new GridFieldPaginator(30),
          new GridFieldEditButton(),
          new GridFieldDeleteAction(),
          new GridFieldDetailForm()
        );

        $gridField = new GridField("Slides", "Slides", $this->Slides(), $gridFieldConfig);
        $fields->addFieldToTab("Root.Slides", $gridField);

        $gridFieldConfig = GridFieldConfig::create()->addComponents(
          new GridFieldSortableRows('SortOrder'),                         
          new GridFieldToolbarHeader(),
          new GridFieldAddNewButton('toolbar-header-right'),
          new GridFieldSortableHeader(),
          new GridFieldDataColumns(),
          new GridFieldPaginator(30),
          new GridFieldEditButton(),
          new GridFieldDeleteAction(),
          new GridFieldDetailForm()
        );

        $gridField = new GridField("Boxes", "Boxes", $this->Boxes(), $gridFieldConfig);
        $fields->addFieldToTab("Root.Boxes", $gridField);
        $fields->addFieldsToTab('Root.NewsAndEvents',new TextField("EventHeader","Events header"));
        $fields->addFieldsToTab('Root.NewsAndEvents',new TextField("NewsHeader","News header"));
        $fields->addFieldsToTab('Root.Donations',new TextAreaField("DonationHTMLSnippet","Donation HTML text"));


        return $fields;
        
        
    }
    

    public function getNews($num=3) {
        $num=$this->NumberOfNews;      
        if ($holder = BlogHolder::get()->First()) {
            return ($holder) ? BlogEntry::get()->filter('ParentID', $holder->ID)->sort('Date', 'DESC')->limit($num) : false;
        }
    }

    public function getNewsHolder() {
        if ($holder = BlogHolder::get()->First()) {
             return $holder;
        }
         
    }            

    public function getEvents($num=2) {
        //$num=$this->NumberOfEvents;      

        // uses the Calendar function
        if ($calendar = Calendar::get()->First()) {
            return $calendar->UpcomingEvents($num);
        } 
    }
    
    public function getEventsHolder() {
        if ($holder = Calendar::get()->First()) {
            return $holder;
        }
    }
    
}

class HomePage_Controller extends Page_Controller {
	
}
