.class final Lname/kunes/android/launcher/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/launcher/a/h;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/a/c;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/a/c;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/k;->a:Lname/kunes/android/launcher/a/c;

    iput-object p2, p0, Lname/kunes/android/launcher/a/k;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/a/k;->a:Lname/kunes/android/launcher/a/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/c;->k()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lname/kunes/android/launcher/a/k;->b:Landroid/app/Activity;

    const-class v3, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lname/kunes/android/launcher/a/k;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/k;->a:Lname/kunes/android/launcher/a/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/a/k;->b:Landroid/app/Activity;

    iget-object v1, p0, Lname/kunes/android/launcher/a/k;->a:Lname/kunes/android/launcher/a/c;

    invoke-virtual {v1}, Lname/kunes/android/launcher/a/c;->k()I

    move-result v1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/g;->d(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/k;->b:Landroid/app/Activity;

    const v2, 0x7f06014a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/k;->a:Lname/kunes/android/launcher/a/c;

    iget-object v0, v0, Lname/kunes/android/launcher/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
