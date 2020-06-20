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


###########
# Rolling #
###########

setwd("Dropbox/Würzburg/untagged_corpus/rolling")

#rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=100, training.set.sampling = "normal.sampling", slice.size = 1000, slice.overlap = 500)
rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=1000, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 1000)
#rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=100, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 2500)
#rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=100, training.set.sampling = "normal.sampling", slice.size = 5000, slice.overlap = 4500)
rolling.classify(write.png.file = TRUE, classification.method = "nsc", mfw=1000, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 2500)
#results = rolling.classify(write.png.file = TRUE, classification.method = "delta", mfw=1000)
rolling.classify(write.png.file = TRUE, classification.method = "delta", distance = "wurzburg", mfw=1000, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 1000)


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

#################
# Rolling (POS) #
#################

setwd("Dropbox/Würzburg/tagged_corpus/rolling")

#rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=100, training.set.sampling = "normal.sampling", slice.size = 1000, slice.overlap = 500)
rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=500, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 1000)
#rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=100, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 2500)
#rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=100, training.set.sampling = "normal.sampling", slice.size = 5000, slice.overlap = 4500)
rolling.classify(write.png.file = TRUE, classification.method = "nsc", mfw=500, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 2500)
#results = rolling.classify(write.png.file = TRUE, classification.method = "delta", mfw=1000)
rolling.classify(write.png.file = TRUE, classification.method = "delta", distance = "wurzburg", mfw=500, training.set.sampling = "normal.sampling", slice.size = 3000, slice.overlap = 1000)
