.class public final Lcom/paypal/android/MEP/b/b;
.super Lcom/paypal/android/c/b;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private e:Lcom/paypal/android/c/d;

.field private f:Landroid/graphics/drawable/GradientDrawable;

.field private g:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/paypal/android/c/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/MEP/b/b;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/MEP/b/b;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    const/4 v0, -0x1

    const v1, -0x170e06

    const v2, -0x777778

    invoke-static {v0, v1, v2}, Lcom/paypal/android/a/c;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->f:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, -0x1

    const v1, 0xd8d3a4

    const v2, -0x777778

    invoke-static {v0, v1, v2}, Lcom/paypal/android/a/c;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/paypal/android/MEP/b/b;->setPadding(IIII)V

    const v0, 0x11717

    const/16 v1, 0x1cf

    invoke-static {v0, v1}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->a(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x62f0

    const/16 v1, 0x1ae

    invoke-static {v0, v1}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/MEP/b/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_6

    const v2, 0x27fb0

    const/16 v5, 0x2ce

    invoke-static {v2, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/c/d;

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v5, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-direct {v1, p1, v2, v5}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    if-eqz p2, :cond_a

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_total_paid"

    invoke-static {v5}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/d;->a(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getTotalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    const v2, -0xcc9a00

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/d;->b(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->a(Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getShipping()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getTax()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->dynamicAmountCalculationEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_1
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v6, 0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/c/d;

    sget-object v1, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getItemDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getAmountString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->shouldShowFees()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v1, "PricingDetails"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    const-string v1, "Fee"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "FeecurrencyID"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "FeeBearer"

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    new-instance v7, Lcom/paypal/android/c/d;

    sget-object v8, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v9, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v7, p1, v8, v9}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ANDROID_Fee"

    invoke-static {v9}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    const-string v6, "ApplyFeeToReceiver"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "ANDROID_recipient_pays"

    invoke-static {v6}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "):"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/paypal/android/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Lcom/paypal/android/c/d;

    sget-object v1, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_Tax"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getTaxString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getTax()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    new-instance v0, Lcom/paypal/android/c/d;

    sget-object v1, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    const-string v1, "ANDROID_ShippingLabel"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getShippingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getShipping()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v6, 0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v0, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_Total"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPayment;->getTotalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    invoke-static {v0, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "ANDROID_shipping_tax_estimated_note"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->dynamicAmountCalculationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/paypal/android/MEP/b/b;->b(Landroid/view/View;)V

    :goto_3
    return-void

    :cond_6
    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_7

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    :cond_7
    const v2, 0x20579

    const/16 v5, 0x136

    invoke-static {v2, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    const v2, 0x206af

    const/16 v5, 0x16f

    invoke-static {v2, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_receipt"

    invoke-static {v5}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_MyTotal"

    invoke-static {v5}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "ANDROID_I_pay"

    invoke-static {v6}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "ANDROID_Free"

    invoke-static {v6}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->setClickable(Z)V

    goto/16 :goto_3
.end method


# virtual methods
.method public final b(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v1, -0x777778

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPayment;->getShipping()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPayment;->getTax()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v3}, Lcom/paypal/android/c/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    const v1, -0xcc9a00

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->b(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/paypal/android/MEP/b/b;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Lcom/paypal/android/c/d;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/d;->b(I)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
