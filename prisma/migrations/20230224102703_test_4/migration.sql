/*
  Warnings:

  - The primary key for the `bid` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "bid" DROP CONSTRAINT "bid_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "bid_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "bid_id_seq";
