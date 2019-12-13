require 'test_helper'

class AthleteCompetitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @athlete_competition = athlete_competitions(:one)
  end

  test "should get index" do
    get athlete_competitions_url
    assert_response :success
  end

  test "should get new" do
    get new_athlete_competition_url
    assert_response :success
  end

  test "should create athlete_competition" do
    assert_difference('AthleteCompetition.count') do
      post athlete_competitions_url, params: { athlete_competition: { athlete_id: @athlete_competition.athlete_id, competition_id: @athlete_competition.competition_id } }
    end

    assert_redirected_to athlete_competition_url(AthleteCompetition.last)
  end

  test "should show athlete_competition" do
    get athlete_competition_url(@athlete_competition)
    assert_response :success
  end

  test "should get edit" do
    get edit_athlete_competition_url(@athlete_competition)
    assert_response :success
  end

  test "should update athlete_competition" do
    patch athlete_competition_url(@athlete_competition), params: { athlete_competition: { athlete_id: @athlete_competition.athlete_id, competition_id: @athlete_competition.competition_id } }
    assert_redirected_to athlete_competition_url(@athlete_competition)
  end

  test "should destroy athlete_competition" do
    assert_difference('AthleteCompetition.count', -1) do
      delete athlete_competition_url(@athlete_competition)
    end

    assert_redirected_to athlete_competitions_url
  end
end
