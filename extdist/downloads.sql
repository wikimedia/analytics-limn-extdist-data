SELECT
    date('{from_timestamp}') AS month,
    event_type,
    event_name,
    event_version,
    COUNT(uuid) AS count

FROM
    ExtDistDownloads_12369387

WHERE
    timestamp >= '{from_timestamp}' AND
    timestamp < '{to_timestamp}'

GROUP BY
    month,
    event_type,
    event_name,
    event_version

ORDER BY
    month ASC,
    event_type ASC,
    event_name,
    event_version
;
