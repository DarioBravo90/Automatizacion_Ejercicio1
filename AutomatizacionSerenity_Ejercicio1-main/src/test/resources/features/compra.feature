# language: en

Feature: Compra de productos Demoblazer
  El cliente reliza la compra de dos productos.

  @CompraExitosa
  Scenario: Compra de dos productos
    Given que el usuario "Dario" ingresa a la pagina principal
    When selecciona el producto "Samsung galaxy s6"
    And visualiza el detalle y lo agrega al carro de compras
    And "Dario" regresa a la pagina principal
    When selecciona el producto "Iphone 6 32gb"
    And visualiza el detalle y lo agrega al carro de compras
    When navega al carrito de compras
    And procesa la orden
    When completa el formulario de compra "Test" "Ecuador" "Cuenca" "1123456789" "7" "2027"
    And confirma la compra
    Then finalizar compra
