.class public Lname/kunes/android/launcher/activity/EightScreenActivity;
.super Lname/kunes/android/activity/DefaultActivity;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/DefaultActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->h()I

    move-result v2

    invoke-static {p0, v2}, Lname/kunes/android/launcher/a/g;->d(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Lname/kunes/android/launcher/c/e;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/activity/EightScreenActivity;->b(I)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    invoke-interface {v0}, Lname/kunes/android/launcher/a/o;->a()V

    return-void
.end method

.method protected a(ILname/kunes/android/launcher/a/o;I)V
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/activity/cc;

    invoke-direct {v0, p0, p3}, Lname/kunes/android/launcher/activity/cc;-><init>(Lname/kunes/android/launcher/activity/EightScreenActivity;I)V

    invoke-static {p0, p1, p2}, Lname/kunes/android/a/f;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)V

    invoke-static {p0, p1, v0}, Lname/kunes/android/a/f;->a(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/activity/EightScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lname/kunes/android/launcher/c/e;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->h()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lname/kunes/android/launcher/c/e;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lname/kunes/android/a/a;->a(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method protected final b(I)Lname/kunes/android/launcher/a/o;
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->i()Lname/kunes/android/launcher/c/e;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->h()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lname/kunes/android/launcher/c/e;->b(II)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected b_()I
    .locals 1

    const/high16 v0, 0x7f03

    return v0
.end method

.method protected final c_()I
    .locals 1

    const v0, 0x7f090001

    return v0
.end method

.method protected d()V
    .locals 5

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->e()[I

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget v2, v1, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lname/kunes/android/launcher/activity/EightScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-boolean v4, p0, Lname/kunes/android/launcher/activity/EightScreenActivity;->a:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->b(I)Lname/kunes/android/launcher/a/o;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->a(ILname/kunes/android/launcher/a/o;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected e()[I
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x9t 0x7ft
        0x2t 0x0t 0x9t 0x7ft
        0x4t 0x0t 0x9t 0x7ft
        0x5t 0x0t 0x9t 0x7ft
        0x6t 0x0t 0x9t 0x7ft
        0x7t 0x0t 0x9t 0x7ft
        0x3t 0x0t 0x9t 0x7ft
        0x8t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected f()I
    .locals 1

    const v0, 0x7f060123

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060125

    return v0
.end method

.method protected final h()I
    .locals 3

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lname/kunes/android/activity/DefaultActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->h()I

    move-result v0

    invoke-static {p0, v0}, Lname/kunes/android/launcher/a/g;->c(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->h()I

    move-result v1

    new-instance v2, Lname/kunes/android/launcher/a/b/b;

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->i()Lname/kunes/android/launcher/c/e;

    move-result-object v3

    invoke-virtual {v3, v1}, Lname/kunes/android/launcher/c/e;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lname/kunes/android/launcher/a/b/b;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lname/kunes/android/launcher/a/b/b;->a(Landroid/widget/ImageView;)Z

    move-result v0

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/EightScreenActivity;->a:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onResume()V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->d()V

    return-void
.end method

.method protected final r()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final s()Ljava/lang/String;
    .locals 1

    const v0, 0x7f060125

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
