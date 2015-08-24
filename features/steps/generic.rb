Then /^I should( not)? see "(.+)"(?: within (.+))?$/ do |negation, text, within|
  container = page
  container = page.find(container_for(within)) if within
  unless negation
    expect(container).to have_text(text)
  else
    expect(container).to_not have_text(text)
  end
end
