require 'test_helper'

class Api::V1::ItemsControllerTest < ActionController::TestCase
  test '#show json' do
    get :show, format: :json, id: Item.first.id

    item = JSON.parse(response.body, symbolize_names: :true)

    assert_equal 'item 2', item[:name]
    assert_response :success
  end

  test '#find json' do
    get :find, format: :json, name: 'item 1'

    item = JSON.parse(response.body, symbolize_names: :true)

    assert_equal 'item 1', item[:name]
    assert_response :success
  end
end
