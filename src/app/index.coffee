showdown    = require('showdown')
srcRules    = require('../rules/rules.md')
converter   = new showdown.Converter()
rules       = converter.makeHtml(srcRules)

import '../style/style.scss'

document.querySelector('#rules').innerHTML = rules
