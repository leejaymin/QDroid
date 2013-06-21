.class final Lccc71/pmw/lib/kl;
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
    iput-object p1, p0, Lccc71/pmw/lib/kl;->a:Lccc71/pmw/lib/pmw_process;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/kl;)Lccc71/pmw/lib/pmw_process;
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lccc71/pmw/lib/kl;->a:Lccc71/pmw/lib/pmw_process;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccc71/pmw/lib/kl;->a:Lccc71/pmw/lib/pmw_process;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    sget v1, Lccc71/pmw/lib/g;->dq:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 306
    const v1, 0x1040013

    new-instance v2, Lccc71/pmw/lib/km;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/km;-><init>(Lccc71/pmw/lib/kl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 316
    return-void
.end method
