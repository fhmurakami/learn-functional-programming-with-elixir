defmodule MyString do
  def capitalize_words(title) do
    Enum.join(
      Enum.map(
        String.split(title),
        &String.capitalize/1
      ), " "
    )
  end
end

# IEx:
# c("my_string.ex")
# MyString.capitalize_words("a whole new world")
#
# Output:
# "A Whole New World"
