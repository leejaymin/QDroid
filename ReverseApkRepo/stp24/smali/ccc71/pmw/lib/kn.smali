.class final Lccc71/pmw/lib/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kn;->a:Lccc71/pmw/lib/pmw_process;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/kn;)Lccc71/pmw/lib/pmw_process;
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lccc71/pmw/lib/kn;->a:Lccc71/pmw/lib/pmw_process;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lccc71/pmw/lib/kn;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lccc71/pmw/lib/kn;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_process;->registerForContextMenu(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lccc71/pmw/lib/kn;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_process;->openContextMenu(Landroid/view/View;)V

    .line 348
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/kn;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/b/q;->g(Lccc71/pmw/b/p;)Z

    move-result v1

    .line 332
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lccc71/pmw/lib/kn;->a:Lccc71/pmw/lib/pmw_process;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    if-eqz v1, :cond_1

    sget v0, Lccc71/pmw/lib/g;->en:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    const v2, 0x1040013

    new-instance v3, Lccc71/pmw/lib/ko;

    invoke-direct {v3, p0, v1}, Lccc71/pmw/lib/ko;-><init>(Lccc71/pmw/lib/kn;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 333
    :cond_1
    sget v0, Lccc71/pmw/lib/g;->em:I

    goto :goto_1
.end method
