class ManagementController < ApplicationController
  before_action :authorize_manager

  def index
    @unauthorized_users = User.where(is_authorized: false).all
    @announcements = Announcement.first(3)
    @service_topics = Topic.where(category: Topic::ADMIN_CATS).all
  end

  def authorize_user
    @user = User.find(params[:user_id])
    @user.update(is_authorized: true)
    redirect_to management_path, notice: "成功认证'#{@user.auth_info}'。"
  end

  def send_announcement
    Announcement.create!(params[:announcement].permit(:title, :content))
    redirect_to management_path, notice: "成功发布新通知。"
  end

  def reply_service_topic
    @topic = Topic.where(category: Topic::ADMIN_CATS).find(params[:topic_id])
    reply = @topic.replies.build(content: params[:reply][:content])
    reply.user = current_user
    if reply.save
      redirect_to management_path, notice: "成功回复。"
    else
      redirect_to management_path, error: "出错了，请重试。"
    end
  end

  private
  def authorize_manager
    redirect_to root_path, alert: '你没有权限访问该页面。' unless current_user.is_manager?
  end
end
