require "logs_formatter"

RSpec.describe Formatter::Logs do
    subject(:get_data) { described_class.get_data(logs_data) }
    let(:logs_data) {"webserver.log"}

    it "takes in the webserver.log" do
       expect(:logs_data).not_to be_nil
    end


    context "most viewed webpages" do
        subject(:get_data) { described_class.most_viewed_webpages(logs_data) }
        let(:logs_data) {"webserver.log"}

        it "store elements in an Array" do
            expect(subject).to be_a(Array)
            expect(subject).to_not be_empty
        end

        it "store elements in an Array" do
            results = [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
            expect(subject).to eq results
        end
    end

    context "most unique views" do
        subject(:get_data) { described_class.webpages_with_most_unique_views(logs_data) }
        let(:logs_data) {"webserver.log"}

        it "store elements in an Array" do
            expect(subject).to be_a(Array)
            expect(subject).to_not be_empty
        end

        it "should return the proper results" do
            results = [["/about", 5], ["/about/2", 4], ["/contact", 2], ["/help_page/1", 6], ["/home", 3], ["/index", 3]]
            expect(subject).to eq results
        end
    end
end

