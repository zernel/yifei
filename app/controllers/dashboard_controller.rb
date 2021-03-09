class DashboardController < ApplicationController
  def index
    @announcements = Announcement.all

    @topic = Topic.new(category: Topic::CATS.first)
    @topics = Topic.where(category: Topic::CATS).all

    @service_topic = Topic.new(category: Topic::ADMIN_CATS.first)
    @my_service_topics = Topic.where(category: Topic::ADMIN_CATS, user: current_user).all
  end
end
