SELECT properties.city, COUNT(reservation_id) AS total_reservations
FROM properties
JOIN reservations ON reservation.property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;