/*
  Warnings:

  - Added the required column `name` to the `application` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "application" ADD COLUMN     "coverLetter" TEXT,
ADD COLUMN     "name" TEXT NOT NULL;
