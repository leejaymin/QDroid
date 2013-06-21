.class public Lname/kunes/android/launcher/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/launcher/a/d;
.implements Lname/kunes/android/launcher/a/h;
.implements Lname/kunes/android/launcher/a/o;


# instance fields
.field protected final a:Landroid/app/Activity;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "functionality-screen-goto"

    invoke-direct {p0, p1, v0}, Lname/kunes/android/launcher/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/launcher/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "functionality-screen-goto"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lname/kunes/android/launcher/a/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "functionality-screen-goto"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "screen_id"

    sget v4, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lname/kunes/android/launcher/a/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lname/kunes/android/launcher/a/h;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/a/k;

    invoke-direct {v0, p0, p1}, Lname/kunes/android/launcher/a/k;-><init>(Lname/kunes/android/launcher/a/c;Landroid/app/Activity;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/c;->j()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/c/e;

    iget-object v1, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/c;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/c/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lname/kunes/android/launcher/a/b/a;

    iget-object v2, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lname/kunes/android/launcher/a/b/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/a/b/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    const v1, 0x7f060149

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/c;->k()I

    move-result v4

    invoke-static {v3, v4}, Lname/kunes/android/launcher/a/g;->d(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    const/16 v1, 0x4f

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    const v1, 0x7f060148

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    const-class v2, Lname/kunes/android/launcher/activity/ScreensPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected j()Landroid/content/Intent;
    .locals 4

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/c;->k()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    sget v0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    if-ne v1, v0, :cond_0

    const-class v0, Lname/kunes/android/launcher/activity/HomeActivity;

    :goto_0
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "screen_id"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v2

    :cond_0
    const-class v0, Lname/kunes/android/launcher/activity/EightScreenActivity;

    goto :goto_0
.end method

.method protected final k()I
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/a/c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screen_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/g;->a(Landroid/app/Activity;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/g;->b(Landroid/app/Activity;I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    goto :goto_0

    :cond_2
    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    invoke-static {v0, v1}, Lname/kunes/a/d;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/c;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lname/kunes/android/launcher/a/g;->c(Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    goto :goto_0
.end method
