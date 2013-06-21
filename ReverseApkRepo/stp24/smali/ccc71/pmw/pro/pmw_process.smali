.class public Lccc71/pmw/pro/pmw_process;
.super Lccc71/pmw/lib/pmw_process;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_process;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0}, Lccc71/pmw/pro/pmw_process;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/pro/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lccc71/pmw/pro/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050341

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 19
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 20
    const v2, 0x104000a

    new-instance v3, Lccc71/pmw/pro/h;

    invoke-direct {v3, p0, p0}, Lccc71/pmw/pro/h;-><init>(Lccc71/pmw/pro/pmw_process;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_process;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
