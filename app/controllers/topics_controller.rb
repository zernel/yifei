class TopicsController < ApplicationController
  before_action :set_topic, only: %i[ show add_reply ]
  before_action :check_authorize, only: %i[add_reply]

  def create
    topic = Topic.new(params[:topic].permit(:category, :title, :content))
    topic.user = current_user
    if topic.save
      redirect_to topic_path(topic), notice: "成功发表话题。"
    else
      redirect_to root_path, error: "出错了，请重试。"
    end
  end

  def show
    @replies = @topic.replies
  end

  def add_reply
    reply = @topic.replies.build(content: params[:reply][:content])
    reply.user = current_user
    if reply.save
      redirect_to topic_path(@topic), notice: "成功发表回复。"
    else
      redirect_to topic_path(@topic), error: "出错了，请重试。"
    end
  end

  private
  def set_topic
    @topic = Topic.where(category: Topic::CATS).find(params[:id] || params[:topic_id])
  end
end
