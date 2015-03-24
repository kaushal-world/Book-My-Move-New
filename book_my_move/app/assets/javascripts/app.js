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
    .when('/registration', {
        templateUrl: 'registration.html',
        controller: 'RegistrationCtrl'
    })
    .when('/feedback', {
        templateUrl: 'feedback.html',
        controller: 'feedbackCtrl'
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

bookmymove.controller('RegistrationCtrl', ['$scope', function($scope){
$scope.cities = [
    { name: 'Pune'},
    { name: 'Ahmednagar'},
    { name: 'Mumbai' },
    { name: 'Nagpur' },
    { name: 'Solapur' },
    { name: 'Satara' },
    { name: 'Nasikh' },
    { name: 'Lonvala' },
  ];

  $scope.user_type = 'user';

  $scope.states = [
    { name: 'Andhra Pradesh'},
    { name: 'Arunachal Pradesh'},
    { name: 'Assam' },
    { name: 'Bihar' },
    { name: 'Chhattisgarh' },
    { name: 'Goa' },
    { name: 'Gujarat' },
    { name: 'Haryana' },
    { name: 'Himachal Pradesh' },
    { name: 'Jammu & Kashmir' },
    { name: 'Jharkhand' },
    { name: 'Karnataka' },
    { name: 'Kerala' },
    { name: 'Madhya Pradesh' },
    { name: 'Maharashtra' },
    { name: 'Manipur' },
    { name: 'Meghalaya' },
    { name: 'Mizoram' },
    { name: 'Nagaland' },
    { name: 'Odisha (Orissa)' },
    { name: 'Punjab' },
    { name: 'Rajasthan' },
    { name: 'Sikkim' },
    { name: 'Tamil Nadu' },
    { name: 'Telangana (from June 2, 2014)' },
    { name: 'Tripura' },
    { name: 'Uttar Pradesh' },
    { name: 'Uttarakhand' },
    { name: 'West Bengal' },
  ];

   $scope.districts = [
    { name: 'Pune'},
    { name: 'Ahmednagar'},
    { name: 'Mumbai' },
    { name: 'Nagpur' },
    { name: 'Solapur' },
    { name: 'Satara' },
    { name: 'Nasikh' },
    { name: 'Lonvala' },
  ];

   $scope.talukas = [
    { name: 'Pune'},
    { name: 'Ahmednagar'},
    { name: 'Mumbai' },
    { name: 'Nagpur' },
    { name: 'Solapur' },
    { name: 'Satara' },
    { name: 'Nasikh' },
    { name: 'Lonvala' },
  ];
}]);

bookmymove.controller('feedbackCtrl', ['$scope', function($scope){

}]);