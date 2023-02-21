/*
  Warnings:

  - You are about to drop the column `employeeId` on the `job` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "job" DROP CONSTRAINT "job_employeeId_fkey";

-- AlterTable
ALTER TABLE "job" DROP COLUMN "employeeId";
