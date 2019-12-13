require "application_system_test_case"

class AthleteCompetitionsTest < ApplicationSystemTestCase
  setup do
    @athlete_competition = athlete_competitions(:one)
  end

  test "visiting the index" do
    visit athlete_competitions_url
    assert_selector "h1", text: "Athlete Competitions"
  end

  test "creating a Athlete competition" do
    visit athlete_competitions_url
    click_on "New Athlete Competition"

    fill_in "Athlete", with: @athlete_competition.athlete_id
    fill_in "Competition", with: @athlete_competition.competition_id
    click_on "Create Athlete competition"

    assert_text "Athlete competition was successfully created"
    click_on "Back"
  end

  test "updating a Athlete competition" do
    visit athlete_competitions_url
    click_on "Edit", match: :first

    fill_in "Athlete", with: @athlete_competition.athlete_id
    fill_in "Competition", with: @athlete_competition.competition_id
    click_on "Update Athlete competition"

    assert_text "Athlete competition was successfully updated"
    click_on "Back"
  end

  test "destroying a Athlete competition" do
    visit athlete_competitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Athlete competition was successfully destroyed"
  end
end
