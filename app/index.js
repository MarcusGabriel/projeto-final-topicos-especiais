var app = angular.module('sysFornecedor', ['ngRoute']);

app.controller("CreateFornecedorController", function ($scope, $http, $location) {

    $scope.fornecedor = {};

    $scope.salvar = function() {
        $http.post("http://httpbin.org/post", $scope.fornecedor).then(function(response) {
            console.log("DEU CERTO <3", response);
            $location.path("/");
        }, function(error) {
            console.log("DEU RUIM", error);
        });
    };

});

app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        // controller: "ListFornecedorController",
        templateUrl: "app/view-fornecedor.html"
    })
    .when("/criar/fornecedor", {
        controller: "CreateFornecedorController",
        templateUrl: "app/create-fornecedor.html"
    })
    .when("/criar/categoria", {
        // controller: "CreateCategoriaController",
        templateUrl: "app/create-categoria.html"
    })    
    .when("/editar/fornecedor", {
        // controller: "UpdateFornecedorController",
        templateUrl: "app/update-fornecedor.html"
    })    
});