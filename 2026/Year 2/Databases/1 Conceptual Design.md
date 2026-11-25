# Database Intro
A database has many simultaneous users. Data is structured in a systematic catalog, and data-dictionary design is needed.

## Database Management System
- a software system that enables users to define, create, maintain, and control access to the database.

## Architectures
- ANSI/SPARC proposed three levels:
	- External
	- Conceptual
	- Internal
![[Pasted image 20261023132532.png]]
## Independence
- Logical Data Independence:
	- Users/applications are immune to changes to the logical structure of the database, i.e. changes to the conceptual schema
- Physical Data Independence
	- Users/applications are immune to changes to the physical representation of the stored data in the database
## Conceptual Modelling
- database needs to be modeled, independent of all physical considerations, before it can be implemented
- it must be non-ambiguous and non-technical
## Design Phases
- Conceptual schema
	- Conceptual and logical design
- Internal Schema
	- Physical Design
## Entity-Relationship Modelling
- Entities
	- uniquely identifiable 