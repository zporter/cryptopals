defmodule Cryptopals.ChallengeOne do
  def hex_to_base64(hex_string) do
    decoded_string = Base.decode16!(hex_string, case: :lower)
    Base.encode64(decoded_string)
  end
end
