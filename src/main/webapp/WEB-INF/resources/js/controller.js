
var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

    $scope.refreshCart = function () {
        //alert("refreshCart id Is"+ $scope.cartId.toString());
        var data = $http.get('/emusicStore/rest/cart/'+$scope.cartId).then(function (data){

            console.log("CART: ", data);
        });
        console.log("CART: ", data);

        $http.get('/emusicStore/rest/cart/'+$scope.cartId).success(function (data) {
            //alert("data Is"+ data.toString());
            console.log("CART: ", data);
            $scope.cart = data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/emusicStore/rest/cart/'+$scope.cartId).success(function () {
            $scope.refreshCart();
        });
    };

    $scope.initCartId = function (cartId) {
       // alert("cart is in initCartId Is"+ cartId.toString());
        $scope.cartId = cartId;
        $scope.refreshCart();
    };

    $scope.addToCart = function (productId) {
/*
        $http.put('/emusicStore/rest/cart/add/'+productId).success(function () {
            alert("Product Added successfully to cart "+ $scope.cart.toString());
        });
*/
        $http.put('/emusicStore/rest/cart/add/'+productId).success(function (data){
            $scope.refreshCart($http.get('/emusicStore/rest/cart/'+ $scope.cartId));
           // alert("Product Added successfully to cart "+ $scope.cartId);
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/emusicStore/rest/cart/remove/'+productId).success(function () {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function(){
        var grandTotal = 0;

        for(var i =0; i < $scope.cart.cartItems.length; i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    };

});