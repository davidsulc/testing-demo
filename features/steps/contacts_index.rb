When /^I click the "(.+)" button for contact "(.+)"$/ do |button, contact|
  element = page.find("tr", :text => contact)
  element.find(".btn", :text => button).click
end

Then /^I should see (\d+) contacts within the contacts table$/ do |count|
  expect(page.all("#contacts-region tbody tr").length).to equal(count.to_i)
end
