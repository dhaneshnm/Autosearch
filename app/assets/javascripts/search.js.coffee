
#alert("clicked "+year);
call = ->
  jsonfile = new XMLHttpRequest()
  jsonfile.open "GET", "http://api.lemonfree.com/v2/listings/?year_from=2013&year_to=2013&make=Toyota&model=Camry&key=b7e9f727a38d9b874d9fb8efa73aef0c&format=json", true
  jsonfile.onreadystatechange = ->
    if jsonfile.readyState is 4
      if jsonfile.status is 200
        taglines = JSON.parse(jsonfile.responseText)
        choose = Math.floor(Math.random() * taglines.length)
        tagline = document.createTextNode(taglines[choose].metais)
        insertTagline tagline

  jsonfile.send null
$("#search").click ->
  year = $("#car-years")[0].value
  make = $("#car-makes")[0].value
  model = $("#car-models")[0].value
  trim = $("#car-model-trims")[0].value
  key = "b7e9f727a38d9b874d9fb8efa73aef0c"
  console.log year + make + model + trim
  call()
