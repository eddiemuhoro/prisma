-- CreateTable
CREATE TABLE "employee" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "profilePic" TEXT NOT NULL DEFAULT 'https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/profile.jpg?alt=media&token=71a31f30-11ee-49b9-913c-b3682d3f6ea7',
    "phone" TEXT,

    CONSTRAINT "employee_pkey" PRIMARY KEY ("id")
);
