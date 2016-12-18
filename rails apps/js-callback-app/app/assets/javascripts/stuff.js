function showInfo(){
  var information = document.getElementById('information');
    information.innerHTML = "Loading...";

  var response = $.get("https://data.cityofnewyork.us/resource/b2iz-pps8.json?$limit=10", function(){
    console.log(response.responseJSON);

  var infoArray = response.responseJSON;

  var newHTML = "";
    for (var i=0; i<infoArray.length; i++) {
      newHTML += '<h3>' + infoArray[i].currentstatus + '</h3>';
      newHTML += '<p>' + infoArray[i].boro + '</p>';
      newHTML += '<p>' + infoArray[i].streetname + '</p>';
    }
  information.innerHTML = newHTML;
  console.log(newHTML);
  }); //$ is jQuery and is the JS library like Unirest in Ruby to get apis and DOM requests. Will print immediately after the api loads.
}
