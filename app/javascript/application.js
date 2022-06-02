// Entry point for the build script in your package.json
//import "@hotwired/turbo-rails"
import "./controllers"
import "./react/src"

require('react-dom');
window.React2 = require('react');
console.log(window.React1 === window.React2);