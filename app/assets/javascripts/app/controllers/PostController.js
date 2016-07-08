function PostController(post){
  console.log("PostController.js FIle!!!");
    this.data = post.data;

}

angular
    .module('app')
    .controller('PostController', PostController)
