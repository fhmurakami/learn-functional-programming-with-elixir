defmodule MatchstickFactory do
  @big 50
  @medium 20
  @small 5

  def boxes(matchsticks) do
    big_count = div(matchsticks, @big)
    remaining = rem(matchsticks, @big)

    medium_count = div(remaining, @medium)
    remaining = rem(remaining, @medium)

    small_count = div(remaining, @small)
    remaining_count = rem(remaining, @small)

    %{
      big: big_count,
      medium: medium_count,
      small: small_count,
      remaining_matchsticks: remaining_count
    }
  end
end
