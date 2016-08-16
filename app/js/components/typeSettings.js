"use strict";
/*------------------------------------------------------------------
 Type settings
 ------------------------------------------------------------------*/

//Internal Requirements
import {fonts, elementTags, typeDefinitions, defaultValues} from './typeVariables';

// Requirements
const $         = require('jquery');
const _         = require('lodash');
const CSSJSON   = require('CSSJSON');
const chosen    = require('./chosen');
const NProgress = require('nprogress');
const Combokeys = require("combokeys");
const WebFont   = require('webfontloader');
var ColorPicker = require('simple-color-picker');

/**
 * TypeSettings class to update the styles in realtime of common
 * type properties
 */

NProgress.configure({trickleRate: 0.1, trickleSpeed: 800, showSpinner: false});

export class TypeSettings {

    constructor(element, stylesheet) {

        /* Constructor elements and variables */
        this.$el               = $(`#${element}`);
        this.$styleSheet       = $(`#${stylesheet}`);
        this.styles            = {children: {}};
        this.colorPicker       = {};
        this.colorPickerActive = false;
        this.tags              = ['Heading_1', 'Heading_2', 'Heading_3', 'Heading_4', 'Heading_5', 'Heading_6', 'Paragraph'];

        /* Toggle height for the collapsible items */
        this.$el.find('.js-collapsible').click(function () {
            $(this).add($(this).attr('data-colapsible-target')).toggleClass('expanded');
        });

        /* Update style when the input elements change */
        this.$el.find('input, select').on('keyup input change', ()=> {
            this.updateStyles();
        });

        this.$el.find('select').each(function () {
            $(this).chosen({disable_search_threshold: 11});
        });

        var $element = $('.js-color');
        this.$el.on('mouseup', (e)=> {
            if (!$element.is(e.target) && $element.has(e.target).length === 0) {
                this.destroyColorPicker();
            }
        });

        this.$el.find('.input-wrap__color input').on('change keyup', ()=> {
            this.updateColours();
        });

        this.$el.find('.js-color').on('click', (e)=> {
            let $el = $(e.target);
            if (this.colorPickerActive && $el.closest('.js-color').hasClass('active')) {
                $el.closest('.input-wrap__color').find('input').val(this.colorPicker.getHexString());
                $el.closest('.input-wrap__color').find('.color-swatch').css({'background': this.colorPicker.getHexString()});
                this.updateColours();
            } else if (this.colorPickerActive && !$el.hasClass('active') && !$el.closest('.js-color').hasClass('active')) {
                this.destroyColorPicker();
                this.createColorPicker($el);
            } else {
                this.createColorPicker($el);
            }
        });

        /* Enumerate the font gfamily select elements with our available fonts */
        this.$el.find('.js-font-family').each(function () {
            let $this = $(this);
            _.each(fonts, function (font) {
                $this.append(`<option value="${font}">${font}</option>`)
            });
            $this.chosen({disable_search_threshold: 11});
        });

    }

    destroyColorPicker() {
        this.$el.find('.js-color').removeClass('active');
        if (this.colorPickerActive) {
            this.colorPicker.remove();
        }
        this.colorPickerActive = false;
    }

    createColorPicker($el) {
        $el.addClass('active');
        if (!this.colorPickerActive) {
            this.colorPicker       = new ColorPicker({
                color     : '#333333',
                background: '#FFFFFF',
                el        : $el[0],
                width     : 150,
                height    : 150
            });
            this.colorPickerActive = true;
        }
        if ($el.closest('.input-wrap__color').find('input').val().length) {
            this.colorPicker.setColor($el.closest('.input-wrap__color').find('input').val());
        }
    }

    /* Load up reselected google fonts on change */
    loadFonts() {
        let fontsToLoad = [];
        this.$el.find('.js-font-family').each(function () {
            fontsToLoad.push($(this).find('option:selected').val());
        });
        WebFont.load({
            google: {
                families: fontsToLoad
            }
        });
    }

    /* Get a nested object of the current site configs' type settings */
    loadStyles() {
        $.ajax({
            url     : this.$el.attr('data-load-type-settings'),
            type    : 'POST',
            dataType: 'json'
        }).done((response)=> {
            this.setStyles(response);
        });
    }

    saveCSS(css) {
        $.ajax({
            url     : this.$el.attr('data-save-css'),
            type    : 'POST',
            dataType: 'json',
            data    : {
                css: CSSJSON.toCSS(this.styles)
            }
        }).done((response)=> {
        });
    }

