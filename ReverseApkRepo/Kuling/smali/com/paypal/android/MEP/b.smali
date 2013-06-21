.class final Lcom/paypal/android/MEP/b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/MEP/PayPalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/PayPalActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/MEP/PayPalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b;->a:Lcom/paypal/android/MEP/PayPalActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, -0x1

    const-string v5, "ERROR_TIMEOUT"

    invoke-static {v4}, Lcom/paypal/android/MEP/PayPalActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/paypal/android/MEP/a/e;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->AUTH_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v2}, Lcom/paypal/android/MEP/PayPal;->getPaymentButton(ILandroid/content/Context;I)Lcom/paypal/android/MEP/CheckoutButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setActive(Z)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/paypal/android/MEP/a/e;->b(I)V

    const-string v0, "ERROR_TIMEOUT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR_TIMEOUT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/MEP/PayPalActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/paypal/android/MEP/a/e;->b(I)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b;->a:Lcom/paypal/android/MEP/PayPalActivity;

    invoke-static {v0, p2}, Lcom/paypal/android/MEP/PayPalActivity;->a(Lcom/paypal/android/MEP/PayPalActivity;Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/paypal/android/MEP/a/e;->b(I)V

    goto :goto_0
.end method
