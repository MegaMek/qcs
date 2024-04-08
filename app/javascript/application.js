// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import * as bootstrap from "bootstrap"

var ready = ( callback ) => {
  if ( document.readyState != "loading" ) callback();
  else document.addEventListener( "DOMContentLoaded", callback );
}

ready( () => {
} );
