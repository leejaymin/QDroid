.class public Lname/kunes/android/launcher/a/a/k;
.super Lname/kunes/android/launcher/a/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/a/a/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    const-class v1, Lname/kunes/android/launcher/activity/MessagesActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method

.method public final bridge synthetic a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lname/kunes/android/launcher/a/a/a;->a(II)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lname/kunes/android/launcher/a/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f060072

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f060038

    goto :goto_0
.end method

.method public final bridge synthetic d_()V
    .locals 0

    invoke-super {p0}, Lname/kunes/android/launcher/a/a/a;->d_()V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-super {p0}, Lname/kunes/android/launcher/a/a/a;->e()V

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/a/k;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/a/a/k;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method final e_()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/c/i;->a(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method final f_()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lname/kunes/android/c/i;->a:Landroid/net/Uri;

    return-object v0
.end method

.method final g_()V
    .locals 3

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    iget-boolean v0, p0, Lname/kunes/android/launcher/a/a/k;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    invoke-static {v1, v0}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/a/a/k;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/k;->c:Landroid/app/Activity;

    const v1, 0x7f060071

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v0}, Lname/kunes/android/launcher/a/j;->a(Lname/kunes/android/launcher/a/a;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
