RSpec.describe Webpage do
  let(:webpage) { Webpage.create(url: some_url, raw_html: sample_html) }
  let(:some_url) {
    "https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/"}

  let(:sample_html) {
    <<~HTML
  <!DOCTYPE html>
<html>
<head>
<title>Some Title</title>
</head>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>
    HTML
  }
  describe "#body" do
    subject {webpage.body}

    it "returns the body"  do
      expect(subject).not_to include("Some Title")
      expect(subject).to include("first paragraph")

      puts subject
    end
  end

  describe "#head" do
    subject {webpage.head}

    it "returns the head"  do
      expect(subject).to include("Some Title")
      expect(subject).not_to include("first paragraph")
    end
  end
end
