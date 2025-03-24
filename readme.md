1. What is PostgreSQL?
PostgreSQL হলো একটি ওপেন-সোর্স রিলেশনাল ডাটাবেজ ম্যানেজমেন্ট সিস্টেম, যার মাধ্যমে আমরা ডাটা সংরক্ষণ ও পরিচালনা করতে পারি। এটি SQL (Structured Query Language)-এর উপর ভিত্তি করে তৈরি করা হয়েছে।

 
2. What is the purpose of a database schema in PostgreSQL?
PostgreSQL-এ ডাটাবেজ স্কিমার মূল উদ্দেশ্য হলো ডাটাকে সঠিকভাবে বিন্যস্ত করতে সহায়তা করা। এটি একটি লজিক্যাল স্ট্রাকচার, যা ডাটাবেজের বিভিন্ন উপাদান যেমন টেবিল, ভিউ, ইনডেক্স, ফাংশন এবং সিকোয়েন্স সংগঠিত ও পরিচালনা করতে ব্যবহৃত হয়।

3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Primary Key: একটি টেবিলের কলাম এর id যা প্রতিটি রেকর্ডকে অনন্যভাবে শনাক্ত করে। 

Foreign Key: একটি টেবিলের কলাম যা অন্য একটি টেবিলের Primary Key-কে রেফার করে। এটি টেবিলগুলোর মধ্যে সম্পর্ক স্থাপন করতে ব্যবহৃত হয়।


4. What is the difference between the VARCHAR and CHAR data types?
VARCHAR: শুধুমাত্র সংরক্ষিত অক্ষরের জন্য জায়গা নেয়, এটি একটি পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং যা সর্বোচ্চ একটি নির্দিষ্ট দৈর্ঘ্য পর্যন্ত ডাটা সংরক্ষণ করতে পারে।

CHAR: নির্দিষ্ট দৈর্ঘ্যের জন্য পুরো জায়গা দখল করে, এটি একটি স্থির দৈর্ঘ্যের স্ট্রিং। নির্ধারিত দৈর্ঘ্যের চেয়ে ছোট ডাটা থাকলেও বাকি অংশ ফাঁকা (space) দিয়ে পূরণ হয়।


5. Explain the purpose of the WHERE clause in a SELECT statement.
PostgreSQL-এ WHERE ক্লজ ব্যবহার করা হয় ডাটাবেস থেকে নির্দিষ্ট শর্ত অনুযায়ী রেকর্ড ফিল্টার করার জন্য। এটি SELECT স্টেটমেন্টে শর্ত নির্ধারণ করে, যাতে শুধুমাত্র প্রয়োজনীয় ডাটাগুলো পাওয়া যায়।

6. What are the LIMIT and OFFSET clauses used for?
LIMIT: টেবিল থেকে কতো সংখ্যক রেকর্ড ফেরত আনতে হবে তা নির্ধারণ করে।

OFFSET: কতগুলো রেকর্ড বাদ দিয়ে পরবর্তী রেকর্ড থেকে ডাটা দেখাবে তা নির্ধারণ করে।

7. How can you modify data using UPDATE statements?
UPDATE স্টেটমেন্ট ব্যবহার করা হয় ডাটাবেসের টেবিলের ডাটা পরিবর্তন করার জন্য।

8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOIN অপারেশন ব্যবহৃত হয় একাধিক টেবিল থেকে ডাটা একত্রিত করার জন্য। 

9. Explain the GROUP BY clause and its role in aggregation operations.
GROUP BY ক্লজ ডাটাকে নির্দিষ্ট কলাম অনুযায়ী গ্রুপ করে। এটি সাধারণত অ্যাগ্রিগেট ফাংশন (যেমন COUNT, SUM, AVG, MIN, MAX) এর সাথে ব্যবহার করা হয়।

10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
COUNT(): মোট রেকর্ড সংখ্যা গণনা করে।
SUM(): নির্দিষ্ট কলামের মানগুলোর যোগফল দেয়। 
AVG(): নির্দিষ্ট কলামের গড় মান বের করে।
 