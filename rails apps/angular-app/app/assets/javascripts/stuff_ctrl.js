(function() {
  "use strict";

  angular.module("app").controller ("stuffCtrl", function($scope) {

    $scope.messages = [
      "This is task one.",
      "This is task two.",
      "This is task three."
    ];

    $scope.addTaskToMessages = function(someTask) {
      console.log(someTask);
      console.log('hello');
      $scope.messages.push(someTask);
    };

  });

}());
