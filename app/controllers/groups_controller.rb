class GroupsController < ApplicationController

	before_action :find_group, only: [:show, :edit, :update, :destroy]

	def index
		@groups = Group.all.order("created_at DESC")
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(groups_params)

		if @group.save
			redirect_to @group
		else
			render "New"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @group.update(groups_params)
			redirect_to @group
		else
			render "Edit"
		end
	end

	def destroy
		@group.destroy
		redirect_to root_path
	end

	private

	def groups_params
		params.require(:group).permit(:title, :url)
	end

	def find_group
		@group = Group.find(params[:id])
	end

end
