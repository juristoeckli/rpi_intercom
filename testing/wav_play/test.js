var Sound = require('node-aplay');

// fire and forget:
//new Sound('/path/to/the/file/filename.wav').play();
 
// with ability to pause/resume:
var music = new Sound('music.wav');
music.play();

console.log("music.play");
 
setTimeout(function () {
    music.pause(); // pause the music after five seconds
	console.log("music.pause");
}, 5000);
 
setTimeout(function () {
    music.resume(); // and resume it two seconds after pausing
	console.log("music.resume");
}, 7000);


setTimeout(function () {
	music.stop();
	console.log("music.pause")
}, 11000);
 
// you can also listen for various callbacks:
//music.on('complete' function () {
//    console.log('Done with playback!');
//});