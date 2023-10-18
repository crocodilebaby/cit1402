select ordernumber, productlines.productline, count(productname), round(SUM(orderdetails.quantityOrdered * orderdetails.priceEach),2) as totalcost
from orderdetails
inner join products on products.productCode = orderdetails.productCode
inner join productlines on productlines.productLine = products.productLine
group by ordernumber, productlines.productLine
order by ordernumber ASC;