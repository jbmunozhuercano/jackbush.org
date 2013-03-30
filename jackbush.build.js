({
    appDir: './app-built/',
    baseUrl: './static/coffeescript/',
    mainConfigFile: './app-built/static/coffeescript/jackbush/main-conf.js',
    dir: './app-built.r/',
    keepBuildDir: true,
    locale: 'en-us',
    optimize: 'none',
    skipDirOptimize: false,
    generateSourceMaps: false,
    optimizeCss: 'none',
    inlineText: true,
    stubModules: ['text', 'json'],
    removeCombined: true,

    modules: [
        {
            name: 'jackbush/main'
        }
    ],

    wrap: true,
    logLevel: 0,

    throwWhen: {
        optimize: true
    },

    waitSeconds: 7

})
