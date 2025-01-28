import BookList from "@/components/BookList";
import BookOverview from "@/components/BookOverview";

import { sampleBooks } from "@/constants";
import { db } from "@/database/drizzle";
import { users } from "@/database/schema";


export default async function  Home () {
  const result = await db.select().from(users)
  console.log(result)
  return (
   <div>
    <BookOverview userId={"akhilesh"} 
    totalCopies={10} availableCopies={20}
     coverColor={"olive"} coverUrl={""} videoUrl={""} createdAt={null} {...sampleBooks[0]}/>

    <BookList 
    title="Latest Books"
    books={sampleBooks}
    containerClassName="mt-28"
    />
    
   </div>
  );
}
