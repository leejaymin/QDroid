.class public Lname/kunes/android/launcher/activity/HomeParentActivity;
.super Lname/kunes/android/activity/DefaultActivity;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/activity/DefaultActivity;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/HomeParentActivity;->a:Ljava/util/Vector;

    return-void
.end method

.method private a(IILname/kunes/android/launcher/a/a;)V
    .locals 1

    invoke-virtual {p0, p2}, Lname/kunes/android/launcher/activity/HomeParentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p3, v0}, Lname/kunes/android/launcher/a/a;->a(Landroid/view/View;)V

    sget v0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    invoke-interface {p3, v0, p1}, Lname/kunes/android/launcher/a/a;->a(II)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/HomeParentActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(IILname/kunes/android/launcher/a/o;)V
    .locals 2

    invoke-static {p0, p2, p3}, Lname/kunes/android/a/f;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)V

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    invoke-virtual {v0, v1, p1}, Lname/kunes/android/launcher/c/e;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, v0}, Lname/kunes/android/a/f;->a(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    instance-of v0, p3, Lname/kunes/android/launcher/a/a;

    if-eqz v0, :cond_1

    check-cast p3, Lname/kunes/android/launcher/a/a;

    invoke-direct {p0, p1, p2, p3}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    const v0, 0x7f030002

    return v0
.end method

.method protected final c_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected f()I
    .locals 1

    const v0, 0x7f060042

    return v0
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f06004b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lname/kunes/android/activity/DefaultActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lname/kunes/android/launcher/service/SmsDeliveryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p0}, Lname/kunes/android/launcher/b/i;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lname/kunes/android/launcher/b/d;->a(Landroid/app/Activity;)V

    new-instance v0, Lname/kunes/android/launcher/m;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/m;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onDestroy()V

    invoke-static {p0}, Lname/kunes/android/launcher/b/i;->b(Landroid/app/Activity;)V

    invoke-static {p0}, Lname/kunes/android/launcher/b/d;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onPause()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/HomeParentActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lname/kunes/android/launcher/a/a;

    invoke-interface {v0}, Lname/kunes/android/launcher/a/a;->e()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    const v9, 0x7f090011

    const v8, 0x7f09000f

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onResume()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/HomeParentActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    new-instance v4, Lname/kunes/android/launcher/c/e;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->Q()Z

    move-result v5

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->P()Z

    move-result v6

    invoke-virtual {p0, v9}, Lname/kunes/android/launcher/activity/HomeParentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/HomeParentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/HomeParentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v6, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    move v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lname/kunes/android/launcher/a/a/b;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/a/b;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v9, v0}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/a;)V

    const v0, 0x7f090013

    new-instance v5, Lname/kunes/android/launcher/a/a/q;

    invoke-direct {v5, p0}, Lname/kunes/android/launcher/a/a/q;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0, v5}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/a;)V

    new-instance v0, Lname/kunes/android/launcher/a/a/j;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/a/j;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v8, v0}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/a;)V

    const/4 v0, 0x1

    invoke-virtual {v4, p0}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v1

    invoke-direct {p0, v0, v8, v1}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/o;)V

    const/4 v0, 0x3

    const v1, 0x7f09001b

    invoke-virtual {v4, p0}, Lname/kunes/android/launcher/c/e;->b(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/o;)V

    const v0, 0x7f09001c

    invoke-virtual {v4, p0}, Lname/kunes/android/launcher/c/e;->c(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/o;)V

    const/4 v0, 0x5

    const v1, 0x7f09001e

    invoke-virtual {v4, p0}, Lname/kunes/android/launcher/c/e;->d(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/o;)V

    const/4 v0, 0x6

    const v1, 0x7f09001f

    invoke-virtual {v4, p0}, Lname/kunes/android/launcher/c/e;->e(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/o;)V

    const/4 v0, 0x7

    const v1, 0x7f090021

    invoke-virtual {v4, p0}, Lname/kunes/android/launcher/c/e;->f(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/o;)V

    const v0, 0x7f090022

    invoke-virtual {v4, p0}, Lname/kunes/android/launcher/c/e;->g(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lname/kunes/android/launcher/activity/HomeParentActivity;->a(IILname/kunes/android/launcher/a/o;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/HomeParentActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lname/kunes/android/launcher/a/a;

    invoke-interface {v0}, Lname/kunes/android/launcher/a/a;->d_()V

    goto :goto_3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    const/16 v0, 0xe

    invoke-static {p0, v0}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    :goto_1
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {p0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lname/kunes/android/activity/DefaultActivity;->onWindowFocusChanged(Z)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method
