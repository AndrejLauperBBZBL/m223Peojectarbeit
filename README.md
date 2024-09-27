BikeSwitch: Motorrad-Sharing-Plattform
BikeSwitch ist eine webbasierte Motorrad-Sharing-Plattform, die es Nutzern ermöglicht, ihre Motorräder zur Buchung anzubieten und anderen Nutzern erlaubt, verfügbare Motorräder für bestimmte Zeiträume zu buchen. Die Anwendung bietet eine Admin-Funktionalität, um Benutzerkonten zu genehmigen und Buchungen zu verwalten.

Funktionen
Benutzer-Registrierung/Anmeldung: Benutzer können Konten erstellen, Führerscheinfotos hochladen und sich anmelden.
Motorrad-Listen: Benutzer können Motorräder mit Modell und Kategorie zur Buchung anbieten.
Buchungssystem: Benutzer können Motorräder für bestimmte Zeiträume buchen, und die Besitzer können Buchungsanfragen genehmigen oder ablehnen.
Admin-Dashboard: Admin-Benutzer können Registrierungen genehmigen, Führerscheinlevel zuweisen und Buchungen verwalten.
Motorrad-Katalog: Benutzer können Motorräder aus einem vordefinierten Katalog (Motorradtypen) auswählen.
Voraussetzungen
Um dieses Projekt auszuführen, stellen Sie sicher, dass die folgenden Softwarekomponenten installiert sind:

Ruby 3.3.x
Rails 7.x
SQLite3
Bundler
Node.js und Yarn
Installation
Repository klonen:

bash
Code kopieren
git clone https://github.com/your-username/bikeswitch.git
cd bikeswitch
Abhängigkeiten installieren:

bash
Code kopieren
bundle install
yarn install
Datenbank einrichten: Führen Sie die folgenden Befehle aus, um die Datenbank zu erstellen, das Schema zu migrieren und Beispiel-Daten zu laden:

bash
Code kopieren
rails db:create
rails db:migrate
rails db:seed
Server starten: Starten Sie den Rails-Server mit folgendem Befehl:

bash
Code kopieren
rails server
Zugriff auf die Anwendung: Öffnen Sie Ihren Browser und rufen Sie http://localhost:3000 auf, um die Anwendung zu nutzen.

Benutzerrollen
Admin: Kann Benutzerregistrierungen genehmigen und Buchungen verwalten.
Normaler Benutzer: Kann Motorräder zur Buchung anbieten, Motorräder buchen und seine eigenen Buchungen verwalten.
Buchungsprozess
Ein Benutzer wählt ein Motorrad aus.
Der Benutzer fordert eine Buchung für einen bestimmten Zeitraum an.
Der Motorradbesitzer kann die Buchung genehmigen oder ablehnen.
