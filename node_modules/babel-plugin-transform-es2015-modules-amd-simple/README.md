# babel-plugin-transform-es2015-modules-amd-simple

Alterntative to default babel-plugin-transform-es2015-modules-amd that does not
mangle symbol names. Simply uses
[babel-plugin-transform-es2015-modules-commonjs-simple](https://github.com/jamietre/babel-plugin-transform-es2015-modules-commonjs-simple)
as a base instead of Babel's default
babel-plugin-transform-es2015-modules-commonjs. As a result, it supports the
same options as babel-plugin-transform-es2015-modules-commonjs-simple. View
that repo for more info.

## Installation

```sh
$ npm install babel-plugin-transform-es2015-modules-amd-simple
```

## Usage

### Via `.babelrc` (Recommended)

**.babelrc**

```json
{
  "plugins": ["transform-es2015-modules-amd-simple"]
}
```

### Via CLI

```sh
$ babel --plugins transform-es2015-modules-amd-simple script.js
```

### Via Node API

```javascript
require("babel-core").transform("code", {
  plugins: ["transform-es2015-modules-amd-simple"]
});
```
