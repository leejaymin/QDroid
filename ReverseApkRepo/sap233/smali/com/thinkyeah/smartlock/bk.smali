.class public final Lcom/thinkyeah/smartlock/bk;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/thinkyeah/smartlock/bk;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0xd2t
        0x1bt
        0x49t
        0x80t
        0x99t
        0xc7t
        0x4at
        0xc0t
        0x33t
        0x58t
        0xa1t
        0xa1t
        0x18t
        0x75t
        0xdct
        0x8ft
        0xf5t
        0x56t
        0xc0t
        0x59t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    const-string v0, "LicenseCheckResult"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "LicenseCheckResult"

    invoke-static {p0, v0, p1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v0, "LicenseCheckReason"

    invoke-static {p0, v0, p2}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method
