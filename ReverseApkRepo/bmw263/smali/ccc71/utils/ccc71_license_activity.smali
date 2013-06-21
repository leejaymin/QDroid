.class public Lccc71/utils/ccc71_license_activity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "remove_ads_id"

    sput-object v0, Lccc71/utils/ccc71_license_activity;->q:Ljava/lang/String;

    .line 18
    const-string v0, "markers_id"

    sput-object v0, Lccc71/utils/ccc71_license_activity;->r:Ljava/lang/String;

    .line 19
    const-string v0, "widgets_id"

    sput-object v0, Lccc71/utils/ccc71_license_activity;->s:Ljava/lang/String;

    .line 21
    const-string v0, "a14ce7d01076e08"

    sput-object v0, Lccc71/utils/ccc71_license_activity;->t:Ljava/lang/String;

    .line 22
    const-string v0, "market://details?id=ccc71.bmw.pro"

    sput-object v0, Lccc71/utils/ccc71_license_activity;->u:Ljava/lang/String;

    .line 23
    const-string v0, "market://details?id=ccc71.pmw"

    sput-object v0, Lccc71/utils/ccc71_license_activity;->v:Ljava/lang/String;

    .line 27
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transformer tf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "market://details?id=ccc71.bmw.pro.tf"

    sput-object v0, Lccc71/utils/ccc71_license_activity;->u:Ljava/lang/String;

    .line 15
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
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

    .line 98
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string v0, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v1, Lccc71/utils/ccc71_license_activity;->t:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/c;->d:I

    sget v3, Lccc71/bmw/lib/c;->e:I

    sget-object v5, Lccc71/utils/ccc71_license_activity;->u:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lccc71/a/a;->a(Landroid/app/Activity;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lccc71/utils/ccc71_license_activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    sget v1, Lccc71/bmw/lib/g;->cv:I

    invoke-virtual {p0, v1}, Lccc71/utils/ccc71_license_activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 47
    const v2, 0x104000a

    new-instance v3, Lccc71/utils/w;

    invoke-direct {v3, p0}, Lccc71/utils/w;-><init>(Lccc71/utils/ccc71_license_activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    invoke-static {}, Lccc71/utils/g;->a()V

    .line 118
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-static {p0}, Lccc71/a/a;->a(Landroid/app/Activity;)V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
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

    .line 84
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 85
    const-string v0, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    sget-object v1, Lccc71/utils/ccc71_license_activity;->t:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/c;->d:I

    sget v3, Lccc71/bmw/lib/c;->e:I

    sget-object v5, Lccc71/utils/ccc71_license_activity;->u:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lccc71/a/a;->a(Landroid/app/Activity;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
