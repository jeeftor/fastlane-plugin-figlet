module Fastlane
  module Helper
    class FigletHelper
      # class methods that you define here become available in your action
      # as `Helper::FigletHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the figlet plugin helper!")
      end
    end
  end
end
