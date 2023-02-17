-- DropForeignKey
ALTER TABLE "Job" DROP CONSTRAINT "Job_employerId_fkey";

-- AlterTable
ALTER TABLE "Job" ALTER COLUMN "employerId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Job" ADD CONSTRAINT "Job_employerId_fkey" FOREIGN KEY ("employerId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
