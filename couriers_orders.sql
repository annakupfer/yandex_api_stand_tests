SELECT c.login AS login , COUNT(CASE WHEN o."inDelivery" = true THEN 1 END) AS "Количество принятых"
FROM "Couriers" c
LEFT JOIN "Orders" o ON c.id = o."courierId"
GROUP BY login;
