library(stylo)

setwd("Dropbox/Würzburg/untagged_corpus")

setwd("Dropbox/Würzburg/tagged_corpus")

setwd("Dropbox/Würzburg/combined_corpus")

stylo()

# Prepare bigrams or trigrams

setwd("Desktop/Wü")
library(stylo)
tokenized.3POS.text = load.corpus.and.parse(files = "P2_POSw.txt", features = "w", ngram.size = 3, language = "Spanish", encoding = "UTF-8")

my.text.print = unlist(tokenized.3POS.text)
write(my.text.print, file = "P2_3grams.txt")


################
# Zeta (words) #
################

setwd("Dropbox/Würzburg/untagged_corpus/zeta/untagged_corpus")

oppose()

###############
# Zeta (POS) ##
###############

# Prepare texts with POS 2-grams

library(stylo)

setwd("Dropbox/Würzburg/tagged_corpus")

tokenized.2POS.text = load.corpus.and.parse(files = "P2_POSd.txt", corpus.dir="corpus", features = "w", ngram.size = 2, language = "Spanish", encoding = "UTF-8")
my.text.print = unlist(tokenized.2POS.text)
write(my.text.print, file = "P2_2POSd.txt")

# Prepare texts with POS 3-grams

library(stylo)

setwd("Dropbox/Würzburg/tagged_corpus")

tokenized.3POS.text = load.corpus.and.parse(files = "SorJuana_POSd-2.txt", corpus.dir="corpus", features = "w", ngram.size = 3, language = "Spanish", encoding = "UTF-8")
my.text.print = unlist(tokenized.3POS.text)
write(my.text.print, file = "SorJuana_3POSd-2.txt")


# Applying zeta

setwd("Dropbox/Würzburg/tagged_corpus/zeta")
oppose()
