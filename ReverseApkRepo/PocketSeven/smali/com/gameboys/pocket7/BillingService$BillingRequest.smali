.class abstract Lcom/gameboys/pocket7/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/gameboys/pocket7/BillingService;


# direct methods
.method public constructor <init>(Lcom/gameboys/pocket7/BillingService;I)V
    .locals 0
    .parameter
    .parameter "startId"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->this$0:Lcom/gameboys/pocket7/BillingService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->mStartId:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "method"
    .parameter "response"

    .prologue
    .line 108
    .line 109
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-static {v1}, Lcom/gameboys/pocket7/Consts$ResponseCode;->valueOf(I)Lcom/gameboys/pocket7/Consts$ResponseCode;

    move-result-object v0

    .line 113
    .local v0, responseCode:Lcom/gameboys/pocket7/Consts$ResponseCode;
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "method"

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, request:Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v1, "PACKAGE_NAME"

    .line 103
    iget-object v2, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->this$0:Lcom/gameboys/pocket7/BillingService;

    invoke-virtual {v2}, Lcom/gameboys/pocket7/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 89
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameboys/pocket7/BillingService;->access$4(Lcom/android/vending/billing/IMarketBillingService;)V

    .line 91
    return-void
.end method

.method protected responseCodeReceived(Lcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 96
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
    .line 71
    invoke-static {}, Lcom/gameboys/pocket7/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->mRequestId:J

    .line 77
    iget-wide v1, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/gameboys/pocket7/BillingService;->access$3()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 85
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/gameboys/pocket7/BillingService$BillingRequest;->this$0:Lcom/gameboys/pocket7/BillingService;

    #calls: Lcom/gameboys/pocket7/BillingService;->bindToMarketBillingService()Z
    invoke-static {v1}, Lcom/gameboys/pocket7/BillingService;->access$0(Lcom/gameboys/pocket7/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-static {}, Lcom/gameboys/pocket7/BillingService;->access$1()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
