// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function changeColor() {
  //change the color of "first"
  //grab that element from the DOM
  setTimeout(function() {
    var firstOne = document.getElementById("first");
    firstOne.style.color = "red";
    setTimeout(function() {
      var SecondOne = document.getElementById("second");
      SecondOne.style.color = "green";
      SecondOne.style.fontVariant = "small-caps";
      setTimeout(function() {
        var ThirdOne = document.getElementById("third");
        ThirdOne.style.color = "blue";
        ThirdOne.style.fontSize = "xx-large";
        setTimeout(function() {
          var FourthOne = document.getElementById("fourth");
          FourthOne.style.color = "purple";
          FourthOne.style.font = "italic bold 20px arial,serif";
        }, 1000);
      }, 1000);
    }, 1000);
  }, 1000);
  //Will alert 'Hello' every 5 seconds
  // setInterval(function(){
  //   alert("Hello");
  // }, 5000);
}
