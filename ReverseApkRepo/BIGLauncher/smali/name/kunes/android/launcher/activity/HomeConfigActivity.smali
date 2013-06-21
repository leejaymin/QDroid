.class public Lname/kunes/android/launcher/activity/HomeConfigActivity;
.super Lname/kunes/android/launcher/activity/EightScreenConfigActivity;


# instance fields
.field private final a:[Lname/kunes/android/launcher/a/o;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Lname/kunes/android/launcher/a/o;

    const/4 v1, 0x3

    new-instance v2, Lname/kunes/android/launcher/a/a/l;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/a/l;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lname/kunes/android/launcher/a/a/k;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/a/k;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lname/kunes/android/launcher/a/a/h;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/a/h;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lname/kunes/android/launcher/a/a/r;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/a/r;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lname/kunes/android/launcher/a/a/g;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/a/g;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lname/kunes/android/launcher/a/n;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/n;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lname/kunes/android/launcher/activity/HomeConfigActivity;->a:[Lname/kunes/android/launcher/a/o;

    return-void
.end method

.method private c(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private i()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a(ILname/kunes/android/launcher/a/o;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a(ILname/kunes/android/launcher/a/o;I)V

    invoke-interface {p2}, Lname/kunes/android/launcher/a/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/HomeConfigActivity;->a:[Lname/kunes/android/launcher/a/o;

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lname/kunes/android/launcher/a/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lname/kunes/android/a/f;->a(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->findViewById(I)Landroid/view/View;

    return-void
.end method

.method protected final b_()I
    .locals 1

    const v0, 0x7f030002

    return v0
.end method

.method protected final d()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->d()V

    const v0, 0x7f090010

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->c(I)V

    const v0, 0x7f090017

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->c(I)V

    const v0, 0x7f090015

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->c(I)V

    const v0, 0x7f090019

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->c(I)V

    const v0, 0x7f090016

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->c(I)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->i()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600da

    invoke-virtual {p0, v1}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->i()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lname/kunes/android/launcher/activity/HomeConfigActivity;->b(I)Lname/kunes/android/launcher/a/o;

    move-result-object v1

    invoke-interface {v1}, Lname/kunes/android/launcher/a/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p0}, Lname/kunes/android/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    invoke-static {p0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected final e()[I
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xft 0x0t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0x1bt 0x0t 0x9t 0x7ft
        0x1ct 0x0t 0x9t 0x7ft
        0x1et 0x0t 0x9t 0x7ft
        0x1ft 0x0t 0x9t 0x7ft
        0x21t 0x0t 0x9t 0x7ft
        0x22t 0x0t 0x9t 0x7ft
    .end array-data
.end method
