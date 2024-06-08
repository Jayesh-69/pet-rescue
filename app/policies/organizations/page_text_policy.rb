class Organizations::CustomPagePolicy < ApplicationPolicy
  pre_check :verify_organization!
  pre_check :verify_active_staff!

  def manage?
    permission?(:manage_custome_page)
  end
end
