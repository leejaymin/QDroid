.class public final Lcom/paypal/android/MEP/a/b;
.super Lcom/paypal/android/c/i;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/c/f$a;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Intent;

.field private c:Lcom/paypal/android/c/h;

.field private d:Lcom/paypal/android/MEP/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/c/i;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->b:Landroid/content/Intent;

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/paypal/android/c/i;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->b:Landroid/content/Intent;

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/MEP/a/b;->b:Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->b:Landroid/content/Intent;

    const-string v1, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Lcom/paypal/android/c/h;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ANDROID_10001"

    invoke-static {v0}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/paypal/android/MEP/a/b;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->b:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 8

    const/16 v3, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x5

    invoke-super {p0, p1}, Lcom/paypal/android/c/i;->a(Landroid/content/Context;)V

    const/4 v0, -0x2

    invoke-static {p1, v5, v0}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v1, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v1, p1}, Lcom/paypal/android/a/i;->b(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v1, p1, v6}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/b;->d:Lcom/paypal/android/MEP/b/b;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->d:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/b/b;->a(Lcom/paypal/android/c/f$a;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->d:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/b;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v5}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/a/c;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/paypal/android/c/g;

    const-string v2, "ANDROID_ErrorHeading"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/paypal/android/c/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, -0x2

    invoke-static {p1, v5, v1}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/c/h;

    invoke-direct {v2, p1}, Lcom/paypal/android/c/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/b;->c:Lcom/paypal/android/c/h;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->c:Lcom/paypal/android/c/h;

    sget-object v3, Lcom/paypal/android/c/h$a;->a:Lcom/paypal/android/c/h$a;

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/h;->a(Lcom/paypal/android/c/h$a;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->c:Lcom/paypal/android/c/h;

    const-string v3, "ANDROID_10001"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->c:Lcom/paypal/android/c/h;

    invoke-virtual {v2, v6, v4, v6, v4}, Lcom/paypal/android/c/h;->setPadding(IIII)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->c:Lcom/paypal/android/c/h;

    invoke-virtual {v2, v6}, Lcom/paypal/android/c/h;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->c:Lcom/paypal/android/c/h;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/c/a;

    invoke-direct {v1, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    const-string v2, "ANDROID_OK"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v7}, Lcom/paypal/android/c/a;->setGravity(I)V

    const/16 v2, 0x4b1f

    const/16 v3, 0x33b

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const v2, 0xd859

    const/16 v3, 0x36b

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setTextColor(I)V

    new-instance v2, Lcom/paypal/android/MEP/a/b$1;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/b$1;-><init>(Lcom/paypal/android/MEP/a/b;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/b;->addView(Landroid/view/View;)V

    return-void
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
    .locals 0

    return-void
.end method
