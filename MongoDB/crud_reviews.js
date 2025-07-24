// Connect to the database
db = connect("mongodb://localhost/bookbazaar_reviews");

db.createCollection("reviews");
// CREATE: Insert sample reviews
db.reviews.insertMany([
  {
    book_id: 201,
    reviewer: "Fatima",
    rating: 4,
    comment: "Interesting read with great insights.",
    created_at: new Date("2025-07-20T10:00:00Z"),
  },
  {
    book_id: 202,
    reviewer: "Youssef",
    rating: 5,
    created_at: new Date("2025-07-21T14:30:00Z"),
  },
]);

printjson({ message: "Inserted 2 sample reviews." });

// READ: Show all reviews
printjson({ message: "All reviews:" });
printjson(db.reviews.find());

// UPDATE: Change Fatima's rating
db.reviews.updateOne(
  { reviewer: "Fatima" },
  { $set: { rating: 5, comment: "Updated: even better on second read." } }
);
printjson({ message: "Updated Fatima's review." });
printjson(db.reviews.findOne({ reviewer: "Fatima" }));

// DELETE: Remove Youssef's review
db.reviews.deleteOne({ reviewer: "Youssef" });
printjson({ message: "Deleted Youssef's review." });

// READ: Show remaining reviews
printjson({ message: "Remaining reviews after deletion:" });
printjson(db.reviews.find().toArray());

db.createCollection("users");

db.users.insertOne({
  name: "Fatima",
  email: "fatima@example.com",
});

db.users.insertOne({
  name: "Youssef",
  email: "youssef@example.com",
});

db.users.find();
