var bookmymove = angular.module('bookmymove',[
	'ngRoute',
	'templates',
	'ngMaterial',
    'ngAria',
    'ngAnimate',
	'ngAutocomplete',
    'ui.date'
	]);

bookmymove.config(['$routeProvider', '$mdThemingProvider', function($routeProvider,$mdThemingProvider){
	$routeProvider
	.when('/',{
		templateUrl: 'index.html',
		controller: 'indexCtrl'
	})
    .when('/map', {
        templateUrl: 'map.html',
        controller: 'MapCtrl'
    })
    $mdThemingProvider.theme('docs-dark', 'default')
        .primaryPalette('teal');
        $mdThemingProvider.theme('docs-darks', 'default')
        .primaryPalette('blue');
}]);

//Controllers
bookmymove.controller('indexCtrl', ['$scope', function($scope){

}]);

bookmymove.controller('MapCtrl', ['$scope', function($scope){
	$scope.result2 = '';
    $scope.options2 = {
      country: 'in'
    };    $scope.details2 = '';
    $scope.result3 = '';
    $scope.options3 = {
      country: 'in'
    };    $scope.details3 = '';

    $scope.zipfrom = '';
    $scope.zipto = '';
    $scope.from ='';
    $scope.to = '';

    $scope.currentdate = new Date();
}]);
