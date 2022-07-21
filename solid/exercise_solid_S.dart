// Temos a seguinte classe abaixo, faça um refactor para cumprir o
// S (Single Responsability) do SOLID

class Cart {
  getCart() {}
}

class CartRepository {
  removeCartRepository() {}
  saveCartRepository() {}
}

class ManipulateOrderItem {
  insertOrderRepository($order) {}
  deleteOrderRepository($order) {}
  updateOrderRepository($order) {}
}

class ViewOrder {
  getOrderDetails($order) {}
  selectOrderRepository($order) {}
}
