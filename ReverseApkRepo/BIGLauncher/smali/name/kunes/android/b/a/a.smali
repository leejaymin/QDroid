.class public final Lname/kunes/android/b/a/a;
.super Lname/kunes/android/b/a/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/b/a/b;-><init>()V

    iput-object p1, p0, Lname/kunes/android/b/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lname/kunes/android/b/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/b/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/b/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/b/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/b/a/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lname/kunes/android/b/a/a;->b:Ljava/lang/String;

    new-instance v1, Lname/kunes/android/f/a;

    iget-object v2, p0, Lname/kunes/android/b/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lname/kunes/android/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lname/kunes/android/f/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lname/kunes/android/b/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lname/kunes/android/f/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lname/kunes/android/b/a/c;

    invoke-direct {v0, p0}, Lname/kunes/android/b/a/c;-><init>(Lname/kunes/android/b/a/a;)V

    return-object v0
.end method
