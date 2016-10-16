<?php

class TypeSettings extends DataExtension {

    private static $db = array(
        'TypeSettingsCSS' => 'HTMLText',
        'TypeSettingsJS' => 'HTMLText',

        'h1fontfamily' => 'Varchar(512)',
        'h1color' => 'Varchar(7)',
        'h1fontsize' => 'Varchar(32)',
        'h1fontweight' => 'Varchar(32)',
        'h1fontstyle' => 'Varchar(32)',
        'h1textalign' => 'Varchar(32)',
        'h1lineheight' => 'Varchar(32)',
        'h1letterspacing' => 'Varchar(32)',

        'h2fontfamily' => 'Varchar(512)',
        'h2color' => 'Varchar(7)',
        'h2fontsize' => 'Varchar(32)',
        'h2fontweight' => 'Varchar(32)',
        'h2fontstyle' => 'Varchar(32)',
        'h2textalign' => 'Varchar(32)',
        'h2lineheight' => 'Varchar(32)',
        'h2letterspacing' => 'Varchar(32)',

        'h3fontfamily' => 'Varchar(512)',
        'h3color' => 'Varchar(7)',
        'h3fontsize' => 'Varchar(32)',
        'h3fontweight' => 'Varchar(32)',
        'h3fontstyle' => 'Varchar(32)',
        'h3textalign' => 'Varchar(32)',
        'h3lineheight' => 'Varchar(32)',
        'h3letterspacing' => 'Varchar(32)',

        'h4fontfamily' => 'Varchar(512)',
        'h4color' => 'Varchar(7)',
        'h4fontsize' => 'Varchar(32)',
        'h4fontweight' => 'Varchar(32)',
        'h4fontstyle' => 'Varchar(32)',
        'h4textalign' => 'Varchar(32)',
        'h4lineheight' => 'Varchar(32)',
        'h4letterspacing' => 'Varchar(32)',

        'h5fontfamily' => 'Varchar(512)',
        'h5color' => 'Varchar(7)',
        'h5fontsize' => 'Varchar(32)',
        'h5fontweight' => 'Varchar(32)',
        'h5fontstyle' => 'Varchar(32)',
        'h5textalign' => 'Varchar(32)',
        'h5lineheight' => 'Varchar(32)',
        'h5letterspacing' => 'Varchar(32)',

        'h6fontfamily' => 'Varchar(512)',
        'h6color' => 'Varchar(7)',
        'h6fontsize' => 'Varchar(32)',
        'h6fontweight' => 'Varchar(32)',
        'h6fontstyle' => 'Varchar(32)',
        'h6textalign' => 'Varchar(32)',
        'h6lineheight' => 'Varchar(32)',
        'h6letterspacing' => 'Varchar(32)',

        'pfontfamily' => 'Varchar(512)',
        'pcolor' => 'Varchar(7)',
        'pfontsize' => 'Varchar(32)',
        'pfontweight' => 'Varchar(32)',
        'pfontstyle' => 'Varchar(32)',
        'ptextalign' => 'Varchar(32)',
        'plineheight' => 'Varchar(32)',
        'pletterspacing' => 'Varchar(32)'
    );

    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldsToTab('Root.TypeSettings', array(
            ToggleCompositeField::create('h1Settings', 'H1', array(
                TextField::create('h1fontfamily', 'Heading 1 font-family'),
                TextField::create('h1color', 'Heading 1 color'),
                NumericField::create('h1fontsize', 'Heading 1 font-size'),
                NumericField::create('h1fontweight', 'Heading 1 font-weight'),
                TextField::create('h1fontstyle', 'Heading 1 font-style'),
                TextField::create('h1textalign', 'Heading 1 text-align'),
                NumericField::create('h1lineheight', 'Heading 1 line-height'),
                NumericField::create('h1letterspacing', 'Heading 1 letter-spacing'),
            )),
            ToggleCompositeField::create('h2Settings', 'H2', array(
                TextField::create('h2fontfamily', 'Heading 2 font-family'),
                TextField::create('h2color', 'Heading 2 color'),
                NumericField::create('h2fontsize', 'Heading 2 font-size'),
                NumericField::create('h2fontweight', 'Heading 2 font-weight'),
                TextField::create('h2fontstyle', 'Heading 2 font-style'),
                TextField::create('h2textalign', 'Heading 2 text-align'),
                NumericField::create('h2lineheight', 'Heading 2 line-height'),
                NumericField::create('h2letterspacing', 'Heading 2 letter-spacing'),
            )),
            ToggleCompositeField::create('h3Settings', 'H3', array(
                TextField::create('h3fontfamily', 'Heading 3 font-family'),
                TextField::create('h3color', 'Heading 3 color'),
                NumericField::create('h3fontsize', 'Heading 3 font-size'),
                NumericField::create('h3fontweight', 'Heading 3 font-weight'),
                TextField::create('h3fontstyle', 'Heading 3 font-style'),
                TextField::create('h3textalign', 'Heading 3 text-align'),
                NumericField::create('h3lineheight', 'Heading 3 line-height'),
                NumericField::create('h3letterspacing', 'Heading 3 letter-spacing'),
            )),
            ToggleCompositeField::create('h4Settings', 'H4', array(
                TextField::create('h4fontfamily', 'Heading 4 font-family'),
                TextField::create('h4color', 'Heading 4 color'),
                NumericField::create('h4fontsize', 'Heading 4 font-size'),
                NumericField::create('h4fontweight', 'Heading 4 font-weight'),
                TextField::create('h4fontstyle', 'Heading 4 font-style'),
                TextField::create('h4textalign', 'Heading 4 text-align'),
                NumericField::create('h4lineheight', 'Heading 4 line-height'),
                NumericField::create('h4letterspacing', 'Heading 4 letter-spacing'),
            )),
            ToggleCompositeField::create('h5Settings', 'H5', array(
                TextField::create('h5fontfamily', 'Heading 5 font-family'),
                TextField::create('h5color', 'Heading 5 color'),
                NumericField::create('h5fontsize', 'Heading 5 font-size'),
                NumericField::create('h5fontweight', 'Heading 5 font-weight'),
                TextField::create('h5fontstyle', 'Heading 5 font-style'),
                TextField::create('h5textalign', 'Heading 5 text-align'),
                NumericField::create('h5lineheight', 'Heading 5 line-height'),
                NumericField::create('h5letterspacing', 'Heading 5 letter-spacing'),
            )),
            ToggleCompositeField::create('h6Settings', 'H6', array(
                TextField::create('h6fontfamily', 'Heading 6 font-family'),
                TextField::create('h6color', 'Heading 6 color'),
                NumericField::create('h6fontsize', 'Heading 6 font-size'),
                NumericField::create('h6fontweight', 'Heading 6 font-weight'),
                TextField::create('h6fontstyle', 'Heading 6 font-style'),
                TextField::create('h6textalign', 'Heading 6 text-align'),
                NumericField::create('h6lineheight', 'Heading 6 line-height'),
                NumericField::create('h6letterspacing', 'Heading 6 letter-spacing'),
            )),
            ToggleCompositeField::create('p_Settings', 'P', array(
                TextField::create('pfontfamily', 'Paragraph font-family'),
                TextField::create('pcolor', 'Paragraph color'),
                NumericField::create('pfontsize', 'Paragraph font-size'),
                NumericField::create('pfontweight', 'Paragraph font-weight'),
                TextField::create('pfontstyle', 'Paragraph font-style'),
                TextField::create('ptextalign', 'Paragraph text-align'),
                NumericField::create('plineheight', 'Paragraph line-height'),
                NumericField::create('pletterspacing', 'Paragraph letter-spacing'),
            )),
            ToggleCompositeField::create('CSS_Raw', 'Raw CSS', array(
                HtmlEditorField::create('TypeSettingsCSS', 'TypeSettingsCSS')
            )),
            ToggleCompositeField::create('JS_Raw', 'Raw JS', array(
                HtmlEditorField::create('TypeSettingsJS', 'TypeSettingsJS')
            ))
        ));
    }

}