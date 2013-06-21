.class public final Lcom/paypal/android/MEP/a/d;
.super Lcom/paypal/android/c/i;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
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

.method protected final a(Landroid/content/Context;)V
    .locals 8

    const/4 v4, 0x5

    const/4 v3, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/paypal/android/c/i;->a(Landroid/content/Context;)V

    const/16 v0, 0x232c

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/paypal/android/a/c;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Lcom/paypal/android/c/g;

    const-string v2, "ANDROID_Help"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/paypal/android/c/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xf

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v3, 0x4120

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x2

    const v4, -0x7e5b3a

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_about_paypal"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_help_string"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_sign_up"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_no_account"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_forgot_password"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_forgot_password_body"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->shouldShowFees()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_help_fees_header"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "ANDROID_help_fees_body"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/c/a;

    invoke-direct {v1, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    const-string v2, "ANDROID_OK"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setGravity(I)V

    const/16 v2, 0x4b1f

    const/16 v3, 0x33b

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const v2, 0xd859

    const/16 v3, 0x36b

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setTextColor(I)V

    new-instance v2, Lcom/paypal/android/MEP/a/d$1;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/d$1;-><init>(Lcom/paypal/android/MEP/a/d;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xf

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfat 0xf1t 0xe8t 0xfft
        0xfat 0xf1t 0xe8t 0xfft
        0xfat 0xf1t 0xe8t 0xfft
        0xfat 0xf1t 0xe8t 0xfft
        0xfat 0xf1t 0xe8t 0xfft
    .end array-data
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/a/e;->a()V

    :cond_0
    return-void
.end method
