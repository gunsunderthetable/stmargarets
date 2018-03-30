<?php

class BlogEntryExtension extends DataExtension {

    private static $has_one = array(
        'BlogImage' => 'Image'
      );

    public function updateCMSFields(FieldList $fields) {
          $fields->addFieldToTab('Root.Main', new UploadField('BlogImage', 'Blog Image'),'Content');

    }

    public function getMyBlogSiblings() {
         if ($blogSiblings = BlogEntry::get()->filter('ParentID', $this->owner->ParentID)->sort('Date', 'DESC')) {
            return $blogSiblings;
         } 
    } 
    
    
}