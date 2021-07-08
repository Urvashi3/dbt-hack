{{ config(materialized='table') }}

select m.eventname , m.starttime , m.eventid,l.numtickets,l.priceperticket,l.totalprice
from dev.public.listing l inner join {{ ref('musicals_info') }} m
on l.eventid = m.eventid
