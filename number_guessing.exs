defmodule NumberGuessing do

def user_guess(answer,count) do
    IO.puts "You have #{count} attempts remaining."
    guess = IO.gets "Please enter a guess: "
    cond  do
      answer == guess ->
        IO.puts "You are correct! The answer is #{answer}"
      count > 1 ->
        hint(answer,guess)
        user_guess(answer,count-1)
      true ->
        IO.puts "Fuck..."
    end
  end

  def hint(answer,guess) do
    if guess > answer do
      IO.puts "Your guess of #{guess} is high"
    else
      IO.puts "Your guess of #{guess} is low"
    end
  end
end


NumberGuessing.user_guess("4\n",5)
