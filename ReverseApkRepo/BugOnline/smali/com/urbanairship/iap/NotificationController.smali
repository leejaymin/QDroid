.class Lcom/urbanairship/iap/NotificationController;
.super Ljava/lang/Object;


# instance fields
.field private notifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/iap/PurchaseNotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/NotificationController;->notifications:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/NotificationController;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/NotificationController;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/PurchaseNotificationInfo;

    return-object v0
.end method

.method registerPurchaseNotification(Ljava/lang/String;Ljava/lang/String;Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V
    .locals 2

    new-instance v0, Lcom/urbanairship/iap/PurchaseNotificationInfo;

    invoke-direct {v0, p3, p2, p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;-><init>(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/iap/NotificationController;->notifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removePurchaseNotification(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/iap/NotificationController;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/PurchaseNotificationInfo;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setFlags(I)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/NotificationController;->sendNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)V

    iget-object v0, p0, Lcom/urbanairship/iap/NotificationController;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method sendNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)V
    .locals 3

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getNotificationBuilder()Lcom/urbanairship/iap/PurchaseNotificationBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/urbanairship/iap/PurchaseNotificationBuilder;->buildNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getNotificationId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
