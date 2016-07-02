angular
.module('app', ['ui.router',
                  'templates',
                  'Devise',
                  'ngCookies',
                  'ngMessages',
                  'ngResource',
                  'ui.bootstrap'
                  ])
  .config(function($stateProvider, $urlRouterProvider, $httpProvider, AuthProvider, AuthInterceptProvider){

      AuthInterceptProvider.interceptAuth(true)
    $stateProvider
      .state('home', {
        url: "/",
        templateUrl: 'app/views/home.html',
        controller: 'TestCtrl as test'
      });
      .state('home.auth', {
        url: 'auth',
        templateUrl: 'app/views/auth.html',
        controller: 'SessionCtrl as session',
        // onEnter: function($state){
        //         if (sessionStorage['currUser']){
        //             var user = JSON.parse(sessionStorage['currUser'])
        //             $state.go('home.user', {id: user.id})
        //         }
        //       }
            })
      // .state('home.user', {
      //   url: 'users/:id',
      //   templateUrl: 'app/views/user.html',
      //   controller: 'UserCtrl as user',
      //   controllerAs: 'user',
      //   onEnter: function($state){
      //           if (!sessionStorage['currUser']){
      //               $state.go('home.auth', {}, {reload: true})
      //           }
      //     },
      //   })

      $urlRouterProvider.otherwise('/')
  });
