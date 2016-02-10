# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#input").keyup(function(){
var  x = document.getElementById("input").value;
$.ajax({
type: 'GET',
url:  "/customers/" + x,
data: {id: x},
dataType: 'json',

success: function(r){
v = r['variant'];
console.log(v)
$("#name").val(r['name']);
$("#contactno").val(r['contactno']);
$("#email").val(r['email']);
}
});
});

