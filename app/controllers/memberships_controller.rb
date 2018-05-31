class MembershipsController < ApplicationController
  before_action :authenticate_user!

  def show
    @membership = Membership.find params[:id]
  end

  def new
    @membership = Membership.new
    @membership.members.build
  end

  def create
    @membership = current_user.memberships.build(membership_params)
    if @membership.save
      redirect_to @membership, notice: 'You have successfully joined.'
    else
      render :new, alert: 'Unable to create membership.'
    end
  end

private

  def membership_params
    params.require(:membership).permit(members_attributes: [:first_name,
                                                            :last_name,
                                                            :date_of_birth,
                                                            :gender])
  end
end
