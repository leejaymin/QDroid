.class public final Lname/kunes/android/launcher/a/a/h;
.super Lname/kunes/android/launcher/a/a/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/a/a/e;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/h;->c:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/h;->c:Landroid/app/Activity;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/h;->c:Landroid/app/Activity;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lname/kunes/android/launcher/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
