'use strict';

import './style.sass'
import $ from 'jquery'
import M from 'materialize-css'

M.AutoInit()
M.Dropdown.init($(".dropdown-trigger"),
  {alignment:"right", constrainWidth: false, coverTrigger:false})

$(document).ready( () ->
  if $(".alert").length
    M.toast({html: $(".alert").html()})
    $(".alert").remove()
  if $(".notice").length
    M.toast({html: $(".notice").html()})
    $(".notice").remove()
)


