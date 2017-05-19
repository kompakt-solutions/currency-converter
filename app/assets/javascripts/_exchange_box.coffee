$(document).ready ->

  $('#change').on 'click', (event) =>
    curr_destination = $('#currency_destination').val()
    $('#currency_destination').val($('#currency').val())
    $('#currency').val(curr_destination)
    convert()
    return false

  $('#quantity').on 'keyup', (event) =>
    convert()

  $('#currency').on 'change', (event) =>
    convert()

  convert = ->
    quantity = $('#quantity').val()
    $.ajax '/exchange',
        type: 'POST'
        dataType: 'json'
        data: {
                currency: $("#currency").val(),
                currency_destination: $("#currency_destination").val(),
                quantity: $("#quantity").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false

