# Programing II review -- Huffman coding, day 1
defmodule Huffman do
  def sample do
    'the quick brown fox jumps over the lazy dog'
  end

  def text, do: 'this is something that we should encode'

  def test do
    sample=sample()
    tree(sample)

  end

  def tree(sample) do
    freq = freq(sample)
    # huffman(freq)
  end

  def freq(sample) do
    freq(sample, [])
  end
  def freq([], freq) do
    freq
  end
  def freq([char|rest], freq) do
    #freq=update(char, freq)
    freq=update(char, freq)
    freq(rest,freq)
  end

  # works fine, but not tail recursion, waste space on stack
  # def update(char, []) do
  #   # IO.puts ("1")
  #   # IO.puts (char)
  #   [{char, 1}]
  # end
  # def update(char, [{char, f}|r]) do
  #   # IO.puts ("2")
  #   # IO.puts (char)
  #   [{char, f+1}|r]
  # end
  # def update(char, [{c,_}|[]]=l1) do
  #   # IO.puts ("3")
  #   # IO.puts (char)
  #   [{char,1}|l1]
  # end
  # def update(char, [{c, f}|r]) do
  #   # IO.puts ("4")
  #   # IO.puts (char)
  #   [{c,f}|update(char, r)]
  # end

  def update(char, [], [])


  def huffman(freq) do

  end
end
