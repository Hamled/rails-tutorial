require 'zeus/rails'

# Enable notifications from Guard
ENV['GUARD_NOTIFY'] = 'true'
ENV['GUARD_NOTIFICATIONS'] = "---\n- :name: :gntp\n  :options: {}\n"

class CustomPlan < Zeus::Rails

  # def my_custom_command
  #  # see https://github.com/burke/zeus/blob/master/docs/ruby/modifying.md
  # end

end

Zeus.plan = CustomPlan.new
