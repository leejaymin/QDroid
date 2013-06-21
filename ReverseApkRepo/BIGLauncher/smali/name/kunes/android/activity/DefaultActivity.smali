.class public abstract Lname/kunes/android/activity/DefaultActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected abstract b_()I
.end method

.method protected abstract c_()I
.end method

.method protected abstract f()I
.end method

.method protected abstract g()I
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :try_start_0
    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->c_()I

    move-result v0

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/DefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x400

    new-instance v1, Lname/kunes/android/launcher/c/d;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/c/d;->W()Z

    move-result v0

    invoke-static {v0, p0}, Lname/kunes/android/b/f;->a(ZLandroid/app/Activity;)V

    invoke-static {p0}, Lname/kunes/android/launcher/a;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lname/kunes/android/launcher/g;->a(Landroid/content/Context;)V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->r()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lname/kunes/android/activity/DefaultActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/c/d;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/DefaultActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->b_()I

    move-result v0

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/DefaultActivity;->setContentView(I)V

    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->a()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->Z()I

    move-result v0

    invoke-static {v0, p0}, Lname/kunes/android/a/a;->a(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/DefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/activity/DefaultActivity;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/DefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
