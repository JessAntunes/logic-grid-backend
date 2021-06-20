require "test_helper"

class HighscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @highscore = highscores(:one)
  end

  test "should get index" do
    get highscores_url, as: :json
    assert_response :success
  end

  test "should create highscore" do
    assert_difference('Highscore.count') do
      post highscores_url, params: { highscore: { name: @highscore.name, score: @highscore.score } }, as: :json
    end

    assert_response 201
  end

  test "should show highscore" do
    get highscore_url(@highscore), as: :json
    assert_response :success
  end

  test "should update highscore" do
    patch highscore_url(@highscore), params: { highscore: { name: @highscore.name, score: @highscore.score } }, as: :json
    assert_response 200
  end

  test "should destroy highscore" do
    assert_difference('Highscore.count', -1) do
      delete highscore_url(@highscore), as: :json
    end

    assert_response 204
  end
end
