.class public final Lname/kunes/android/launcher/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lname/kunes/android/launcher/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/d;-><init>(Lname/kunes/android/launcher/m;)V

    iput-object v0, p0, Lname/kunes/android/launcher/m;->b:Ljava/lang/Runnable;

    new-instance v0, Lname/kunes/android/launcher/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/e;-><init>(Lname/kunes/android/launcher/m;)V

    iput-object v0, p0, Lname/kunes/android/launcher/m;->c:Ljava/lang/Runnable;

    new-instance v0, Lname/kunes/android/launcher/f;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/f;-><init>(Lname/kunes/android/launcher/m;)V

    iput-object v0, p0, Lname/kunes/android/launcher/m;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lname/kunes/android/launcher/m;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/m;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/m;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lname/kunes/android/launcher/m;->b:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v3, p0, Lname/kunes/android/launcher/m;->c:Ljava/lang/Runnable;

    iget-object v4, p0, Lname/kunes/android/launcher/m;->d:Ljava/lang/Runnable;

    new-instance v5, Lname/kunes/android/launcher/c/d;

    iget-object v2, p0, Lname/kunes/android/launcher/m;->a:Landroid/app/Activity;

    invoke-direct {v5, v2}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lname/kunes/android/launcher/c/d;->d()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lname/kunes/android/launcher/c/d;->t()V

    invoke-virtual {v5}, Lname/kunes/android/launcher/c/d;->S()V

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lname/kunes/android/launcher/c/d;->t()V

    invoke-virtual {v5}, Lname/kunes/android/launcher/c/d;->R()I

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {v5}, Lname/kunes/android/launcher/c/d;->S()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
