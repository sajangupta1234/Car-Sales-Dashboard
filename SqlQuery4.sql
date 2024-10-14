/*   today  */
select 
o.orderDate,
o.ordernumber,
o.status,
o.customerNumber,
/*od.productCode   */                 /*--optional */
od.quantityOrdered as Qty,
od.priceEach,
p.productCode,
substring(p.productDescription,1,10),
p.productName,
p.productLine,
p.quantityInStock ,
pl.textDescription,
c.customerName,
c.country,
c.creditLimit,
c.addressLine1,
c.state,
c.salesRepEmployeeNumber,
p2.paymentDate,
p2.checkNumber,
p2.amount,
emp.firstName,
emp.lastName,
emp.jobTitle,
off.addressLine1,
off.city,
off.country  
from orders o 
inner join orderdetails od on o.orderNumber=od.orderNumber
inner join products p on p.productCode=od.productcode
inner join productlines pl on pl.productLine=p.productLine
inner join customers c on c.customerNumber=o.customerNumber
inner join payments p2 on p2.customerNumber=c.customerNumber
inner join employees emp on c.salesRepEmployeeNumber=emp.employeeNumber
inner join offices off on off.officeCode=emp.officeCode 
/*WHERE c.customerNumber = 448 */
/* P.productCode IN ('S12_3148', 'S12_4473')  */