SELECT
    sum(if(event_name='Vector',1,0))    as 'Vector',
    sum(if(event_name='apex',1,0))      as 'apex',
    sum(if(event_name='BlueSky',1,0))   as 'BlueSky',
    sum(if(event_name='Metrolook',1,0)) as 'Metrolook',
    sum(if(event_name='erudite',1,0))   as 'erudite',
    sum(if(event_name='Gamepress',1,0)) as 'Gamepress',
    sum(if(event_name='Bouquet',1,0))   as 'Bouquet',
    sum(if(event_name='Tempo',1,0))     as 'Tempo',
    sum(if(event_name='Splash',1,0))    as 'Splash',
    sum(if(event_name='MonoBook',1,0))  as 'MonoBook'

FROM
    ExtDistDownloads_12369387

WHERE event_type = 'skins'
  AND timestamp >= '{from_timestamp}'
  AND timestamp < '{to_timestamp}'
;
