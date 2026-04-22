# Wizualizacja danych w R

To repozytorium zawiera samodzielny kurs wizualizacji danych w R. Materiały są
przygotowane jako książka Quarto: można je czytać rozdział po rozdziale,
uruchamiać kod lokalnie i renderować do strony HTML.

Wersja opublikowana przez GitHub Pages będzie dostępna pod adresem:
<https://pawelkonior.github.io/data_visualisation_r/>.

Kurs prowadzi od podstaw gramatyki wykresów w `ggplot2`, przez rozkłady, kategorie,
szeregi czasowe, małe wielokrotności (small multiples), eksport, interaktywność,
animacje, kolory, osie oraz etykiety, aż do końcowego mini-projektu.

## Wymagania

- R 4.5.3 lub nowszy z gałęzi stabilnej.
- Quarto CLI.
- Pakiety R wymienione w `DESCRIPTION`.

Projekt był testowany na R 4.5.3. Jeżeli pracujesz na nowszej wersji R,
uruchom `Rscript R/setup.R`, a potem pełny render materiałów.

## Szybki start

```bash
Rscript R/setup.R
quarto preview
```

Pełny render materiałów:

```bash
quarto render --execute
```

Strona jest wyrenderowana w katalogu `docs/` oraz wypchnięta na gałąź
`gh-pages`. W ustawieniach repozytorium GitHub Pages wybierz źródło
`Deploy from a branch`, gałąź `gh-pages` i katalog `/`.

Po zmianach w materiałach uruchom lokalnie `quarto render --execute`, a następnie
commituj zaktualizowany katalog `docs/` i ponownie wypchnij zawartość na
`gh-pages`.

Po pierwszym udanym renderze możesz zamrozić środowisko:

```r
renv::init(bare = TRUE)
renv::snapshot()
```

Gdy `renv.lock` już istnieje, środowisko można odtworzyć przez:

```r
renv::restore()
```

## Struktura

- `_quarto.yml` - konfiguracja książki Quarto.
- `index.qmd` - opis kursu, efekty uczenia i zasady pracy.
- `materials/` - kolejne rozdziały kursu.
- `R/setup.R` - instalacja pakietów potrzebnych do pracy.
- `R/theme_course.R` - wspólny motyw i skale do wykresów.
- `datasets/` - lokalny bank danych używany w przykładach i ćwiczeniach.
- `DATASETS.md` - mapa zbiorów danych oraz propozycje ich zastosowań.
- `exercises/` i `solutions/` - miejsce na własne odpowiedzi i rozwiązania
  przykładowe.

## Standard pracy

Repozytorium jest celowo R-only: nie ma tu notebooków, środowisk Pythonowych ani
wygenerowanych plików strony. Kod jest pisany z natywnym pipe `|>`, bez `setwd()`,
z jawną warstwą importu, czyszczenia nazw, typowania danych, etykietowania
wykresów oraz eksportu.

Do formatowania i kontroli jakości służą:

```r
styler::style_dir(c("R", "materials"))
lintr::lint_dir("R")
lintr::lint_dir("materials")
```
