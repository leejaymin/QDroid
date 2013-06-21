.class final Lccc71/pmw/lib/kj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    .line 239
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/kj;)Lccc71/pmw/lib/pmw_process;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 245
    iget-object v1, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v2, Lccc71/pmw/a/b;->a:Lccc71/pmw/a/b;

    if-ne v1, v2, :cond_3

    .line 247
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v2, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    sget v3, Lccc71/pmw/lib/g;->cW:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_process;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 255
    :cond_0
    invoke-static {}, Lccc71/pmw/lib/pmw_process;->i()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 256
    iget-object v1, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_process;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Landroid/content/pm/PackageManager;)V

    .line 257
    :cond_1
    new-instance v1, Lccc71/pmw/b/m;

    iget-object v2, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {}, Lccc71/pmw/lib/pmw_process;->i()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccc71/pmw/b/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 258
    iget-object v0, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Lccc71/pmw/b/m;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 296
    :goto_0
    return-void

    .line 262
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    sget v2, Lccc71/pmw/lib/g;->cU:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 264
    const v2, 0x1040013

    new-instance v3, Lccc71/pmw/lib/kk;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/kk;-><init>(Lccc71/pmw/lib/kj;Lccc71/pmw/a/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 275
    iget-object v0, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/g;->cT:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_process;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 282
    :cond_3
    iget-boolean v0, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/g;->fm:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_process;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    iget-object v0, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->finish()V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kj;->a:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/g;->fk:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_process;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