    saveJS() {
        let fonts = [];
        this.$el.find('.js-font-family').each(function () {
            fonts.push('"' + $(this).val() + '"')
        });
        fonts = _.uniq(fonts);
        $.ajax({
            url     : this.$el.attr('data-save-js'),
            type    : 'POST',
            dataType: 'json',
            data    : {
                js: `${fonts}`
            }
        }).done((response)=> {
        });
    }

    /* Update all of the type setting fields with the currently saved values */
    setStyles(data) {
        var count = 0;
        _.each(data, (tag)=> {
            if (tag.attributes['font-family']) {
                this.$el.find(`#${this.tags[count]}_font-family`).val(tag.attributes['font-family']);
            }
            if (tag.attributes['color']) {
                this.$el.find(`#${this.tags[count]}_color`).val(tag.attributes['color']);
            }
            if (tag.attributes['font-size']) {
                this.$el.find(`#${this.tags[count]}_font-size`).val(tag.attributes['font-size']);
            }
            if (tag.attributes['font-weight']) {
                this.$el.find(`#${this.tags[count]}_font-weight`).val(tag.attributes['font-weight']);
            }
            if (tag.attributes['font-style']) {
                this.$el.find(`#${this.tags[count]}_font-style`).val(tag.attributes['font-style']);
            }
            if (tag.attributes['text-align']) {
                this.$el.find(`#${this.tags[count]}_text-align`).val(tag.attributes['text-align']);
            }
            if (tag.attributes['line-height']) {
                this.$el.find(`#${this.tags[count]}_line-height`).val(tag.attributes['line-height']);
            }
            if (tag.attributes['letter-spacing']) {
                this.$el.find(`#${this.tags[count]}_letter-spacing`).val(tag.attributes['letter-spacing']);
            }
            count++;
        });
        this.$el.find('select').trigger('chosen:updated');
        this.updateColours();
        this.updateStyles();
    }

    updateColours() {
        this.$el.find('.js-color').each(function () {
            let $this = $(this);
            $this.css({'background': $this.closest('.input-wrap__color').find('input').val()});
        });
        this.updateStyles();
    }

    /* Update the current type settings */
    saveStyles() {
        NProgress.start();
        this.assignStyles();
        $.ajax({
            url     : this.$el.attr('data-save-type-settings'),
            type    : 'POST',
            dataType: 'json',
            data    : {
                styles: this.styles.children
            }
        }).done(()=> {
            NProgress.done();
        });
    }

    /* Toggle the Type Settings Drawer */
    toggle() {
        this.$el.toggleClass('visible');
    }

    /* Show the Type Settings Drawer */
    show() {
        this.$el.addClass('visible');
    }

    /* Hide the Type Settings Drawer */
    hide() {
        this.$el.removeClass('visible');
    }

    /* Update the page to reflect the current Type Settings */
    updateStyles() {
        this.loadFonts();
        this.assignStyles();
        this.$styleSheet.html(CSSJSON.toCSS(this.styles));
    }

    /* Create CSS styles from the inputs */
    assignStyles() {
        this.$el.find('.js-type-setting').each((index, item)=> {
            _.assign(this.styles.children, this.createStyles($(item).attr('id'), $(item).attr('data-selector')));
        });
    }

    /* JSON TO CSS Conversion */
    createStyles(input, selector) {
        return {
            [selector]: {
                attributes: {
                    "font-family"   : this.$el.find(`#${input}_font-family`).val(),
                    "color"         : this.$el.find(`#${input}_color`).val(),
                    "font-size"     : this.$el.find(`#${input}_font-size`).val() + "rem",
                    "font-weight"   : this.$el.find(`#${input}_font-weight`).val(),
                    "font-style"    : this.$el.find(`#${input}_font-style`).val(),
                    "text-align"    : this.$el.find(`#${input}_text-align`).val(),
                    "line-height"   : this.$el.find(`#${input}_line-height`).val(),
                    "letter-spacing": this.$el.find(`#${input}_letter-spacing`).val() + 'px'
                }
            }
        }
    }
}

//Variables
const Type    = new TypeSettings('typeSettings', 'typeStyles');
let combokeys = new Combokeys(document.documentElement);

combokeys.bind(['ctrl+t'], function () {
    Type.toggle();
    Type.loadStyles();
    return false;
});

//Type.toggle();
//Type.loadStyles();

$('.js-save-type-settings').click(()=> {
    Type.saveCSS();
    Type.saveJS();
    Type.saveStyles();
});


