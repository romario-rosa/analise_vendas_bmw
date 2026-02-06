-- Faturamento total (global) por ano
SELECT
    bsd."Year",
    SUM(bsd."Price_USD" * bsd."Sales_Volume") AS faturamento_ano
FROM bmw_sales_data bsd
GROUP BY bsd."Year"
ORDER BY bsd."Year" ASC;