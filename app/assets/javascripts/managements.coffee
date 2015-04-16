# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.onload = ->
  sd1 = document.getElementById("sider1")
  ul1 = document.getElementById("ul1")
  sd2 = document.getElementById("sider2")
  ul2 = document.getElementById("ul2")
  sd3 = document.getElementById("sider3")
  ul3 = document.getElementById("ul3")
  sd4 = document.getElementById("sider4")
  ul4 = document.getElementById("ul4")
  sd1.onclick = ->
    if ul1.style.display == 'none'
      ul1.style.display = 'block'
    else
      ul1.style.display = 'none'

  sd2.onclick = ->
    if ul2.style.display == 'none'
      ul2.style.display = 'block'
    else
      ul2.style.display = 'none'

  sd3.onclick = ->
    if ul3.style.display == 'none'
      ul3.style.display = 'block'
    else
      ul3.style.display = 'none'

  sd4.onclick = ->
    if ul4.style.display == 'none'
      ul4.style.display = 'block'
    else
      ul4.style.display = 'none'

