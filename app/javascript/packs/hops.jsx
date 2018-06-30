import React from 'react'
import ReactDOM from 'react-dom'
import HopSelector from 'HopSelector'

document.addEventListener('turbolinks:load', function() {
  var element = document.getElementById("root");
  ReactDOM.render(<HopSelector />, element);
});
