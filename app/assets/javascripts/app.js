angular
.module('app', ['ui.router',
                  'templates',
                  'Devise',
                  'ngCookies',
                  // 'ngMessages',
                  'ngResource'
                  // 'ui.bootstrap'
                  ])
  .config(function($stateProvider, $urlRouterProvider, $httpProvider, AuthProvider, AuthInterceptProvider){

    $stateProvider
        // .state('top', {
        //     url: '/top',
        //     templateUrl: 'views/topstories.html',
        //     controller: 'TopController as top',
        //     resolve: {
        //              stories: function(ApiService){
        //                console.log("works?");
        //                return ApiService.getTop();
        //              }
        //     }
        // })

        .state('post', {
            url: '/post/:id',
            templateUrl: '/app/views/post.html',
            controller: 'PostController as post',
            resolve: {
                     post: function($stateParams, PostFactory){
                       console.log("app.js state provider for Post ");
                       console.log($stateParams.id)
                       return PostFactory.show({id: $stateParams.id}).$promise
                     }
            }
        })
  });
