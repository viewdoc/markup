require 'roda'
require 'github/markup'

class App < Roda
  route do |r|
    r.post String do |format|
      GitHub::Markup.render('markup.' + format, request.body.read.force_encoding('utf-8'))
    end
  end
end
