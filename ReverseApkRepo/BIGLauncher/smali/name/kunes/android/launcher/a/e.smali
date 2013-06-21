.class public final Lname/kunes/android/launcher/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/launcher/a/h;
.implements Lname/kunes/android/launcher/a/o;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/a/e;->a:Landroid/app/Activity;

    const-string v0, ""

    iput-object v0, p0, Lname/kunes/android/launcher/a/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/a/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lname/kunes/android/launcher/c/e;

    iget-object v2, p0, Lname/kunes/android/launcher/a/e;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    const-string v2, ""

    invoke-virtual {v1, v0, p1, v2}, Lname/kunes/android/launcher/c/e;->a(IILjava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v0, p1, v2}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/e;->a:Landroid/app/Activity;

    const v1, 0x7f060141

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/e;->a:Landroid/app/Activity;

    const/16 v1, 0x4a

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/e;->a:Landroid/app/Activity;

    const v1, 0x7f060140

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Landroid/content/Intent;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
