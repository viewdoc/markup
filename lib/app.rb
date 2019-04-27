require "roda"
require 'github/markup'

class App < Roda
  route do |r|
    r.post "markdown" do
      GitHub::Markup.render("markup.markdown", request.body.read)
    end
    r.post "textile" do
      GitHub::Markup.render("markup.textile", request.body.read)
    end
    r.post "rdoc" do
      GitHub::Markup.render("markup.rdoc", request.body.read)
    end
    r.post "org" do
      GitHub::Markup.render("markup.org", request.body.read)
    end
    r.post "creole" do
      GitHub::Markup.render("markup.creole", request.body.read)
    end
    r.post "mediawiki" do
      GitHub::Markup.render("markup.mediawiki", request.body.read)
    end
    r.post "rst" do
      GitHub::Markup.render("markup.rst", request.body.read)
    end
    r.post "asciidoc" do
      GitHub::Markup.render("markup.asciidoc", request.body.read)
    end
    r.post "pod" do
      GitHub::Markup.render("markup.pod", request.body.read)
    end
  end
end
