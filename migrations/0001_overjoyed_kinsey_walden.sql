ALTER TABLE "users" ADD COLUMN "university_id" integer NOT NULL;--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "password" text NOT NULL;--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "university_card" text NOT NULL;--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "status" "status" DEFAULT 'PENDING';--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "role" "role" DEFAULT 'USER';--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "last_activity_date" date DEFAULT now();--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "created_at" timestamp with time zone DEFAULT now();--> statement-breakpoint
ALTER TABLE "users" ADD CONSTRAINT "users_university_id_unique" UNIQUE("university_id");