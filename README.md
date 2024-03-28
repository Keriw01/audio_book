# audio_book
Opis projektu "Audio Book"
Pattern UI: "https://themeforest.net/item/meron-ebook-and-audio-book-app-ui-kit/26567667"
API: "https://wolnelektury.pl/api/"
1. Strona główna z listą, która zawiera nazwy kolekcji książek pobranych z endpointa "/api/collections/", w postaci listy wertykalnej umożliwiającej przeglądanie wszystkich kolekcji książek (oraz naszych dodanych jako pierwszy element). Każdy element jest wizualnie oddzielony i posiada efekt tapnięcia, który pozwala przejść do zawartości kolekcji. Możliwe jest wyszukiwanie interesującej nas kolekcji.

2. Po wejściu w daną kolekcję wyświetlamy w appBarze tytuł wybranej kolekcji oraz jej zawartość w dwóch sekcjach:
a) 'Twoje ulubione': horyzontalna lista książek z okładką, tytułem oraz autorem, możliwość usunięcia z ulubionych danego elementu.
b) 'Pozostałe': wertykalna lista książek również z okładką, autorem oraz tytułem oraz możliwością polubienia danego elementu.
W przypadku gdy nie mamy żadnej polubionej książki sekcja 'Twoje ulubione' nie jest wyświetlana oraz 'Pozostałe' jest pełna wertykalna lista książek z możliwością dodania do ulubionych.
Każdy element jest możliwy do kliknięcia, również posiada efekt tapnięcia i pozwala przejść do szczegółów danej książki.

3. Po wejściu do strony ze szczegółami o książce wyświetlamy jej okładkę tytuł, autora, gatunek literacki (możliwe jest kilka gatunków), fragment (losowy w zależności od API).
Na stronie tej znajdują się trzy przyciski (wyświetlane w zależności od dostarczonych danych z API, nie każda książka jest w PDF/HTML):
 'Czytaj HTML': pozwala na przejście do strony, gdzie możemy przeczytać książkę w formacie PDF.
'Czytaj HTML': umożliwia przejście do strony na której możemy przeczytać książkę w formacie HTML.
'Heart Button': pozwala polubić lub nie daną książkę

4. W przypadku czytania książki w formacie PDF zaimplementowane jest zapamiętywanie strony na której użytkownik skończył czytać. 

Aplikacja stworzona przy pomocy Flutter/Dart. Pakiety wykorzystane do stworzenia aplikacji:
