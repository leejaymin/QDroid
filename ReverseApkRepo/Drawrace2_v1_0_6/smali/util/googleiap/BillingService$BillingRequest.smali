.class abstract Lutil/googleiap/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutil/googleiap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lutil/googleiap/BillingService;


# direct methods
.method public constructor <init>(Lutil/googleiap/BillingService;I)V
    .locals 0
    .parameter
    .parameter "startId"

    .prologue
    .line 81
    iput-object p1, p0, Lutil/googleiap/BillingService$BillingRequest;->this$0:Lutil/googleiap/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p2, p0, Lutil/googleiap/BillingService$BillingRequest;->mStartId:I

    .line 83
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lutil/googleiap/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "method"
    .parameter "response"

    .prologue
    .line 171
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lutil/googleiap/Consts$ResponseCode;->valueOf(I)Lutil/googleiap/Consts$ResponseCode;

    move-result-object v0

    .line 176
    .local v0, responseCode:Lutil/googleiap/Consts$ResponseCode;
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "method"

    .prologue
    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, request:Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lutil/googleiap/BillingService$BillingRequest;->this$0:Lutil/googleiap/BillingService;

    invoke-virtual {v2}, Lutil/googleiap/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 144
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Lutil/googleiap/BillingService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 146
    return-void
.end method

.method protected responseCodeReceived(Lutil/googleiap/Consts$ResponseCode;)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 160
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Lutil/googleiap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lutil/googleiap/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lutil/googleiap/BillingService$BillingRequest;->mRequestId:J

    .line 126
    iget-wide v1, p0, Lutil/googleiap/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 127
    invoke-static {}, Lutil/googleiap/BillingService;->access$300()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lutil/googleiap/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lutil/googleiap/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 134
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0}, Lutil/googleiap/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v1, p0, Lutil/googleiap/BillingService$BillingRequest;->this$0:Lutil/googleiap/BillingService;

    #calls: Lutil/googleiap/BillingService;->bindToMarketBillingService()Z
    invoke-static {v1}, Lutil/googleiap/BillingService;->access$000(Lutil/googleiap/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-static {}, Lutil/googleiap/BillingService;->access$100()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
