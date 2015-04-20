# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.onload = ->
  time()
time = ->
  clearTimeout(t)
  date = new Date()
  y = date.getFullYear()
  M = date.getMonth() + 1
  dates = date.getDate()
  D = date.getDay()
  h = date.getHours()
  m = date.getMinutes()
  s = date.getSeconds()
  day = switch D
    when 1 then '星期一'
    when 2 then '星期二'
    when 3 then '星期三'
    when 4 then '星期四'
    when 5 then '星期五'
    when 6 then '星期六'
    when 0 then '星期日'
  document.getElementById("time").innerHTML = "当前时间:"+y+"年"+M+"月"+dates+"日 "+day+" "+h+":"+m+":"+s
  t = setTimeout(time, 1000)

