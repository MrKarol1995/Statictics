library(tidyverse)


# Tworzenie przykładowych danych
kategorie <- 1:100

df <- data.frame(
  Kategoria = rep(kategorie, each = 200),  # 100 kategorii, każda po 200 osób, replicate rep(x, times, each)
  Shake = rep(c(TRUE, FALSE), times = 100),   # 100 osób w każdej grupie
  ID_osoby = 1:(100 * 200)
)

wiek_smierci <- rnorm(20000, mean = 77, sd = 10)
df$wiek_smierci <- wiek_smierci # dodanie kolumny do dataframe

head(df)


# t-test
df %>% group_by(Kategoria) %>% summarize(pwartość = t.test(wiek_smierci~Shake)$p.value) %>% view()

