import '../style/style.scss'

showdown    = require('showdown')
srcRules    = require('../rules/rules.md')
converter   = new showdown.Converter()
rules       = converter.makeHtml(srcRules)

document.querySelector('#rules').innerHTML = rules
