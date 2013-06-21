.class public final Lcom/paypal/android/MEP/a/g;
.super Lcom/paypal/android/c/i;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/c/f$a;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/MEP/b/b;

.field private c:Lcom/paypal/android/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/c/i;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 10

    const/4 v6, 0x3

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v4, 0x5

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v1

    invoke-super {p0, p1}, Lcom/paypal/android/c/i;->a(Landroid/content/Context;)V

    invoke-static {p1, v9, v8}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v3, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v3, p1}, Lcom/paypal/android/a/i;->b(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v3, p1, v7}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/paypal/android/MEP/a/g;->b:Lcom/paypal/android/MEP/b/b;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/g;->b:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v3, p0}, Lcom/paypal/android/MEP/b/b;->a(Lcom/paypal/android/c/f$a;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/g;->b:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/a/g;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/paypal/android/a/c;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v3

    if-ne v3, v6, :cond_1

    new-instance v3, Lcom/paypal/android/c/g;

    const-string v4, "ANDROID_donation_made"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/paypal/android/c/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    new-instance v3, Lcom/paypal/android/c/d;

    sget-object v4, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v5, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v3, p1, v4, v5}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/paypal/android/c/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "ANDROID_successfully_paid_amount_to_recipient"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v5

    if-ne v5, v6, :cond_0

    const-string v4, "ANDROID_successfully_donated_amount_to_recipient"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "{1}"

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalPayment;->getTotalString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "{2}"

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v9, v8}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Lcom/paypal/android/c/a;

    invoke-direct {v1, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    const-string v3, "ANDROID_Done"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    const/4 v3, 0x0

    const/16 v4, 0x4b1f

    const/16 v5, 0x33b

    invoke-static {v4, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    const v3, 0xd859

    const/16 v4, 0x36b

    invoke-static {v3, v4}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Lcom/paypal/android/c/a;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v1, p0}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/a/g;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance v3, Lcom/paypal/android/c/g;

    const-string v4, "ANDROID_payment_made"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/paypal/android/c/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final a(Lcom/paypal/android/c/f;I)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/g;->c:Lcom/paypal/android/c/a;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/paypal/android/MEP/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "1111111"

    sput-object v0, Lcom/paypal/android/MEP/a/g;->a:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
