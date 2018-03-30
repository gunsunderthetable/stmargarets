<?php

class HtmlTemplatePage extends Page {
            public static $db = array(
                'HTMLSnippet' => 'HTMLText'
            ); 
   
            private static $hide_ancestor = 'Page';

            public function getCMSFields() {
                $fields = parent::getCMSFields();
                $fields->addFieldToTab('Root.Main', new TextAreaField("HTMLSnippet", "HTML code"), "Content");  
                
                return $fields; 
            }     	

}

class HtmlTemplatePage_Controller extends Page_Controller {

	
}
