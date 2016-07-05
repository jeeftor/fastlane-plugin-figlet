describe Fastlane::Actions::FigletAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The figlet plugin is working!")

      Fastlane::Actions::FigletAction.run(nil)
    end
  end
end
