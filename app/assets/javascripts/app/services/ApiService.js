var API_URL = 'https://localhost:3000/';

function ApiService($http){

    this.getTop = function(){
      return $http.get(API_URL + 'topstories.json');
    };

    this.getPost = function(id){

      return $http.get(API_URL + 'posts/' + id + '.json');
    };

}

angular
  .module('app')
  .service('ApiService', ApiService);
