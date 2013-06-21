.class public final Lname/kunes/android/launcher/a/a/g;
.super Lname/kunes/android/launcher/a/a/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/a/a/e;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/g;->c:Landroid/app/Activity;

    const-class v1, Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/g;->c:Landroid/app/Activity;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/g;->c:Landroid/app/Activity;

    const v1, 0x7f060045

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
