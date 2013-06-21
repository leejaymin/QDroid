.class Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;
.super Lcom/urbanairship/util/UnzipperTask$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnzipDelegate"
.end annotation


# instance fields
.field downloadPath:Ljava/io/File;

.field product:Lcom/urbanairship/iap/Product;

.field final synthetic this$0:Lcom/urbanairship/iap/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    invoke-direct {p0}, Lcom/urbanairship/util/UnzipperTask$Delegate;-><init>()V

    iput-object p2, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    iput-object p3, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->downloadPath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Extraction of %s failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v1}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/iap/NotificationController;->get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DECOMPRESS_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setNotificationType(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v1}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/iap/NotificationController;->sendNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    #calls: Lcom/urbanairship/iap/DownloadManager;->retry(Lcom/urbanairship/iap/Product;)V
    invoke-static {v0, v1}, Lcom/urbanairship/iap/DownloadManager;->access$200(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v1}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/iap/NotificationController;->get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->INSTALL_SUCCESSFUL:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-virtual {v1, v2}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setNotificationType(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    sget-object v3, Lcom/urbanairship/iap/Product$Status;->INSTALLED:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {v2, v3}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    iget-object v3, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->downloadPath:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/urbanairship/iap/Product;->setDownloadPath(Ljava/io/File;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting download path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->downloadPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v1}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/iap/Receipt;->fetch(Ljava/lang/String;)Lcom/urbanairship/iap/Receipt;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->downloadPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/iap/Receipt;->setDownloadPathString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/urbanairship/iap/Receipt;->serialize()Z

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v1}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/iap/NotificationController;->removePurchaseNotification(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #calls: Lcom/urbanairship/iap/DownloadManager;->removePendingProduct(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/urbanairship/iap/DownloadManager;->access$400(Lcom/urbanairship/iap/DownloadManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/urbanairship/iap/DownloadManager;->access$500(Lcom/urbanairship/iap/DownloadManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getEventListener()Lcom/urbanairship/iap/IAPEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;->product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/IAPEventListener;->downloadSuccessful(Lcom/urbanairship/iap/Product;)V

    :cond_0
    return-void
.end method
