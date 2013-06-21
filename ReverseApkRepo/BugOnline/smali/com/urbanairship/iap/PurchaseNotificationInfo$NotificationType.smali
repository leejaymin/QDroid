.class public final enum Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/PurchaseNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

.field public static final enum DECOMPRESSING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

.field public static final enum DECOMPRESS_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

.field public static final enum DOWNLOADING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

.field public static final enum DOWNLOAD_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

.field public static final enum INSTALL_SUCCESSFUL:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

.field public static final enum VERIFYING_RECEIPT:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    const-string v1, "DOWNLOAD_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DOWNLOAD_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    new-instance v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    const-string v1, "DECOMPRESS_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DECOMPRESS_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    new-instance v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DOWNLOADING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    new-instance v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    const-string v1, "DECOMPRESSING"

    invoke-direct {v0, v1, v6}, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DECOMPRESSING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    new-instance v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    const-string v1, "INSTALL_SUCCESSFUL"

    invoke-direct {v0, v1, v7}, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->INSTALL_SUCCESSFUL:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    new-instance v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    const-string v1, "VERIFYING_RECEIPT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->VERIFYING_RECEIPT:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    sget-object v1, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DOWNLOAD_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DECOMPRESS_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DOWNLOADING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DECOMPRESSING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->INSTALL_SUCCESSFUL:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->VERIFYING_RECEIPT:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->$VALUES:[Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;
    .locals 1

    const-class v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->$VALUES:[Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-virtual {v0}, [Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    return-object v0
.end method
