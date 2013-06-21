.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;
.super Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I)V

    .line 250
    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->b:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->a:Ljava/lang/String;

    .line 252
    return-void
.end method


# virtual methods
.method protected final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V

    .line 257
    return-void
.end method

.method protected final b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 262
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 268
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 269
    if-nez v0, :cond_1

    .line 270
    sget-wide v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts;->a:J

    .line 276
    :goto_0
    return-wide v0

    .line 274
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 275
    invoke-static {v0, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 276
    const-string v0, "REQUEST_ID"

    sget-wide v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
