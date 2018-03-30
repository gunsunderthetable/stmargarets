<?php

class SiteConfigExtension extends DataExtension {
    private static $db = array(
        'FooterLinks' => 'Text',
        'HeaderLinks' => 'Text',
        'TwitterLink' => 'Text',
        'FacebookLink' => 'Text',
        'YoutubeLink' => 'Text',
        'SnapchatLink' => 'Text',
        'LinkedinLink' => 'Text',
        'FlickrLink' => 'Text',
        'GoogleAnalytics' => 'Varchar(20)',
        'Email' => 'Text',
        'Phone' => 'Text',
        'Address' => 'HTMLText'
    );
    
    private static $has_one = array(
        'Favicon' => 'Image'
    );

    public function updateCMSFields(FieldList $fields)  {

        $fields->addFieldToTab('Root.Main', new TextField('GoogleAnalytics', 'Google analytics ID'));

        $fields->addFieldToTab('Root.SocialMedia', new TextField('TwitterLink', 'link to Twitter (include http)'));
        $fields->addFieldToTab('Root.SocialMedia', new TextField('FacebookLink', 'link to Facebook (include http)'));
        $fields->addFieldToTab('Root.SocialMedia', new TextField('YoutubeLink', 'link to Youtube (include http)'));
        $fields->addFieldToTab('Root.SocialMedia', new TextField('FlickrLink', 'link to Flickr (include http)'));
        $fields->addFieldToTab('Root.ChurchDetails', new TextField('Email', 'Email'));
        $fields->addFieldToTab('Root.ChurchDetails', new TextField('Phone', 'Phone'));
        $fields->addFieldToTab('Root.ChurchDetails', new HTMLEditorField('Address', 'Address'));


        $fields->addFieldToTab('Root.Footer', new TextareaField('FooterLinks', 'Footer links - one link per line. The format is: Page or external web address&lt;space&gt;Text to use as the link<br>For example - /about-us About our company <br>or http://www.google.co.uk Google'));
    }
    

}
