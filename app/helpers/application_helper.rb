module ApplicationHelper
  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    errors = Array(instance.error_message).join(',')
	if html_tag.include? "label"
	  %(#{html_tag}<span class="validation-error">&nbsp;#{errors}</span>).html_safe
    else
	  %(#{html_tag}).html_safe
	end
  end
end
