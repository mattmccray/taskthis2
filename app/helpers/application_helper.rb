module ApplicationHelper

  def page_id
    [
      controller.controller_name,
      controller.action_name
    ].join "_"
  end

  def page_class(extra="")
    [
      controller.controller_name,
      controller.action_name,
      extra
    ].join " "
  end

end
