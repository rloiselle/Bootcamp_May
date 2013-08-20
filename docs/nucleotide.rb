# Nucleotide Count
# DNA is represented by an alphabet of the following symbols: 'A', 'C', 'G', and 'T'.

# Each symbol represents a nucleotide, which is a fancy name for the particular molecules that happen to make up a large part of DNA.

# Shortest intro to biochemistry EVAR:

# twigs are to birds nests as
# nucleotides are to DNA and RNA as
# amino acids are to proteins as
# sugar is to starch as
# oh crap lipids
# I'm not going to talk about lipids because they're crazy complex.

# So back to DNA.

# Write a class DNA that takes a DNA string. It should have two ways of telling us how many times each nucleotide occurs in the string: #count(nucleotide) and #nucleotide_count.

class DNA

  # attr_accessor :nucleotideHash

  def initialize(string)
    @dna = string
  end

  def count(nucleotide)
    count = @dna.count(nucleotide)
    # if (count == 0)
    #   print nucleotide + " is not a nucleotide."
    # else (print count)
    # end
  end

  def nucleotide_counts
    dnaHash = {'A'=>nil, 'C'=>nil, 'G'=>nil, 'T'=>nil}
    dnaHash.each_key {|key|
      dnaHash[key]= @dna.count(key)
    }
    p dnaHash
  end

  # Figure out how to raise error when non-nucleotide letter entered
      #http://phrogz.net/programmingruby/tut_exceptions.html

  # def validateNucleotide(nucleotide)
  #   unless nucleotide == "A" || nucleotide == "G" || nucleotide == "T" || nucleotide == "C"
  #     # dnaIs =["A", "G", "T", "C"]
  #   # print(dnaIs.include?(nucleotide))
  #   print dnaIs.index(nucleotide)
  # end

end

dna = DNA.new("ATGCTTCAGAAAGGTCTTACG")
dna.count("A")
dna.nucleotide_counts
# dna.validateNucleotide("S")

