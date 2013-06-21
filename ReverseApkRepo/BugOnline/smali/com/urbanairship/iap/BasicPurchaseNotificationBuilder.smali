.class public Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/iap/PurchaseNotificationBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder$1;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field iconDrawable:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;->iconDrawable:I

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public buildNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)Landroid/app/Notification;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    iget v2, p0, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;->iconDrawable:I

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getTimestamp()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;->getNotificationMessage(Lcom/urbanairship/iap/PurchaseNotificationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1
.end method

.method protected getNotificationMessage(Lcom/urbanairship/iap/PurchaseNotificationInfo;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder$1;->$SwitchMap$com$urbanairship$iap$PurchaseNotificationInfo$NotificationType:[I

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getNotificationType()Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Downloading %s..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "Decompressing %s..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "Extraction of %s failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "Download of %s failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was sucessfully installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verifying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
