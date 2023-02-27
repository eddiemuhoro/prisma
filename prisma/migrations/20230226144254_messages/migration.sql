-- AlterTable
ALTER TABLE "employee" ALTER COLUMN "profilePic" SET DEFAULT 'https://www.w3schools.com/howto/img_avatar.png';

-- AlterTable
ALTER TABLE "employer" ALTER COLUMN "profilePic" SET DEFAULT 'https://www.w3schools.com/howto/img_avatar.png';

-- CreateTable
CREATE TABLE "message" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "message" TEXT NOT NULL,
    "sender" TEXT NOT NULL,
    "receiver" TEXT NOT NULL,

    CONSTRAINT "message_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "message" ADD CONSTRAINT "message_sender_fkey" FOREIGN KEY ("sender") REFERENCES "employer"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "message" ADD CONSTRAINT "message_receiver_fkey" FOREIGN KEY ("receiver") REFERENCES "employee"("id") ON DELETE CASCADE ON UPDATE CASCADE;
