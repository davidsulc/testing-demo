PAGES = {
  "the contact index page" => "http://davidsulc.github.io/marionette-gentle-introduction/#contacts"
}
PAGES.freeze

def url_for(name)
  PAGES[name]
end

CONTAINERS = {
  "the contacts table" => "table"
}

def container_for(name)
  CONTAINERS[name]
end
