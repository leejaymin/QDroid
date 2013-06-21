.class final Lcom/paypal/android/MEP/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paypal/android/MEP/a/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/a/b;


# direct methods
.method constructor <init>(Lcom/paypal/android/MEP/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/a/b$1;->a:Lcom/paypal/android/MEP/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b$1;->a:Lcom/paypal/android/MEP/a/b;

    invoke-static {v1}, Lcom/paypal/android/MEP/a/b;->a(Lcom/paypal/android/MEP/a/b;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b$1;->a:Lcom/paypal/android/MEP/a/b;

    iget-object v2, v2, Lcom/paypal/android/MEP/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
