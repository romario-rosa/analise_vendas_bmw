select 
	bsd."Model",
	count(*) as Quantidade
from bmw_sales_data bsd 
group by "Model" 
order by quantidade desc;