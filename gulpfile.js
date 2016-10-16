'use strict';
/*------------------------------------------------------------------
 Project Variables
 ------------------------------------------------------------------*/

var root          = './',
    app           = root + 'app/',
    dist          = root + 'dist/',
    sprites       = [app + 'sprites/*@1x.png'],
    retinasprites = [app + 'sprites/*@2x.png'];

/*------------------------------------------------------------------
 Javascript
 ------------------------------------------------------------------*/

var gulp       = require("gulp"),
    chalk      = require("chalk"),
    babelify   = require('babelify'),
    watchify   = require("watchify"),
    gutil      = require("gulp-util"),
    browserify = require('browserify'),
    rename     = require("gulp-rename"),
    source     = require('vinyl-source-stream');

function compileScripts(watch) {
    var props     = watchify.args;
    props.entries = [app + 'js/components/app.js'];
    props.debug   = true;

    var bundler = watch ? watchify(browserify(props)) : browserify(props);

    bundler.transform(babelify, {presets: ['es2015']});

    function rebundle() {
        var stream = bundler.bundle();
        return stream.on('error', function (error) {
            Message('error', 'red');
            gutil.log(chalk['red'](error.message));
        }).pipe(source('typeSettings.js')).pipe(gulp.dest(dist + 'js'));
    }

    bundler.on('update', function () {
        rebundle();
        Message('js', 'green');
    });
    return rebundle();

}

/*------------------------------------------------------------------
 Stylesheets
 ------------------------------------------------------------------*/

var sass         = require('gulp-sass'),
    order        = require("gulp-order"),
    pixrem       = require('gulp-pixrem'),
    concat       = require("gulp-concat"),
    plumber      = require("gulp-plumber"),
    sourcemaps   = require("gulp-sourcemaps"),
    autoprefixer = require("gulp-autoprefixer");

gulp.task('sass', function () {
    Message('scss', 'green');
    var autoprefixerSettings = {
        browsers: ['last 5 versions'],
        cascade : true
    };
    return gulp.src([app + 'styles/**/*.scss'])
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(order())
        .pipe(concat('style.scss'))
        .pipe(sass({outputStyle: 'compressed'}))
        .on('error', sass.logError)
        .pipe(autoprefixer(autoprefixerSettings))
        .pipe(pixrem({rootValue: '10px'}))
        .pipe(sourcemaps.write('./'))
        .pipe(plumber.stop())
        .pipe(gulp.dest(dist + 'styles'))
});

/*------------------------------------------------------------------
 Spritesheet Creation
 ------------------------------------------------------------------*/

var spritesmith = require('gulp.spritesmith');
var replace     = require('gulp-replace');

gulp.task('sprites', function () {
    gutil.log('Gulp.js:', gutil.colors.green('• Creating the spritesheets and associated styles'));

    /* Standard Sprites */
    var spriteData = gulp.src(sprites).pipe(spritesmith({
        padding    : 4,
        imgName    : 'sprites.png',
        cssName    : '_01-Sprites.scss',
        cssTemplate: app + 'sprites/sprite_positions.styl.mustache'
    }));

    spriteData.img.pipe(gulp.dest(dist + 'images'));

    spriteData.css.pipe(replace('@1x', '')).pipe(gulp.dest(app + 'styles/01-Sprites'));

    /* Retina Sprites */
    var retinaSpriteData = gulp.src(retinasprites).pipe(spritesmith({
        padding    : 8,
        imgName    : 'sprites-retina.png',
        cssName    : '_02-Sprites-retina.scss',
        cssTemplate: app + 'sprites/retina-sprite_positions.styl.mustache'
    }));

    retinaSpriteData.img.pipe(gulp.dest(dist + 'images'));

    retinaSpriteData.css.pipe(replace('@2x', '')).pipe(gulp.dest(app + 'styles/01-Sprites'));

});

/*------------------------------------------------------------------
 Flat CMS Theme
 ------------------------------------------------------------------*/

var cms = './flat-cms/';

gulp.task('cms', function () {
    Message('scss', 'green');
    var autoprefixerSettings = {
        browsers: ['last 5 versions'],
        cascade : true
    };
    return gulp.src([cms + 'styles/scss/*.scss'])
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(order())
        .pipe(concat('flat-cms.scss'))
        .on('error', sass.logError)
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(autoprefixer(autoprefixerSettings))
        .pipe(sourcemaps.write('./'))
        .pipe(plumber.stop())
        .pipe(gulp.dest(cms + 'styles/css'))
});

/*------------------------------------------------------------------
 Task Declaration
 ------------------------------------------------------------------*/

var changeEvent = function (evt) {
    gutil.log('File', chalk['blue'](evt.path.replace(/^.*\/(?=[^\/]*$)/, '')), 'was', chalk['blue'](evt.type));
};

gulp.task('finishing', function () {
    Message('scss', 'green');
    Message('js', 'green');
    Message('checklist', 'green');
});

gulp.task('flat', ['cms'], function () {
    gulp.watch(['**/*.scss'], ['cms']).on('change', function (evt) {
        changeEvent(evt);
    });
});

gulp.task('default', ['sprites', 'sass'], function () {
    compileScripts(true);
    gulp.watch([app + 'styles/**/*.scss'], ['sass']).on('change', function (evt) {
        changeEvent(evt);
    });
    gulp.watch([app + 'js/components/app.js']).on('change', function (evt) {
        changeEvent(evt);
    });
});

function Message(message, col) {
    var color = (col != undefined) ? col : 'yellow';
    gutil.log(chalk[color](Messages[message]));
}

/*------------------------------------------------------------------
 Output Messages
 ------------------------------------------------------------------*/

var Messages = {
    start    : ' ██████╗ ██╗   ██╗██╗ ██████╗██╗  ██╗███████╗██╗██╗    ██╗   ██╗███████╗██████╗\n           ██╔═══██╗██║   ██║██║██╔════╝██║ ██╔╝██╔════╝██║██║    ██║   ██║██╔════╝██╔══██╗\n           ██║   ██║██║   ██║██║██║     █████╔╝ ███████╗██║██║    ██║   ██║█████╗  ██████╔╝\n           ██║▄▄ ██║██║   ██║██║██║     ██╔═██╗ ╚════██║██║██║    ╚██╗ ██╔╝██╔══╝  ██╔══██╗\n           ╚██████╔╝╚██████╔╝██║╚██████╗██║  ██╗███████║██║███████╗╚████╔╝ ███████╗██║  ██║\n            ╚══▀▀═╝  ╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝╚══════╝ ╚═══╝  ╚══════╝╚═╝  ╚═╝',
    scss     : '╔═══════════════════════════╗\n           ║ Sass compiled Succesfully ║\n           ╚═══════════════════════════╝',
    js       : '╔════════════════════════╗\n           ║ JS bundled Succesfully ║\n           ╚════════════════════════╝',
    error    : '╔═══════════════════════╗\n           ║ An error has occurred ║\n           ╚═══════════════════════╝',
    checklist: '╔═══════════════════╗\n           ║ Go live checklist ║\n           ╚═══════════════════╝\n           ☑ External font\'s have been included\n           ☑ Favicons have been generated and included\n           ☑ Analytics software is monitoring site\n           ☑ JavaScript files are minified\n           ☑ CSS files are minified\n           ☑ All images have alt tag values\n           ☑ !important is avoided\n           ☑ No base files have been overwritten\n           ☑ 404 Page has been styled\n           ☑ Common meta tags\n           ☑ Autoprefixer\n           ☑ Login page has been styled'
};
