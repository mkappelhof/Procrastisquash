import './style.scss'

showdown    = require('showdown')
srcRules    = require('./rules.md')
converter   = new showdown.Converter()
rules       = converter.makeHtml(srcRules)

document.querySelector('#rules').innerHTML = rules
