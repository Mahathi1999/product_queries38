/*Find all the information about each products*/
db.products.find({})

/*Find the product price which are between 400 to 800*/
db.products.find({ price: { $gte: 400, $lte: 800 } })

/*Find the product price which are not between 400 to 600*/
db.products.find({ $or: [{ price: { $lt: 400 } }, { price: { $gt: 600 } }] })

/*List the four product which are grater than 500 in price */
db.products.find({ price: { $gt: 500 } }).limit(4)

/*Find the product name and product material of each products*/
db.products.find({}, { name: 1, material: 1, _id: 0 })

/*Find the product with a row id of 10*/
db.products.findOne({ row_id: 10 })

/*Find only the product name and product material*/
db.products.find({}, { name: 1, material: 1, _id: 0 })

/*Find all products which contain the value of soft in product material */
db.products.find({ material: /soft/i })

/*Find products which contain product color indigo  and product price 492.00*/
db.products.find({ color: "indigo", price: 492.00 })

/*Delete the products which product price value are same*/
db.products.deleteMany({ price: { $eq: 492.00 } })

