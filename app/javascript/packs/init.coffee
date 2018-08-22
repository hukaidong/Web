'use strict';

import $ from 'jquery'
import M from 'materialize-css'

M.AutoInit()
M.Dropdown.init($(".dropdown-trigger"),
    {alignment:"right", constrainWidth: false, coverTrigger:false})
