.class public final Lname/kunes/android/b/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lname/kunes/android/b/d;->c(Landroid/content/Context;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Lname/kunes/android/b/d;->c(Landroid/content/Context;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/kunes/android/a/g;->a(Ljava/lang/String;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-static {p0, p2}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/kunes/android/a/g;->a(Landroid/graphics/drawable/Drawable;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lname/kunes/android/b/d;->c(Landroid/content/Context;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->a()Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lname/kunes/android/a/g;->a(Ljava/lang/String;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lname/kunes/android/b/d;->c(Landroid/content/Context;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->a()Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lname/kunes/android/a/g;->a(Ljava/lang/String;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lname/kunes/android/a/g;->a(Landroid/graphics/drawable/Drawable;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lname/kunes/android/a/g;->a(Landroid/view/View$OnClickListener;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lname/kunes/android/launcher/a/o;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Lname/kunes/android/b/d;->c(Landroid/content/Context;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->a()Lname/kunes/android/a/g;

    move-result-object v0

    invoke-interface {p1}, Lname/kunes/android/launcher/a/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/kunes/android/a/g;->a(Ljava/lang/String;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-interface {p1}, Lname/kunes/android/launcher/a/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/kunes/android/a/g;->a(Landroid/graphics/drawable/Drawable;)Lname/kunes/android/a/g;

    move-result-object v0

    new-instance v1, Lname/kunes/android/b/a;

    invoke-direct {v1, p1}, Lname/kunes/android/b/a;-><init>(Lname/kunes/android/launcher/a/o;)V

    invoke-virtual {v0, v1}, Lname/kunes/android/a/g;->a(Landroid/view/View$OnClickListener;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lname/kunes/android/b/d;->c(Landroid/content/Context;)Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->a()Lname/kunes/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/a/g;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lname/kunes/android/a/g;
    .locals 1

    new-instance v0, Lname/kunes/android/a/g;

    invoke-direct {v0, p0}, Lname/kunes/android/a/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
