{{ config(materialized='table') }}

select e.eventname , e.starttime
from dev.public.event e inner join dev.public.category c
on e.catid = c.catid
where c.catname='Musicals'