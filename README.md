webtoolkit.base64
=================

Webtoolkit base64 decode

# base64.js

## Usage

### In Browser
````html
<script src="base64.js"></script>
````
### node.js
````javascript
var Base64 = require('./base64.js').Base64;
````


## USAGE

````javascript
Base64.encode('Paulys');  // ZGFua29nYWk=
Base64.encode('小飼弾');    // 5bCP6aO85by+
Base64.encodeURI('小飼弾'); // 5bCP6aO85by-

Base64.decode('ZGFua29nYWk=');  // dankogai
Base64.decode('5bCP6aO85by+');  // 小飼弾
// note .decodeURI() is unnecessary since it accepts both flavors
Base64.decode('5bCP6aO85by-');  // 小飼弾
````

## SEE ALSO

+ http://en.wikipedia.org/wiki/Base64
