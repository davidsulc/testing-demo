PAGES = {
  "the contact index page" => "http://davidsulc.github.io/marionette-gentle-introduction/#contacts"
}
PAGES.freeze

def url_for(name)
  PAGES[name]
end
