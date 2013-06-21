.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$4;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)Z
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$4;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    invoke-interface {p1, v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)Z

    move-result v0

    return v0
.end method
