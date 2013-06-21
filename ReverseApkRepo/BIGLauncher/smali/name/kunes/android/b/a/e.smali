.class public final Lname/kunes/android/b/a/e;
.super Lname/kunes/android/b/a/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/b/a/b;-><init>()V

    iput-object p1, p0, Lname/kunes/android/b/a/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lname/kunes/android/b/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/b/a/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/b/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/b/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/b/a/e;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/b/a/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lname/kunes/android/b/a/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lname/kunes/android/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lname/kunes/android/launcher/b/q;->f:Lname/kunes/android/launcher/b/c;

    iget-object v1, p0, Lname/kunes/android/b/a/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lname/kunes/android/b/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/b/c;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lname/kunes/android/b/a/d;

    invoke-direct {v0, p0}, Lname/kunes/android/b/a/d;-><init>(Lname/kunes/android/b/a/e;)V

    return-object v0
.end method
