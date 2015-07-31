SELECT
    date('{from_timestamp}')                            as 'Month',
    sum(if(event_name='VisualEditor',1,0))              as 'VisualEditor',
    sum(if(event_name='LdapAuthentication',1,0))        as 'LdapAuthentication',
    sum(if(event_name='WikiEditor',1,0))                as 'WikiEditor',
    sum(if(event_name='Math',1,0))                      as 'Math',
    sum(if(event_name='MobileFrontend',1,0))            as 'MobileFrontend',
    sum(if(event_name='Scribunto',1,0))                 as 'Scribunto',
    sum(if(event_name='UniversalLanguageSelector',1,0)) as 'UniversalLanguageSelector',
    sum(if(event_name='ParserFunctions',1,0))           as 'ParserFunctions',
    sum(if(event_name='UserMerge',1,0))                 as 'UserMerge',
    sum(if(event_name='Collection',1,0))                as 'Collection'

FROM
    ExtDistDownloads_12369387

WHERE event_type = 'extensions'
  AND timestamp >= '{from_timestamp}'
  AND timestamp < '{to_timestamp}'
;
