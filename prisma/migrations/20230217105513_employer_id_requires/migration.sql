/*
  Warnings:

  - Made the column `employerId` on table `Job` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Job" DROP CONSTRAINT "Job_employerId_fkey";

-- AlterTable
ALTER TABLE "Job" ALTER COLUMN "employerId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Job" ADD CONSTRAINT "Job_employerId_fkey" FOREIGN KEY ("employerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
