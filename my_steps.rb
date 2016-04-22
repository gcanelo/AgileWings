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

