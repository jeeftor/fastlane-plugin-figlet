module Fastlane
  module Actions
    class FigletAction < Action
      def self.run(params)
        text = params[:text]
        font = params[:font]
        output = `figlet  -f #{font}  #{text.upcase}`
        puts output
      end

      def self.description
        "Wrapper around figlet which will print large ascii-art text words.  Useful for reading through log files"
      end

      def self.authors
        ["Jeff Stein"]
      end

      def self.available_options
        [
            FastlaneCore::ConfigItem.new(key: :text,
                                         env_name: "FL_FIGLET_TEXT",
                                         description: "Text to ASCII-ify",
                                         optional: false,
                                         verify_block: proc do |value|
                                           raise "No text given, pass using `text: 'STRING'`".red unless value and !value.empty?
                                         end),
            FastlaneCore::ConfigItem.new(key: :font,
                                         env_name: "FL_FIGLET_FONT",
                                         description: "custom figlet font",
                                         type: String,
                                         default_value: "standard",
                                         optional: true)
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "FIGLET_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
