-- DropForeignKey
ALTER TABLE "application" DROP CONSTRAINT "application_jobId_fkey";

-- AddForeignKey
ALTER TABLE "application" ADD CONSTRAINT "application_jobId_fkey" FOREIGN KEY ("jobId") REFERENCES "job"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
