require 'test_helper'

class SearchProductsTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  test "should return one product w/ 10% discount for 'hot' search input" do
    visit "/"
    fill_in "nome", with: "hot"
    click_button "", class: "btn btn-secondary my-2 my-sm-0"
    assert_css('.product-card', count: 1)
    assert_css('.product-card__promotion', count: 1)
    assert_text('10% OFF')
    assert_text ('1 produto encontrado!')
  end

  test "should return two products for 'pepper' search input" do
    visit "/"
    fill_in "nome", with: "pepper"
    click_button "", class: "btn btn-secondary my-2 my-sm-0"
    assert_css('.product-card', count: 2)
    assert_css('.product-card__promotion', count: 1)
    assert_text ('2 produtos encontrados!')
  end
end
