-- AlterTable
ALTER TABLE "job" ADD COLUMN     "favoritedBy" TEXT;

-- AddForeignKey
ALTER TABLE "job" ADD CONSTRAINT "job_favoritedBy_fkey" FOREIGN KEY ("favoritedBy") REFERENCES "employee"("id") ON DELETE SET NULL ON UPDATE CASCADE;
