  function TestCtrl(){
  this.message = "Hello World";


  }

  angular
    .module('app')
    .controller('TestCtrl', TestCtrl);
