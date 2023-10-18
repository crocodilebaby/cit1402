select orderdetails.orderNumber,count(orderdetails.orderNumber) as numberofline_items,round(sum(orderdetails.priceEach*orderdetails.quantityOrdered),2) as totalcost
from orderdetails
group by orderdetails.orderNumber
order by totalcost desc;