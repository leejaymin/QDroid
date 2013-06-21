.class public final Lcom/paypal/android/a/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/a/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;
    .locals 9

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x0

    const-string v8, "Helvetica"

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f00

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v1, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    if-ne p0, v1, :cond_2

    :cond_0
    const-string v1, "Helvetica"

    sget-object v1, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    if-ne p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v8, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    return-object v0

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    if-ne p0, v1, :cond_3

    const-string v1, "Helvetica"

    invoke-static {v8, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x2

    invoke-static {p0, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v1

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_send_to"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v4, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
