with source as (

    select * from {{ source('imdb', 'title_ratings') }}

),

processed_ratings as (

    select
        tconst as title_id,
        average_rating,
        num_votes
    from source

)

select * from processed_ratings