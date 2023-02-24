/*
  Warnings:

  - You are about to drop the `application` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "application" DROP CONSTRAINT "application_jobId_fkey";

-- DropTable
DROP TABLE "application";

-- CreateTable
CREATE TABLE "bid" (
    "id" SERIAL NOT NULL,
    "description" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "belongToEmployee" TEXT NOT NULL,
    "job" TEXT NOT NULL,
    "isSelected" BOOLEAN NOT NULL DEFAULT false,
    "belongToJob" TEXT NOT NULL,

    CONSTRAINT "bid_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "bid" ADD CONSTRAINT "bid_belongToEmployee_fkey" FOREIGN KEY ("belongToEmployee") REFERENCES "employee"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bid" ADD CONSTRAINT "bid_belongToJob_fkey" FOREIGN KEY ("belongToJob") REFERENCES "job"("id") ON DELETE CASCADE ON UPDATE CASCADE;
