# Cinema
## Choose useful attributes and relations


The STAR-MOVIES company operates a cinema chain with several cinemas (Name,
Address... ). Each cinema can have several halls where the films are shown. The seating plan of each hall should be recorded; a row and a seat must be indicated for each seat. A box should be managed like a row.
It must be possible to create a seating plan. Of course, several films can be shown per room on one day. In order to be able to determine which seats are available for a performance, each ticket purchase must be noted. Each ticket should show: cinema, hall, film title, date, starting time, serial number within the screening, row, seat, price.
Provision must be made for pricing: Each row of a hall has a standard price, but for certain performances the row prices can be set individually. For information purposes, the actors should be recorded with their personal data (surname, first name, nationality, date of birth, date of death, comments, ... ) and it should be possible to tell which actors have acted in which films.
The analogous statements should also be possible for directors, whereby it can be assumed that there is only one director for a film. However, it is possible that the director also plays a part in a film.
The other data of a film include: Title, type (thriller, western, youth film, ... ), year of production, country, language, duration, distribution, etc.

Create a ERD and a Relation Model for this example

# notes
### Entities:
* cinemas
* halls
* seating plan
* Tickets
* films
* film plan
* film cast

### Attributes:
cinemas
* name
* address
* nr of halls

Halls
* hall nr
* rows
* seats

seating plan
* row / box
* seat
* taken
* price

films
* title
* type
* year of production
* country
* language
* length
* distribution

film cast
* film appearences
* name
* surname
* nationality
* date of birth
* date of death
* comments
* role

tickets
* ticket id
* show id
* hall nr
* film title
* price
* row
* seat
  

![ERM](ERM.jpeg)

cinema(name:varchar(32), address:varchar(32), nr of halls:int(64), nr of seats:int(64))
Halls(hall nr:int(64), rows:int(64), seats:int(64), boxes:int(64))
Seating Plan(show id:int(64), Row:int(64), seatnr:int(64), )