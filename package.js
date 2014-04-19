Package.describe({
    summary: "Base64 transcoder from webtoolkit"
})
Package.on_use(function(api){
    api.export('Base64');
    api.add_files(['base64.js'], 'server');
});
