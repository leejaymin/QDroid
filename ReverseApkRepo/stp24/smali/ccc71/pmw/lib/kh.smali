.class final Lccc71/pmw/lib/kh;
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
    iput-object p1, p0, Lccc71/pmw/lib/kh;->a:Lccc71/pmw/lib/pmw_process;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/kh;)Lccc71/pmw/lib/pmw_process;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lccc71/pmw/lib/kh;->a:Lccc71/pmw/lib/pmw_process;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 222
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lccc71/pmw/lib/kh;->a:Lccc71/pmw/lib/pmw_process;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lccc71/pmw/lib/kh;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/b/q;->g(Lccc71/pmw/b/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lccc71/pmw/lib/g;->fg:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    const v1, 0x1040013

    new-instance v2, Lccc71/pmw/lib/ki;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/ki;-><init>(Lccc71/pmw/lib/kh;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 236
    return-void

    .line 223
    :cond_0
    sget v0, Lccc71/pmw/lib/g;->fj:I

    goto :goto_0
.end method
