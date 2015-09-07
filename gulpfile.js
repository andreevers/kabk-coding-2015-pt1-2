var gulp = require('gulp');
var execSync = require('child_process').execSync;


var md_files = [
	'./**/*.md',
	'!node_modules/**/*.md'
];
gulp.task('watch:toc', function(cb) {
	gulp.watch(md_files, function(event) {
		console.log(event.path);
		execSync('doctoc ' + event.path);
	});
});


gulp.task('default', ['watch:toc']);
