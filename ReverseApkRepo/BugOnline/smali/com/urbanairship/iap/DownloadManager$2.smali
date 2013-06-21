.class Lcom/urbanairship/iap/DownloadManager$2;
.super Lcom/urbanairship/restclient/AsyncHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/iap/DownloadManager;->download(Lcom/urbanairship/iap/Product;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/DownloadManager;

.field final synthetic val$downloadPath:Ljava/io/File;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$product:Lcom/urbanairship/iap/Product;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/urbanairship/iap/DownloadManager;Ljava/io/File;Ljava/lang/String;Lcom/urbanairship/iap/Product;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/DownloadManager$2;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iput-object p2, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$tempFile:Ljava/io/File;

    iput-object p3, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$product:Lcom/urbanairship/iap/Product;

    iput-object p5, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$downloadPath:Ljava/io/File;

    invoke-direct {p0}, Lcom/urbanairship/restclient/AsyncHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/urbanairship/restclient/Response;)V
    .locals 5

    const/16 v3, 0x64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloaded product to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$tempFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extracting..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$2;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v0}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/NotificationController;->get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setProgress(I)V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/iap/IAPManager;->getEventListener()Lcom/urbanairship/iap/IAPEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/iap/IAPEventListener;->downloadProgress(Lcom/urbanairship/iap/Product;I)V

    :cond_0
    sget-object v1, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DECOMPRESSING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setNotificationType(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v1}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/iap/NotificationController;->sendNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)V

    new-instance v0, Lcom/urbanairship/util/UnzipperTask;

    invoke-direct {v0}, Lcom/urbanairship/util/UnzipperTask;-><init>()V

    new-instance v1, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager$2;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iget-object v3, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$product:Lcom/urbanairship/iap/Product;

    iget-object v4, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$downloadPath:Ljava/io/File;

    invoke-direct {v1, v2, v3, v4}, Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;-><init>(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/util/UnzipperTask;->setDelegate(Lcom/urbanairship/util/UnzipperTask$Delegate;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$tempFile:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$downloadPath:Ljava/io/File;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/urbanairship/util/UnzipperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$2;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$product:Lcom/urbanairship/iap/Product;

    #calls: Lcom/urbanairship/iap/DownloadManager;->retry(Lcom/urbanairship/iap/Product;)V
    invoke-static {v0, v1}, Lcom/urbanairship/iap/DownloadManager;->access$200(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$2;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v0}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/NotificationController;->get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setProgress(I)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #getter for: Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;
    invoke-static {v1}, Lcom/urbanairship/iap/DownloadManager;->access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/iap/NotificationController;->sendNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getEventListener()Lcom/urbanairship/iap/IAPEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$2;->val$product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/iap/IAPEventListener;->downloadProgress(Lcom/urbanairship/iap/Product;I)V

    :cond_0
    return-void
.end method
