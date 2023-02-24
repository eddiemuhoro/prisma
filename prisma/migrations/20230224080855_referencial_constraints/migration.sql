-- DropForeignKey
ALTER TABLE "application" DROP CONSTRAINT "application_employeeId_fkey";

-- DropForeignKey
ALTER TABLE "application" DROP CONSTRAINT "application_jobId_fkey";

-- DropForeignKey
ALTER TABLE "job" DROP CONSTRAINT "job_employerId_fkey";

-- AddForeignKey
ALTER TABLE "job" ADD CONSTRAINT "job_employerId_fkey" FOREIGN KEY ("employerId") REFERENCES "employer"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "application" ADD CONSTRAINT "application_jobId_fkey" FOREIGN KEY ("jobId") REFERENCES "job"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "application" ADD CONSTRAINT "application_employeeId_fkey" FOREIGN KEY ("employeeId") REFERENCES "employee"("id") ON DELETE CASCADE ON UPDATE CASCADE;
