.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)Z
    .locals 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$3;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
