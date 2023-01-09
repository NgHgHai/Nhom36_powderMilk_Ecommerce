function getCart(id) {
    $.ajax({
        type: "GET",
        data: {userId: id},
        url: "/api/cart",
        success: function (data) {
            $("#cart").html(data);
        }
    });
}


function addToCart(userId, productId, quantity) {
    $.ajax({
        type: "POST",
        data: {userId: userId, productId: productId, quantity: quantity},
        url: "/api/cart/update",
        success: function (e) {
            alert(e);
            getCart(userId);
        }
    });
}

function updateCart(userId, productId, quantity) {
    $.ajax({
        type: "POST",
        data: {userId: userId, productId: productId, quantity: quantity},
        url: "/api/cart/update",
        success: function (e) {
            alert(e);
            getCart(userId);
        }
    });
}

function removeCart(userId, productId) {
    $.ajax({
        type: "POST",
        data: {userId: userId, productId: productId},
        url: "/api/cart/remove",
        success: function (e) {
            alert(e);
            getCart(userId);
        }
    });
}