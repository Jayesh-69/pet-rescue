require "test_helper"
require "action_policy/test_helper"

class Organizations::Staff::CustomPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @org = ActsAsTenant.current_tenant
    admin = create(:staff_admin, organization: @org)
    sign_in admin
    @custome_page = create(:custome_page, organization: @org)
  end

  context "authorization" do
    include ActionPolicy::TestHelper

    context "#edit" do
      should "be authorized" do
        assert_authorized_to(
          :manage?, @custome_page, with: Organizations::CustomPagePolicy
        ) do
          get edit_staff_custome_page_url(@custome_page)
        end
      end
    end

    context "#update" do
      setup do
        @params = {custome_page: {hero: "Super Dog", about: "canine caped crusader"}}
      end

      should "be authorized" do
        assert_authorized_to(
          :manage?, @custome_page, with: Organizations::CustomPagePolicy
        ) do
          patch staff_custome_page_url(@custome_page), params: @params
        end
      end
    end
  end
  context "GET #edit" do
    should "get edit page" do
      get edit_staff_custome_page_path
      assert_response :success
    end
  end

  context "PATCH #update" do
    should "update custome page" do
      patch staff_custome_page_path(@custome_page), params: {custome_page: {hero: "Super Dog", about: "canine caped crusader"}}
      @custome_page.reload
      assert_response :redirect
      follow_redirect!
      assert_response :success
      assert_equal "Super Dog", @custome_page.hero
      assert_equal "canine caped crusader", @custome_page.about
    end
  end
end
