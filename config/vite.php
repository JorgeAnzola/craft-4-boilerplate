<?php

use craft\helpers\App;

return [

    /**
     * @var bool Should the dev server be used?
     */
     'useDevServer' => App::env('DEV_MODE'),
 
     /**
      * @var string File system path (or URL) to the Vite-built manifest.json
      */
     'manifestPath' => '@webroot/dist/manifest.json',
 
     /**
      * @var string The public URL to the dev server (what appears in `<script src="">` tags
      */
     'devServerPublic' => 'http://localhost:3000/',
 
     /**
      * @var string The public URL to use when not using the dev server
      */
     'serverPublic' => App::env('PRIMARY_SITE_URL') . '/dist/',
 
     /**
      * @var string The JavaScript entry from the manifest.json to inject on Twig error pages
      *              This can be a string or an array of strings
      */
     'errorEntry' => '',
 
     /**
      * @var string String to be appended to the cache key
      */
     'cacheKeySuffix' => '',
 
     /**
      * @var string The internal URL to the dev server, when accessed from the environment in which PHP is executing
      *              This can be the same as `$devServerPublic`, but may be different in containerized or VM setups.
      *              ONLY used if $checkDevServer = true
      */
     'devServerInternal' => '',
 
     /**
      * @var bool Should we check for the presence of the dev server by pinging $devServerInternal to make sure it's running?
      */
     'checkDevServer' => false,
 ];