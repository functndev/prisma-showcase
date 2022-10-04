-- Begin transaction
BEGIN;

-- drop old foreign key constraint
ALTER TABLE "Post" DROP CONSTRAINT "Post_userId_fkey";

-- alter table column name
ALTER TABLE "Post" RENAME "userId" to "authorId";

-- add new foreign key constraint
ALTER TABLE "Post" ADD CONSTRAINT "Post_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- Commit transaction
COMMIT;
