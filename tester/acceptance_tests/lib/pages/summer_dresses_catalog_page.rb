class SummerDressesCatalogPage < GenericBasePage

  element(:category_name) { |b| b.element(class: 'cat-name')}

  element(:size_short) {|b| b.checkbox(id: "layered_id_attribute_group_1")}
  element(:size_medium) {|b| b.checkbox(id: "layered_id_attribute_group_2")}

  element(:color_white) {|b| b.checkbox(id: "layered_id_attribute_group_8")}

  class PrintedSummerDress1 < GenericBasePage

    element(:img_dress1) {|b| b.element(xpath: "//*[@id='center_column']/ul/li[1]/div/div[1]/div/a[1]/img")}
    element(:add_cart_dress1) {|b| b.element(xpath: "//*[@id='center_column']/ul/li[1]/div/div[2]/div[2]/a[1]")}
    element(:product_price) {|b| b.element(class: "product-price")}

  end

  class CartPopup < GenericBasePage
    element(:continue_shopping) {|b| b.element(title: "Continue shopping")}
    element(:proceed_to_checkout) {|b| b.element(title:"Proceed to checkout")}

  end

end

