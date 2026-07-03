-- When true, a cascade's non-entry hops stay VISIBLE as individual subscription
-- endpoints instead of being hidden by the leak-fix. Non-breaking: defaults to
-- false, so existing cascades keep hiding their downstream hops exactly as before.
ALTER TABLE "cascades" ADD COLUMN "expose_exits" BOOLEAN NOT NULL DEFAULT false;
