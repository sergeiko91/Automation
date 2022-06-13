Given(/^I click on Got it button$/) do
  puts('Clicked on got it button')
  find_element(id:"android:id/button1").click
end

And(/^I see "([^"]*)" in "([^"]*)" header$/) do |value,field|
  actual_value = find_element(id:"header_text_unit_#{field}").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}!")
  end
end

And(/^I land on "([^"]*)" Screen$/) do |value|
   find_element(xpath:"//android.widget.TextView[@text='#{value}']")
end

And(/^I see "([^"]*)" in "([^"]*)" field$/) do |value, field|
  actual_value = find_element(id:"header_value_#{field}").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}!")
  end
end

And(/^I see "([^"]*)" selected in "([^"]*)" radio buttons$/) do |value,field|
  is_selected = find_element(id:"radio_group_#{field}").find_element(xpath:"//android.widget.RadioButton[@text='#{value}']").attribute("checked")
  if is_selected != "true"
    fail("Expected #{value} in #{field} units to be selected, but it's not!")
  end

end

