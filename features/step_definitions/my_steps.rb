Given (/^Voy al inicio$/) do
  visit '/'
end

Then (/^Veo "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When (/^Presiono link (.*)$/) do |link|
  click_link(link)
end

When(/^Presiono boton (.*)$/) do |boton|
  click_button(boton)
end

Then(/^Veo (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end





