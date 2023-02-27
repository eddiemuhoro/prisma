/*
  Warnings:

  - Added the required column `bid` to the `message` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "message" ADD COLUMN     "bid" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "message" ADD CONSTRAINT "message_bid_fkey" FOREIGN KEY ("bid") REFERENCES "bid"("id") ON DELETE CASCADE ON UPDATE CASCADE;
