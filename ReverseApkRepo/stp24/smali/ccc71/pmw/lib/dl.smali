.class final Lccc71/pmw/lib/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dl;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;
    .locals 1
    .parameter

    .prologue
    .line 1319
    iget-object v0, p0, Lccc71/pmw/lib/dl;->a:Lccc71/pmw/lib/pmw_backuplist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1324
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccc71/pmw/lib/dl;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1325
    sget v1, Lccc71/pmw/lib/g;->dC:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1326
    const v1, 0x1040013

    new-instance v2, Lccc71/pmw/lib/dm;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/dm;-><init>(Lccc71/pmw/lib/dl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1470
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1471
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1472
    return-void
.end method
