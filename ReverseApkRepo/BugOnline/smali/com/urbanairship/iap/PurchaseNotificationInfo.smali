.class public Lcom/urbanairship/iap/PurchaseNotificationInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;
    }
.end annotation


# instance fields
.field private flags:I

.field private notificationId:I

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private progress:I

.field private timestamp:J

.field private type:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->progress:I

    iput-object p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->type:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    iput-object p2, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->productName:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->nextID()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->notificationId:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->flags:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->timestamp:J

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->flags:I

    return v0
.end method

.method public getNotificationId()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->notificationId:I

    return v0
.end method

.method public getNotificationType()Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->type:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->progress:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->timestamp:J

    return-wide v0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->flags:I

    return-void
.end method

.method public setNotificationId(I)V
    .locals 0

    iput p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->notificationId:I

    return-void
.end method

.method public setNotificationType(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->type:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->progress:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/urbanairship/iap/PurchaseNotificationInfo;->timestamp:J

    return-void
.end method
