-- Volume de Vendas e Faturamento por região
with base as(
select 
	bsd."Region" as region,  
	sum(bsd."Sales_Volume") as volume_de_vendas, 
	sum(bsd."Sales_Volume"*bsd."Price_USD") as faturamento_total_usd
from bmw_sales_data bsd
group by bsd."Region"
order by faturamento_total_usd DESC
)
select 
	region,
	volume_de_vendas,
	faturamento_total_usd,
	faturamento_total_usd / nullif(volume_de_vendas, 0) as ticket_medio_usd
from  base;
	