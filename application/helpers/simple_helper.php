<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('test_method')) {
    function makeSeo($text, $limit = 75)
    {
        // replace non letter or digits by -
        $text = preg_replace('~[^\\pL\d]+~u', '-', $text);

        // trim
        $text = trim($text, '-');

        // lowercase
        $text = strtolower($text);

        // remove unwanted characters
        $text = preg_replace('~[^-\w]+~', '', $text);

        if (strlen($text) > 70) {
            $text = substr($text, 0, 70);
        }

        if (empty($text)) {
            //return 'n-a';
            return time();
        }

        return $text;
    }
}
