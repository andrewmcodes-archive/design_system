require('turbolinks').start()

import $ from 'jquery'
import 'bootstrap/dist/js/bootstrap'

$(document).on('turbolinks:load', function () {
  $('body').tooltip({
    selector: '[data-toggle="tooltip"]',
    container: 'body'
  })

  $('body').popover({
    selector: '[data-toggle="popover"]',
    container: 'body',
    html: true,
    trigger: 'hover'
  })
})
