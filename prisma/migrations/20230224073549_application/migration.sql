-- CreateTable
CREATE TABLE "application" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "jobId" TEXT NOT NULL,
    "employeeId" TEXT NOT NULL,

    CONSTRAINT "application_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "application" ADD CONSTRAINT "application_jobId_fkey" FOREIGN KEY ("jobId") REFERENCES "job"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "application" ADD CONSTRAINT "application_employeeId_fkey" FOREIGN KEY ("employeeId") REFERENCES "employee"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
