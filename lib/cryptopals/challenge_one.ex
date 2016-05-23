defmodule Cryptopals.ChallengeOne do
  use Bitwise, only_operators: true

  def hex_to_base64(hex_string) do
    hex_decode(hex_string)
    |> Base.encode64
  end

  def xor_combine(input1, input2) do
    binary_list1 = :binary.bin_to_list(hex_decode(input1))
    binary_list2 = :binary.bin_to_list(hex_decode(input2))

    Stream.zip(binary_list1, binary_list2)
    |> Stream.map(fn({a, b}) -> a ^^^ b end)
    |> Enum.to_list
    |> IO.chardata_to_string
    |> Base.encode16(case: :lower)
  end


  defp hex_decode(input) do
    Base.decode16!(input, case: :lower)
  end

end
