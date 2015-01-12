class ProductsController < ApplicationController
http_basic_authenticate_with name: "dag", password: "secret", only: :search	

	def show
		@product = Product.find(params[:id])
	end

	def add
		
	end

	def choice
		@name = params[:name]
		@language = params[:language]
	end

	def search

	end

	def search_results
		@products = Product.where(name: params[:name])
	end

end
