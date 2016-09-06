class AddressPage < GenericBasePage

  element(:page_heading) {|b| b.element(class: "page-heading")}

  element(:firstname) {|b| b.text_field(id: "firstname")}
  element(:lastname) {|b| b.text_field(id: "lastname")}
  element(:address1) {|b| b.text_field(id: "address1")}
  element(:city) {|b| b.text_field(id: "city")}
  element(:state) {|b| b.select(id: "id_state")}
  element(:country) {|b| b.select(id: "id_country")}

  element(:post_code) {|b| b.text_field(id: "postcode")}
  element(:home_phone) {|b| b.text_field(id: "phone")}
  element(:mobile_phone) {|b| b.text_field(id: "phone_mobile")}
  element(:address_title) {|b| b.text_field(id: "alias")}
  element(:save_button) {|b| b.button(id: "submitAddress")}

  element(:message) {|b| b.textarea(name: "message")}
  element(:proceed_to_checkout) {|b|b.button(name: "processAddress")}

end