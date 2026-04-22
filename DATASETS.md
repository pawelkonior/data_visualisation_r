# Katalog danych

| Plik | Rozmiar dydaktyczny | Najlepsze zastosowanie | Uwagi |
|---|---:|---|---|
| `datasets/mpg.csv` | 399 wierszy | wykres punktowy (scatter plot), kolor, panele (facets), trend | Dobry zbiór danych na start. |
| `datasets/insurance_premiums.csv` | 52 wiersze | regresja, etykiety, regiony | Dobry do pierwszych mapowań i `geom_smooth()`. |
| `datasets/schoolimprovement2010grants.csv` | 758 wierszy | histogramy, wykresy pudełkowe (boxplots), kategorie | Ma pierwszą kolumnę indeksową bez nazwy. |
| `datasets/FY18_4050_FMRs.csv` | 4770 wierszy | rozkłady, skale, obserwacje odstające | Czynsze rynkowe, wiele zmiennych numerycznych. |
| `datasets/bike_share.csv` | 731 wierszy | szeregi czasowe, sezonowość, wykres heksagonalny (hexbin plot) | Daty dzienne, dobra struktura. |
| `datasets/climate_change.csv` | 707 wierszy | linie, dwie serie, narracja | Dobry do osi czasu i etykiet. |
| `datasets/stocks_cleaned.csv` | 139501 wierszy | szeregi czasowe i interaktywność | Warto filtrować do jednej spółki. |
| `datasets/seattle_weather.csv` | 205 wierszy | małe wielokrotności (small multiples), brak danych | `-7777` oznacza braki. |
| `datasets/austin_weather.csv` | 13 wierszy | porównanie miesięcy | `-7777` oznacza braki. |
| `datasets/medals_by_country_2016.csv` | 11 wierszy | wykresy słupkowe (bar charts), zmiana układu danych | Ma pierwszą kolumnę bez nazwy. |
| `datasets/summer2016.csv` | 2015 wierszy | kategorie, sport, wzrost, medal | Ma pierwszą kolumnę indeksową. |
| `datasets/daily_show_guests_cleaned.csv` | 2694 wiersze | mapa ciepła (heatmap) i tabele krzyżowe | Dobry do `count()` i `pivot_wider()`. |
| `datasets/college_datav3.csv` | 6703 wiersze | podział na panele (faceting), wykres punktowy (scatter plot), instytucje | Duży, dobry do późniejszych rozdziałów. |
| `datasets/melb_clean.csv` | 13581 wierszy | ceny, transformacje, obserwacje odstające (outliers) | Ma pierwszą kolumnę indeksową. |
| `datasets/bakery.csv` | 17487 wierszy | kategorie, dni tygodnia, agregacje | Dobry do `count()` i rankingu. |
| `datasets/nba.csv` | 425 wierszy | wykres punktowy (scatter plot), etykiety, interaktywność | Dobry do Plotly. |
| `datasets/countries-of-the-world.csv` | 228 wierszy | czyszczenie nazw, geografia | Nazwy kolumn wymagają czyszczenia. |
| `datasets/student-alcohol-consumption.csv` | 396 wierszy | kategorie, wykresy pudełkowe (boxplots), edukacja | Ma pierwszą kolumnę indeksową. |
| `datasets/young-people-survey-responses.csv` | 1011 wierszy | ankiety, skale Likerta | Ma sporo kolumn, dobre na projekt. |
| `datasets/bike_v1.csv` | 1237 wierszy | import trudniejszych danych | Wartości rozdzielone białymi znakami mimo rozszerzenia `.csv`. |
| `datasets/bike_2.csv` | 1237 wierszy | diagnostyka importu | Wartości rozdzielone białymi znakami, nie na początek pracy. |
