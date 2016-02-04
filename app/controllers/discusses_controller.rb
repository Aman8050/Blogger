class DiscussesController < ApplicationController
	
	def index
		@discusses = Discuss.all.order('created_at DESC')
	end

	def new
		@discuss = Discuss.new
	end

	def create
		@discuss = Discuss.new(post_params)

		if @discuss.save
			redirect_to @discuss
		else
			render 'new'
		end
	end

	def show
		@discuss = Discuss.find(params[:id])
	end

	def edit
		@discuss = Discuss.find(params[:id])
	end

	def update
		@dicuss = Discuss.find(params[:id])
		if @discuss.update(params[:post].permit(:title,:body))
			redirect_to @discuss
		else
			render 'edit'
		end
	end

	def destroy
		@discuss = Discuss.find(params[:id])
		@discuss.destroy

		redirect_to root_path
	end

	private 
		def post_params
		    params.require(:discuss).permit(:title,:body)
		end 


end
