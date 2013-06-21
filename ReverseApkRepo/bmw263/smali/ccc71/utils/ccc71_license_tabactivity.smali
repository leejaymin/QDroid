.class public Lccc71/utils/ccc71_license_tabactivity;
.super Landroid/app/TabActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/utils/ccc71_license_activity;->q:Ljava/lang/String;

    invoke-static {p0, v0}, Lccc71/utils/g;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 57
    const-string v0, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v1, Lccc71/utils/ccc71_license_activity;->t:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/c;->d:I

    sget v3, Lccc71/bmw/lib/c;->e:I

    sget-object v5, Lccc71/utils/ccc71_license_activity;->u:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lccc71/a/a;->a(Landroid/app/Activity;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 76
    invoke-static {}, Lccc71/utils/g;->a()V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lccc71/a/a;->a(Landroid/app/Activity;)V

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 21
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/utils/ccc71_license_activity;->q:Ljava/lang/String;

    invoke-static {p0, v0}, Lccc71/utils/g;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v0, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    sget-object v1, Lccc71/utils/ccc71_license_activity;->t:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/c;->d:I

    sget v3, Lccc71/bmw/lib/c;->e:I

    sget-object v5, Lccc71/utils/ccc71_license_activity;->u:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lccc71/a/a;->a(Landroid/app/Activity;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lccc71/utils/ccc71_license_tabactivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    sget v1, Lccc71/bmw/lib/g;->cv:I

    invoke-virtual {p0, v1}, Lccc71/utils/ccc71_license_tabactivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 37
    const v2, 0x104000a

    new-instance v3, Lccc71/utils/x;

    invoke-direct {v3, p0, p0}, Lccc71/utils/x;-><init>(Lccc71/utils/ccc71_license_tabactivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
