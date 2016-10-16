<?php

class ControllerExtension extends Extension {

    private static $allowed_actions = array(
        'texter',
        'SaveCSS',
        'SaveJS',
        'SaveTypeSettings',
        'LoadTypeSettings',
        'getCart'
    );

    public function LoadTypeSettings(SS_HTTPRequest $request) {
        $data = [];
        $siteConfig = SiteConfig::current_site_config();
        $tags = array('h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'p');
        $styles = array(
            'font-family',
            'color',
            'font-size',
            'font-weight',
            'font-style',
            'text-align',
            'line-height',
            'letter-spacing'
        );
        foreach ($tags as $tag) {
            foreach ($styles as $style) {
                $field = $tag . preg_replace('/-/', '', $style);
                $data[$tag]['attributes'][$style] = $siteConfig->getField($field);
            }
        }
        return json_encode($data, true);
    }

    public function SaveCSS(SS_HTTPRequest $request) {
        $data = $request->postVars();
        $siteConfig = SiteConfig::current_site_config();
        $siteConfig->setField('TypeSettingsCSS', $data['css']);
        $siteConfig->write();
        return json_encode($data['css'], true);
    }

    public function SaveJS(SS_HTTPRequest $request) {
        $data = $request->postVars();
        $siteConfig = SiteConfig::current_site_config();
        $siteConfig->setField('TypeSettingsJS', $data['js']);
        $siteConfig->write();
        return json_encode($data['js'], true);
    }

    public function SaveTypeSettings(SS_HTTPRequest $request) {
        $data = $request->postVars();

        $tags = array('h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'p');
        $styles = array(
            'font-family',
            'color',
            'font-size',
            'font-weight',
            'font-style',
            'text-align',
            'line-height',
            'letter-spacing'
        );

        $siteConfig = SiteConfig::current_site_config();

        foreach ($tags as $tag) {
            foreach ($styles as $style) {
                $field = $tag . preg_replace('/-/', '', $style);
                if ($tag != 'li') {
                    $value = $data['styles'][$tag]['attributes'][$style];
                    $siteConfig->setField($field, preg_replace(['/px/', '/rem/'], '', $value));
                }
            }
        }

        $siteConfig->write();

        return json_encode('good', true);
    }

}
