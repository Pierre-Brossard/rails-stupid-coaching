require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "Fill the form and get an answer " do
    visit ask_url
    fill_in "question",	with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Tell I'm going to work" do
    visit ask_url
    fill_in "question",	with: "I am going to work"
    click_on "Ask"

    take_screenshot
    assert_text "Great"
  end
end
