function changeColorOfText(theDiv){
  console.log("Change color!");
  if (theDiv.style.color == "lightgrey") {
    theDiv.style.color = "black";
  }
  else {
    theDiv.style.color = "lightgrey";
  }
}

function onlyBrooklyn(){
  console.log("Hi");
  var dob = document.querySelectorAll('.dob');
  console.log(dob);
  for (var i = 0; i<dob.length; i++) {
    if (dob[i].innerHTML.indexOf("CLOSED") === -1); {
      dob[i].style.display = "none";
    }
  }
}

function showInfo(){
  var information = document.getElementById('information');
    information.innerHTML = "Loading...";

  var response = $.get("https://data.cityofnewyork.us/resource/b2iz-pps8.json?$limit=10", function(){
    console.log(response.responseJSON);

  var infoArray = response.responseJSON;

  var newHTML = "";
    for (var i=0; i<infoArray.length; i++) {
      newHTML += '<div class="dob" onclick="changeColorOfText(this)">';
      newHTML += '<h3>' + infoArray[i].currentstatus + '</h3>';
      newHTML += '<p>' + infoArray[i].dob + '</p>';
      newHTML += '<p>' + infoArray[i].streetname + '</p>';
      newHTML += '</div>';
    }
  information.innerHTML = newHTML;
  console.log(newHTML);
  }); //$ is jQuery and is the JS library like Unirest in Ruby to get apis and DOM requests. Will print immediately after the api loads.
}
