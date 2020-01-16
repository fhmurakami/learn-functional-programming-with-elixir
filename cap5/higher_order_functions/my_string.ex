defmodule MyString do
  def capitalize_words(title) do
    title
    |> String.split
    |> capitalize_all
    |> join_with_whitespace
  end

  def capitalize_all(words) do
    Enum.map(words, &String.capitalize/1)
  end

  def join_with_whitespace(words) do
    Enum.join(words, " ")
  end
end

# IEx:
# c("my_string.ex")
# MyString.capitalize_words("a whole new world")
#
# Output:
# "A Whole New World"