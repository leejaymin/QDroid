.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$1;->a:Z

    invoke-interface {p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;->a(Z)Z

    move-result v0

    return v0
.end method
