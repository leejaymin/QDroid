.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;,
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$2;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$2;-><init>(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;)V

    .line 68
    return-void
.end method

.method public static a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private static a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;)V
    .locals 4
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delegates!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 42
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {p0, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public static a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;)V

    .line 78
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$4;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$4;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;)V

    .line 88
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$1;-><init>(Z)V

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;)V

    .line 58
    return-void
.end method

.method public static b(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method
