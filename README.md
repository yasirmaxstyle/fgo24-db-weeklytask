```mermaid

---
title: ERD Movie Ticketing
---
erDiagram
direction TB
    user ||--o|session : has
    user }o--||registration_request : make
    user }|--o|transaction : proceed
    transaction ||--||movie : load
    transaction ||--||cinema : load
    transaction ||--||payment : paid_by
    history ||--o|transaction : record
    movie ||--o{genres : has
    director||--||movie : direct
    cast }o--o|movie_cast : acts_in
    movie_cast|o--o{movie : appears_in

    user{
        int user_id PK
        string email
        string password
        string username
        string session_id FK
        string registration_id FK
    }

    session{
        int session_id PK
        timestamp created_at
        string user_id FK
    }

    registration_request{
        int registration_id PK
        string user_id FK
    }

    transaction{
        int transaction_id PK
        timestamp created_at
        string created_by FK
        string movie_id FK
        string cinema_id FK
        string payment_id FK
    }

    cinema{
        int cinema_id PK
        string name
        time time
        date date
        string seat
        string location
    }

    payment {
        int payment_id PK
        string name
        decimal amount
        boolean is_paid
        boolean is_due
        timestamp due_time
    }

    history{
        int history_id PK
        string transaction_id FK
    }

    movie{
        int movie_id PK
        string poster_path
        string backdrop_path
        string title
        string overview
        int duration
        date release_date
        string genre_id FK
    }

    movie_cast{
        int movie_cast_id Pk
        int movie_id FK
        int cast_id FK
        string role
    }

    cast {
        int cast_id PK
        string first_name
        string last_name
    }

    genres {
        int genre_id PK
        string name
    }


    director {
        int director_id PK
        string first_name
        string last_name
    }

```