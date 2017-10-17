class Api::V1::NewsController < Api::V1::BaseController 
  def index
		@news = News.where(news_type: params[:type], channel: params[:channel]).last["news"]
		render json: @news
  end

	def hnews
		@news = HindiNews.where(news_type: params[:type], channel: params[:channel]).last["news"]
		render json: @news
	end
end
