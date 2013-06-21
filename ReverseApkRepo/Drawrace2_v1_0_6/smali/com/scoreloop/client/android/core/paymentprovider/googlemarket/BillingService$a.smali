.class abstract Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private final b:I

.field private synthetic c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->b:I

    .line 66
    return-void
.end method

.method protected static a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->valueOf(I)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    .line 77
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->b:I

    return v0
.end method

.method protected final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->c()Lcom/a/a/a/a;

    .line 96
    return-void
.end method

.method protected a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method protected abstract b()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a:J

    .line 127
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->e()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a(Landroid/os/RemoteException;)V

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->f()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
