select 
	bsd."Model", 
	sum(bsd."Price_USD" ) as Preco_Total
from bmw_sales_data bsd
group by bsd."Model"
order by Preco_Total desc;
