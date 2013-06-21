.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/app/PendingIntent;

.field private synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$2;->a:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$2;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)Z
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$2;->a:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$2;->b:Landroid/content/Intent;

    invoke-interface {p1, v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
