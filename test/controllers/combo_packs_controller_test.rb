require 'test_helper'

class ComboPacksControllerTest < ActionController::TestCase
  setup do
    @combo_pack = combo_packs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combo_packs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combo_pack" do
    assert_difference('ComboPack.count') do
      post :create, combo_pack: { user_id: @combo_pack.user_id }
    end

    assert_redirected_to combo_pack_path(assigns(:combo_pack))
  end

  test "should show combo_pack" do
    get :show, id: @combo_pack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combo_pack
    assert_response :success
  end

  test "should update combo_pack" do
    patch :update, id: @combo_pack, combo_pack: { user_id: @combo_pack.user_id }
    assert_redirected_to combo_pack_path(assigns(:combo_pack))
  end

  test "should destroy combo_pack" do
    assert_difference('ComboPack.count', -1) do
      delete :destroy, id: @combo_pack
    end

    assert_redirected_to combo_packs_path
  end
end
