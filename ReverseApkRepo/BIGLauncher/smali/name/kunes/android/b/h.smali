.class public final Lname/kunes/android/b/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lname/kunes/android/b/a/b;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Lname/kunes/android/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lname/kunes/android/b/a/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lname/kunes/android/b/a/b;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lname/kunes/android/b/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Lname/kunes/android/b/a/e;

    invoke-direct {v0, p1, p0}, Lname/kunes/android/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lname/kunes/android/b/h;->a(Landroid/content/Context;Lname/kunes/android/b/a/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    new-instance v0, Lname/kunes/android/b/a/a;

    invoke-direct {v0, p1, p0}, Lname/kunes/android/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lname/kunes/android/f/a;

    invoke-direct {v1, p0}, Lname/kunes/android/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lname/kunes/android/f/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lname/kunes/android/b/a/e;

    invoke-virtual {v1, p1}, Lname/kunes/android/f/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lname/kunes/android/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0}, Lname/kunes/android/b/h;->a(Landroid/content/Context;Lname/kunes/android/b/a/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
