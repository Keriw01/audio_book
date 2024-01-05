# audio_book
Opis projektu "Audio Book"
Pattern UI: "https://themeforest.net/item/meron-ebook-and-audio-book-app-ui-kit/26567667"
API: "https://wolnelektury.pl/api/"

1. Strona logowania:
    - Zawiera nazwę aplikacji oraz logo.
    - Pola do wpisania emaila i hasła przechodzą walidację. Istnieje możliwość zapamiętania logowania.
    - Przycisk "Login" pozwala zalogować się, wyświetlając odpowiedni komunikat w przypadku nieprawidłowych danych.
    - Istnieje także opcja przejścia do strony rejestracji.

2. Strona rejestracji:
    - Podobna do strony logowania, bez opcji zapamiętywania logowania.

3. Strona główna z listą kolekcji książek:
    - Pobiera nazwy kolekcji z endpointa "/api/collections/" i prezentuje je jako listę wertykalną.
    - Wyszukiwanie kolekcji jest możliwe poprzez przycisk lupy na App Barze.
    - Brak internetu powoduje wyświetlenie snackbara umożliwiającego ponowne odświeżenie kolekcji.

4. Strona profilu:
    - Dostępna z głównej strony poprzez przycisk użytkownika na App Barze.
    - Zawiera informacje o użytkowniku (email, ilość polubionych książek) oraz przycisk do wylogowania.

5. Strona kolekcji:
    - Wyświetla tytuł wybranej kolekcji i jej zawartość w dwóch sekcjach:
        + 'Twoje ulubione': horyzontalna lista książek z okładką, autorem, możliwość usunięcia z ulubionych.
        + 'Pozostałe': lwertykalna lista książek z okładką, autorem, tytułem oraz możliwością polubienia.
    - Klikalne elementy pozwalające przejść do szczegółów danej książki.

6. Strona szczegółów książki:
    - Zawiera okładkę, tytuł, autora, gatunek literacki i losowy fragment książki.
    - Przyciski umożliwiające czytanie w formacie PDF/TEXT, przesłuchanie książki oraz polubienie książki.
    - W przypadku braku internetu Snackbar umożliwia ponowne odświeżenie danych.

7. Strona czytania książki w PDF:
    - W przypadku czytania książki w formacie PDF, zapamiętywana jest ostatnia strona.

8. Strona słuchania książki:
    - Wyświetla okładkę, nazwę lektora, numer rozdziału, autora, tytuł i numer części książki.
    - Pasek postępu i przyciski do obsługi multimediów są dostępne.
    - Możliwość słuchania po zminimalizowaniu aplikacji, obsługa multimediów jako widżet (np. na ekranie blokady).

Aplikacja "Audio Book" została stworzona przy użyciu technologii Flutter/Dart, zapewniając interaktywne funkcje logowania/rejestracji oparte o tokeny do autentykacji, przeglądania, czytanie i słuchanie książek z różnych kolekcji oraz w różnych formatach.
