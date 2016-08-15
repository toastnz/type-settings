<style id="typeStyles">
        $SiteConfig.TypeSettingsCSS
</style>

<% if $CurrentMember %>
    <% require css("type-settings/dist/styles/style.css") %>
    <% require javascript("type-settings/dist/js/typeSettings.js") %>

    <div id="typeSettings" class="type-settings" data-save-type-settings="$Link('SaveTypeSettings')" data-load-type-settings="$Link('LoadTypeSettings')" data-save-css="$Link('SaveCSS')" data-save-js="$Link('SaveJS')">
        <!--Header-->
        <div class="type-settings__header">
            <h5>
                <svg xmlns="http://www.w3.org/2000/svg" width="70" height="36" viewBox="0 0 70 36">
                    <path fill="#000000" fill-rule="evenodd" d="M199.015224,107 L199.015224,107 L164,107 L164,142.015224 L198.984776,142.015224 L198.984776,142.015224 L234,142.015224 L234,107 L199.015224,107 L199.015224,107 Z M231.807742,139.853415 L201.177033,139.853415 L201.177033,109.192258 L231.807742,109.192258 L231.807742,139.853415 Z M185.953023,134.007395 L184.491518,130.0796 L178.280122,130.0796 L176.818617,134.007395 L172.525446,134.007395 L179.924315,115.038278 L183.090909,115.038278 L190.489778,134.007395 L185.953023,134.007395 Z M181.99478,122.832971 C181.781644,122.315355 181.568508,121.584602 181.416268,120.914746 L181.355372,120.914746 C181.203132,121.61505 180.959548,122.315355 180.746411,122.832971 L179.376251,126.608525 L183.334493,126.608525 L181.99478,122.832971 Z M222.947368,133.398434 C222.368856,133.276642 221.820792,132.972162 221.333623,132.484993 C220.846455,131.997825 220.511527,131.449761 220.389735,130.779904 C219.933014,131.571553 219.263158,132.210961 218.349717,132.667682 C217.436277,133.124402 216.46194,133.367986 215.426707,133.367986 C214.635059,133.367986 213.904306,133.246194 213.23445,132.972162 C212.564593,132.69813 211.986081,132.363201 211.498913,131.906481 C211.011744,131.449761 210.646368,130.932144 210.372336,130.323184 C210.098304,129.714224 209.976512,129.074815 209.976512,128.374511 C209.976512,127.552414 210.128752,126.821662 210.433232,126.212701 C210.737712,125.573293 211.133536,125.055676 211.651153,124.629404 C212.168769,124.203132 212.747281,123.868204 213.38669,123.624619 C214.026098,123.381035 214.726403,123.228795 215.426707,123.167899 L219.963462,122.711179 L219.963462,121.097434 C219.963462,120.062201 219.598086,119.209656 218.897782,118.631144 C218.197477,118.022184 217.192692,117.717703 215.913876,117.717703 C215.122227,117.717703 214.30013,117.839495 213.478034,118.052632 C212.655937,118.296216 211.955633,118.570248 211.37712,118.935624 L210.889952,116.956503 C211.529361,116.499783 212.321009,116.164854 213.23445,115.951718 C214.14789,115.738582 215.061331,115.61679 216.00522,115.61679 C216.91866,115.61679 217.740757,115.738582 218.532405,115.982166 C219.324054,116.22575 219.99391,116.591127 220.541975,117.078295 C221.120487,117.565463 221.546759,118.143976 221.85124,118.874728 C222.15572,119.575033 222.30796,120.397129 222.30796,121.31057 L222.30796,129.105263 C222.30796,129.957808 222.521096,130.597216 222.947368,131.053936 C223.373641,131.510657 223.860809,131.784689 224.408873,131.876033 L222.947368,133.398434 Z M219.963462,124.6903 L215.792084,125.055676 C214.695955,125.14702 213.812962,125.512397 213.204002,126.121357 C212.564593,126.730318 212.260113,127.491518 212.260113,128.404959 C212.260113,129.257503 212.564593,129.957808 213.204002,130.53632 C213.84341,131.114833 214.604611,131.388865 215.487603,131.388865 C215.974772,131.388865 216.492388,131.297521 217.040452,131.084385 C217.558069,130.871248 218.045237,130.566768 218.501957,130.201392 C218.92823,129.836016 219.293606,129.379295 219.567638,128.831231 C219.84167,128.283167 219.99391,127.674206 219.99391,127.00435 L219.99391,124.6903 L219.963462,124.6903 Z" transform="translate(-164 -107)"/>
                </svg>
                TYPE SETTINGS
            </h5>
            <div class="js-close-type-settings"></div>
        </div>

        <div class="scroll-wrap">

            <!-- ------------------------------------------------------------------------------------------- -->
            <!--                                        Heading One                                          -->
            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="headingWrap">
                <div class="innerWrap">
                    <h6 class="js-collapsible expanded" data-colapsible-target="#Heading_1">HEADING 1
                        <svg width="24px" height="14px" viewBox="0 0 24 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-499.000000, -319.000000)" fill="#FFFFFF">
                                    <polygon transform="translate(511.023437, 326.000000) rotate(-90.000000) translate(-511.023437, -326.000000) " points="504.103572 326.000072 515.607707 337.504063 517.943303 335.214121 508.849658 326.000072 517.943303 316.980761 515.607707 314.495938"></polygon>
                                </g>
                            </g>
                        </svg>
                    </h6>
                    <div id="Heading_1" class="collapsible expanded js-type-setting" data-selector="h1">

                        <%--Font Family--%>
                        <div class="input-wrap input-wrap__select input-wrap--full">
                            <select id="Heading_1_font-family" class="js-font-family"></select>
                            <label for="Heading_1_font-family">FONT FAMILY</label>
                        </div>

                        <%--Color--%>
                        <div class="input-wrap input-wrap__color input-wrap--full">
                            <div class="js-color color-swatch"></div>
                            <input type="text" id="Heading_1_color" placeholder="#333333">
                            <label for="Heading_1_color">COLOUR</label>
                        </div>

                        <%--Font Size--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_1_font-size" placeholder="45" data-default="45" min="0" max="100" step="0.1" value="4.5">
                            <label for="Heading_1_font-size">FONT SIZE</label>
                            <span class="rightLabel">rem</span>
                        </div>

                        <%--Font Weight--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_1_font-weight">
                                <option value="100" selected="selected">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="600">600</option>
                                <option value="700">700</option>
                                <option value="800">800</option>
                                <option value="900">900</option>
                            </select>
                            <label for="Heading_1_font-weight">FONT WEIGHT</label>
                        </div>

                        <%--Font Style--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_1_font-style">
                                <option value="normal" selected="selected">Normal</option>
                                <option value="italic">Italic</option>
                            </select>
                            <label for="Heading_1_font-style">FONT STYLE</label>
                        </div>

                        <%--Font Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <label for="Heading_1_fontcolour">FONT COLOUR</label>
                            <input type="text" id="Heading_1_fontcolour">
                            <span></span>
                        </div>

                        <%--Font Background Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <input type="text" id="Heading_1_fontbackgroundcolour">
                            <label for="Heading_1_fontbackgroundcolour">BACKGROUND COLOUR</label>
                            <span></span>
                        </div>

                        <%--Font Align--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_1_text-align">
                                <option value="left" selected="selected">Left</option>
                                <option value="center">Center</option>
                                <option value="right">Right</option>
                            </select>
                            <label for="Heading_1_text-align">TEXT ALIGN</label>
                        </div>

                        <%--Line Height--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_1_line-height" placeholder="1.2" data-default="1.2" min="0" max="5" step="0.1" value="1.2">
                            <label for="Heading_1_line-height">LINE HEIGHT</label>
                            <span></span>
                        </div>

                        <%--Letter Spacing--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_1_letter-spacing" placeholder="0" data-default="0" min="0" max="10" step="0.1" value="0">
                            <label for="Heading_1_letter-spacing">LETTER SPACING</label>
                            <span>px</span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <!-- ------------------------------------------------------------------------------------------- -->
            <!--                                        Heading Two                                          -->
            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="headingWrap">
                <div class="innerWrap">
                    <h6 class="js-collapsible" data-colapsible-target="#Heading_2">HEADING 2
                        <svg width="24px" height="14px" viewBox="0 0 24 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-499.000000, -319.000000)" fill="#FFFFFF">
                                    <polygon transform="translate(511.023437, 326.000000) rotate(-90.000000) translate(-511.023437, -326.000000) " points="504.103572 326.000072 515.607707 337.504063 517.943303 335.214121 508.849658 326.000072 517.943303 316.980761 515.607707 314.495938"></polygon>
                                </g>
                            </g>
                        </svg>
                    </h6>
                    <div id="Heading_2" class="collapsible js-type-setting" data-selector="h2">

                        <%--Font Family--%>
                        <div class="input-wrap input-wrap__select input-wrap--full">
                            <select id="Heading_2_font-family" class="js-font-family"></select>
                            <label for="Heading_2_font-family">FONT FAMILY</label>
                        </div>

                        <%--Color--%>
                        <div class="input-wrap input-wrap__color input-wrap--full">
                            <div class="js-color color-swatch"></div>
                            <input type="text" id="Heading_2_color" placeholder="#333333">
                            <label for="Heading_2_color">COLOUR</label>
                        </div>

                        <%--Font Size--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_2_font-size" placeholder="45" data-default="45" min="0" max="100" step="0.1" value="3.6">
                            <label for="Heading_2_font-size">FONT SIZE</label>
                            <span class="rightLabel">rem</span>
                        </div>

                        <%--Font Weight--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_2_font-weight">
                                <option value="100" selected="selected">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="600">600</option>
                                <option value="700">700</option>
                                <option value="800">800</option>
                                <option value="900">900</option>
                            </select>
                            <label for="Heading_2_font-weight">FONT WEIGHT</label>
                        </div>

                        <%--Font Style--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_2_font-style">
                                <option value="normal" selected="selected">Normal</option>
                                <option value="italic">Italic</option>
                            </select>
                            <label for="Heading_2_font-style">FONT STYLE</label>
                        </div>

                        <%--Font Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <label for="Heading_2_fontcolour">FONT COLOUR</label>
                            <input type="text" id="Heading_2_fontcolour">
                            <span></span>
                        </div>

                        <%--Font Background Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <input type="text" id="Heading_2_fontbackgroundcolour">
                            <label for="Heading_2_fontbackgroundcolour">BACKGROUND COLOUR</label>
                            <span></span>
                        </div>

                        <%--Font Align--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_2_text-align">
                                <option value="left" selected="selected">Left</option>
                                <option value="center">Center</option>
                                <option value="right">Right</option>
                            </select>
                            <label for="Heading_2_text-align">TEXT ALIGN</label>
                        </div>

                        <%--Line Height--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_2_line-height" placeholder="1.2" data-default="1.2" min="0" max="5" step="0.1" value="1.2">
                            <label for="Heading_2_line-height">LINE HEIGHT</label>
                            <span></span>
                        </div>

                        <%--Letter Spacing--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_2_letter-spacing" placeholder="0" data-default="0" min="0" max="10" step="0.1" value="0">
                            <label for="Heading_2_letter-spacing">LETTER SPACING</label>
                            <span>px</span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <!-- ------------------------------------------------------------------------------------------- -->
            <!--                                        Heading Three                                        -->
            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="headingWrap">
                <div class="innerWrap">
                    <h6 class="js-collapsible" data-colapsible-target="#Heading_3">HEADING 3
                        <svg width="24px" height="14px" viewBox="0 0 24 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-499.000000, -319.000000)" fill="#FFFFFF">
                                    <polygon transform="translate(511.023437, 326.000000) rotate(-90.000000) translate(-511.023437, -326.000000) " points="504.103572 326.000072 515.607707 337.504063 517.943303 335.214121 508.849658 326.000072 517.943303 316.980761 515.607707 314.495938"></polygon>
                                </g>
                            </g>
                        </svg>
                    </h6>
                    <div id="Heading_3" class="collapsible js-type-setting" data-selector="h3">

                        <%--Font Family--%>
                        <div class="input-wrap input-wrap__select input-wrap--full">
                            <select id="Heading_3_font-family" class="js-font-family"></select>
                            <label for="Heading_3_font-family">FONT FAMILY</label>
                        </div>

                        <%--Color--%>
                        <div class="input-wrap input-wrap__color input-wrap--full">
                            <div class="js-color color-swatch"></div>
                            <input type="text" id="Heading_3_color" placeholder="#333333">
                            <label for="Heading_3_color">COLOUR</label>
                        </div>

                        <%--Font Size--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_3_font-size" placeholder="45" data-default="45" min="0" max="100" step="0.1" value="3.2">
                            <label for="Heading_3_font-size">FONT SIZE</label>
                            <span class="rightLabel">rem</span>
                        </div>

                        <%--Font Weight--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_3_font-weight">
                                <option value="100" selected="selected">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="600">600</option>
                                <option value="700">700</option>
                                <option value="800">800</option>
                                <option value="900">900</option>
                            </select>
                            <label for="Heading_3_font-weight">FONT WEIGHT</label>
                        </div>

                        <%--Font Style--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_3_font-style">
                                <option value="normal" selected="selected">Normal</option>
                                <option value="italic">Italic</option>
                            </select>
                            <label for="Heading_3_font-style">FONT STYLE</label>
                        </div>

                        <%--Font Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <label for="Heading_3_fontcolour">FONT COLOUR</label>
                            <input type="text" id="Heading_3_fontcolour">
                            <span></span>
                        </div>

                        <%--Font Background Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <input type="text" id="Heading_3_fontbackgroundcolour">
                            <label for="Heading_3_fontbackgroundcolour">BACKGROUND COLOUR</label>
                            <span></span>
                        </div>

                        <%--Font Align--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_3_text-align">
                                <option value="left" selected="selected">Left</option>
                                <option value="center">Center</option>
                                <option value="right">Right</option>
                            </select>
                            <label for="Heading_3_text-align">TEXT ALIGN</label>
                        </div>

                        <%--Line Height--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_3_line-height" placeholder="1.2" data-default="1.2" min="0" max="5" step="0.1" value="1.2">
                            <label for="Heading_3_line-height">LINE HEIGHT</label>
                            <span></span>
                        </div>

                        <%--Letter Spacing--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_3_letter-spacing" placeholder="0" data-default="0" min="0" max="10" step="0.1" value="0">
                            <label for="Heading_3_letter-spacing">LETTER SPACING</label>
                            <span>px</span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <!-- ------------------------------------------------------------------------------------------- -->
            <!--                                        Heading Four                                         -->
            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="headingWrap">
                <div class="innerWrap">
                    <h6 class="js-collapsible" data-colapsible-target="#Heading_4">HEADING 4
                        <svg width="24px" height="14px" viewBox="0 0 24 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-499.000000, -319.000000)" fill="#FFFFFF">
                                    <polygon transform="translate(511.023437, 326.000000) rotate(-90.000000) translate(-511.023437, -326.000000) " points="504.103572 326.000072 515.607707 337.504063 517.943303 335.214121 508.849658 326.000072 517.943303 316.980761 515.607707 314.495938"></polygon>
                                </g>
                            </g>
                        </svg>
                    </h6>
                    <div id="Heading_4" class="collapsible js-type-setting" data-selector="h4">

                        <%--Font Family--%>
                        <div class="input-wrap input-wrap__select input-wrap--full">
                            <select id="Heading_4_font-family" class="js-font-family"></select>
                            <label for="Heading_4_font-family">FONT FAMILY</label>
                        </div>

                        <%--Color--%>
                        <div class="input-wrap input-wrap__color input-wrap--full">
                            <div class="js-color color-swatch"></div>
                            <input type="text" id="Heading_4_color" placeholder="#333333">
                            <label for="Heading_4_color">COLOUR</label>
                        </div>

                        <%--Font Size--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_4_font-size" placeholder="45" data-default="45" min="0" max="100" step="0.1" value="2.8">
                            <label for="Heading_4_font-size">FONT SIZE</label>
                            <span class="rightLabel">rem</span>
                        </div>

                        <%--Font Weight--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_4_font-weight">
                                <option value="100" selected="selected">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="600">600</option>
                                <option value="700">700</option>
                                <option value="800">800</option>
                                <option value="900">900</option>
                            </select>
                            <label for="Heading_4_font-weight">FONT WEIGHT</label>
                        </div>

                        <%--Font Style--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_4_font-style">
                                <option value="normal" selected="selected">Normal</option>
                                <option value="italic">Italic</option>
                            </select>
                            <label for="Heading_4_font-style">FONT STYLE</label>
                        </div>

                        <%--Font Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <label for="Heading_4_fontcolour">FONT COLOUR</label>
                            <input type="text" id="Heading_4_fontcolour">
                            <span></span>
                        </div>

                        <%--Font Background Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <input type="text" id="Heading_4_fontbackgroundcolour">
                            <label for="Heading_4_fontbackgroundcolour">BACKGROUND COLOUR</label>
                            <span></span>
                        </div>

                        <%--Font Align--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_4_text-align">
                                <option value="left" selected="selected">Left</option>
                                <option value="center">Center</option>
                                <option value="right">Right</option>
                            </select>
                            <label for="Heading_4_text-align">TEXT ALIGN</label>
                        </div>

                        <%--Line Height--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_4_line-height" placeholder="1.2" data-default="1.2" min="0" max="5" step="0.1" value="1.2">
                            <label for="Heading_4_line-height">LINE HEIGHT</label>
                            <span></span>
                        </div>

                        <%--Letter Spacing--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_4_letter-spacing" placeholder="0" data-default="0" min="0" max="10" step="0.1" value="0">
                            <label for="Heading_4_letter-spacing">LETTER SPACING</label>
                            <span>px</span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <!-- ------------------------------------------------------------------------------------------- -->
            <!--                                        Heading Five                                         -->
            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="headingWrap">
                <div class="innerWrap">
                    <h6 class="js-collapsible" data-colapsible-target="#Heading_5">HEADING 5
                        <svg width="24px" height="14px" viewBox="0 0 24 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-499.000000, -319.000000)" fill="#FFFFFF">
                                    <polygon transform="translate(511.023437, 326.000000) rotate(-90.000000) translate(-511.023437, -326.000000) " points="504.103572 326.000072 515.607707 337.504063 517.943303 335.214121 508.849658 326.000072 517.943303 316.980761 515.607707 314.495938"></polygon>
                                </g>
                            </g>
                        </svg>
                    </h6>
                    <div id="Heading_5" class="collapsible js-type-setting" data-selector="h5">

                        <%--Font Family--%>
                        <div class="input-wrap input-wrap__select input-wrap--full">
                            <select id="Heading_5_font-family" class="js-font-family"></select>
                            <label for="Heading_5_font-family">FONT FAMILY</label>
                        </div>

                        <%--Color--%>
                        <div class="input-wrap input-wrap__color input-wrap--full">
                            <div class="js-color color-swatch"></div>
                            <input type="text" id="Heading_5_color" placeholder="#333333">
                            <label for="Heading_5_color">COLOUR</label>
                        </div>

                        <%--Font Size--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_5_font-size" placeholder="45" data-default="45" min="0" max="100" step="0.1" value="2.4">
                            <label for="Heading_5_font-size">FONT SIZE</label>
                            <span class="rightLabel">rem</span>
                        </div>

                        <%--Font Weight--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_5_font-weight">
                                <option value="100" selected="selected">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="600">600</option>
                                <option value="700">700</option>
                                <option value="800">800</option>
                                <option value="900">900</option>
                            </select>
                            <label for="Heading_5_font-weight">FONT WEIGHT</label>
                        </div>

                        <%--Font Style--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_5_font-style">
                                <option value="normal" selected="selected">Normal</option>
                                <option value="italic">Italic</option>
                            </select>
                            <label for="Heading_5_font-style">FONT STYLE</label>
                        </div>

                        <%--Font Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <label for="Heading_5_fontcolour">FONT COLOUR</label>
                            <input type="text" id="Heading_5_fontcolour">
                            <span></span>
                        </div>

                        <%--Font Background Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <input type="text" id="Heading_5_fontbackgroundcolour">
                            <label for="Heading_5_fontbackgroundcolour">BACKGROUND COLOUR</label>
                            <span></span>
                        </div>

                        <%--Font Align--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_5_text-align">
                                <option value="left" selected="selected">Left</option>
                                <option value="center">Center</option>
                                <option value="right">Right</option>
                            </select>
                            <label for="Heading_5_text-align">TEXT ALIGN</label>
                        </div>

                        <%--Line Height--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_5_line-height" placeholder="1.2" data-default="1.2" min="0" max="5" step="0.1" value="1.2">
                            <label for="Heading_5_line-height">LINE HEIGHT</label>
                            <span></span>
                        </div>

                        <%--Letter Spacing--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_5_letter-spacing" placeholder="0" data-default="0" min="0" max="10" step="0.1" value="0">
                            <label for="Heading_5_letter-spacing">LETTER SPACING</label>
                            <span>px</span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <!-- ------------------------------------------------------------------------------------------- -->
            <!--                                        Heading Six                                          -->
            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="headingWrap">
                <div class="innerWrap">
                    <h6 class="js-collapsible" data-colapsible-target="#Heading_6">HEADING 6
                        <svg width="24px" height="14px" viewBox="0 0 24 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-499.000000, -319.000000)" fill="#FFFFFF">
                                    <polygon transform="translate(511.023437, 326.000000) rotate(-90.000000) translate(-511.023437, -326.000000) " points="504.103572 326.000072 515.607707 337.504063 517.943303 335.214121 508.849658 326.000072 517.943303 316.980761 515.607707 314.495938"></polygon>
                                </g>
                            </g>
                        </svg>
                    </h6>
                    <div id="Heading_6" class="collapsible js-type-setting" data-selector="h6">

                        <%--Font Family--%>
                        <div class="input-wrap input-wrap__select input-wrap--full">
                            <select id="Heading_6_font-family" class="js-font-family"></select>
                            <label for="Heading_6_font-family">FONT FAMILY</label>
                        </div>

                        <%--Color--%>
                        <div class="input-wrap input-wrap__color input-wrap--full">
                            <div class="js-color color-swatch"></div>
                            <input type="text" id="Heading_6_color" placeholder="#333333">
                            <label for="Heading_6_color">COLOUR</label>
                        </div>

                        <%--Font Size--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_6_font-size" placeholder="45" data-default="45" min="0" max="100" step="0.1" value="2">
                            <label for="Heading_6_font-size">FONT SIZE</label>
                            <span class="rightLabel">rem</span>
                        </div>

                        <%--Font Weight--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_6_font-weight">
                                <option value="100" selected="selected">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="600">600</option>
                                <option value="700">700</option>
                                <option value="800">800</option>
                                <option value="900">900</option>
                            </select>
                            <label for="Heading_6_font-weight">FONT WEIGHT</label>
                        </div>

                        <%--Font Style--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_6_font-style">
                                <option value="normal" selected="selected">Normal</option>
                                <option value="italic">Italic</option>
                            </select>
                            <label for="Heading_6_font-style">FONT STYLE</label>
                        </div>

                        <%--Font Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <label for="Heading_6_fontcolour">FONT COLOUR</label>
                            <input type="text" id="Heading_6_fontcolour">
                            <span></span>
                        </div>

                        <%--Font Background Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <input type="text" id="Heading_6_fontbackgroundcolour">
                            <label for="Heading_6_fontbackgroundcolour">BACKGROUND COLOUR</label>
                            <span></span>
                        </div>

                        <%--Font Align--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Heading_6_text-align">
                                <option value="left" selected="selected">Left</option>
                                <option value="center">Center</option>
                                <option value="right">Right</option>
                            </select>
                            <label for="Heading_6_text-align">TEXT ALIGN</label>
                        </div>

                        <%--Line Height--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_6_line-height" placeholder="1.2" data-default="1.2" min="0" max="5" step="0.1" value="1.2">
                            <label for="Heading_6_line-height">LINE HEIGHT</label>
                            <span></span>
                        </div>

                        <%--Letter Spacing--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Heading_6_letter-spacing" placeholder="0" data-default="0" min="0" max="10" step="0.1" value="0">
                            <label for="Heading_6_letter-spacing">LETTER SPACING</label>
                            <span>px</span>
                        </div>

                    </div>
                </div>
            </div>


            <div class="clearfix"></div>

            <!-- ------------------------------------------------------------------------------------------- -->
            <!--                                        Paragraph                                            -->
            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="headingWrap">
                <div class="innerWrap">
                    <h6 class="js-collapsible" data-colapsible-target="#Paragraph">PARAGRAPH
                        <svg width="24px" height="14px" viewBox="0 0 24 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-499.000000, -319.000000)" fill="#FFFFFF">
                                    <polygon transform="translate(511.023437, 326.000000) rotate(-90.000000) translate(-511.023437, -326.000000) " points="504.103572 326.000072 515.607707 337.504063 517.943303 335.214121 508.849658 326.000072 517.943303 316.980761 515.607707 314.495938"></polygon>
                                </g>
                            </g>
                        </svg>
                    </h6>
                    <div id="Paragraph" class="collapsible js-type-setting" data-selector="p">

                        <%--Font Family--%>
                        <div class="input-wrap input-wrap__select input-wrap--full">
                            <select id="Paragraph_font-family" class="js-font-family"></select>
                            <label for="Paragraph_font-family">FONT FAMILY</label>
                        </div>

                        <%--Color--%>
                        <div class="input-wrap input-wrap__color input-wrap--full">
                            <div class="js-color color-swatch"></div>
                            <input type="text" id="Paragraph_color" placeholder="#333333">
                            <label for="Paragraph_color">COLOUR</label>
                        </div>

                        <%--Font Size--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Paragraph_font-size" placeholder="16" data-default="16" min="0" max="100" step="0.1" value="1.6">
                            <label for="Paragraph_font-size">FONT SIZE</label>
                            <span class="rightLabel">rem</span>
                        </div>

                        <%--Font Weight--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Paragraph_font-weight">
                                <option value="100" selected="selected">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="600">600</option>
                                <option value="700">700</option>
                                <option value="800">800</option>
                                <option value="900">900</option>
                            </select>
                            <label for="Paragraph_font-weight">FONT WEIGHT</label>
                        </div>

                        <%--Font Style--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Paragraph_font-style">
                                <option value="normal" selected="selected">Normal</option>
                                <option value="italic">Italic</option>
                            </select>
                            <label for="Paragraph_font-style">FONT STYLE</label>
                        </div>

                        <%--Font Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <label for="Paragraph_fontcolour">FONT COLOUR</label>
                            <input type="text" id="Paragraph_fontcolour">
                            <span></span>
                        </div>

                        <%--Font Background Colour--%>
                        <div class="input-wrap input-wrap__colour">
                            <input type="text" id="Paragraph_fontbackgroundcolour">
                            <label for="Paragraph_fontbackgroundcolour">BACKGROUND COLOUR</label>
                            <span></span>
                        </div>

                        <%--Font Align--%>
                        <div class="input-wrap input-wrap__select">
                            <select id="Paragraph_text-align">
                                <option value="left" selected="selected">Left</option>
                                <option value="center">Center</option>
                                <option value="right">Right</option>
                            </select>
                            <label for="Paragraph_text-align">TEXT ALIGN</label>
                        </div>

                        <%--Line Height--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Paragraph_line-height" placeholder="1.2" data-default="1.2" min="0" max="5" step="0.1" value="1.2">
                            <label for="Paragraph_line-height">LINE HEIGHT</label>
                            <span></span>
                        </div>

                        <%--Letter Spacing--%>
                        <div class="input-wrap input-wrap__number">
                            <input type="number" id="Paragraph_letter-spacing" placeholder="0" data-default="0" min="0" max="10" step="0.1" value="0">
                            <label for="Paragraph_letter-spacing">LETTER SPACING</label>
                            <span>px</span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <button class="button js-save-type-settings">SAVE SETTINGS</button>
        </div>

    </div>
<% else %>
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
    <script>
        WebFont.load({
            google: {
                families: [$SiteConfig.TypeSettingsJS]
            }
        });
    </script>
<% end_if %>
<style>
    html, body {
        font-size: 10px;
    }

    html *, body * {
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
</style>
