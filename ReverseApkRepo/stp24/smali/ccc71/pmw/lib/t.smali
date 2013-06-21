.class final Lccc71/pmw/lib/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/at_build;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at_build;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/t;->a:Lccc71/pmw/lib/at_build;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/t;)Lccc71/pmw/lib/at_build;
    .locals 1
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lccc71/pmw/lib/t;->a:Lccc71/pmw/lib/at_build;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x104

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/b;

    .line 455
    iget-boolean v1, v0, Lccc71/pmw/b/b;->b:Z

    if-eqz v1, :cond_0

    .line 457
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccc71/pmw/lib/t;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lccc71/pmw/lib/g;->dh:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 458
    sget v2, Lccc71/pmw/lib/g;->df:I

    new-instance v3, Lccc71/pmw/lib/u;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/u;-><init>(Lccc71/pmw/lib/t;Lccc71/pmw/b/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 469
    sget v2, Lccc71/pmw/lib/g;->dl:I

    new-instance v3, Lccc71/pmw/lib/v;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/v;-><init>(Lccc71/pmw/lib/t;Lccc71/pmw/b/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 505
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccc71/pmw/lib/t;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lccc71/pmw/lib/g;->dg:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 485
    const v2, 0x104000a

    new-instance v3, Lccc71/pmw/lib/w;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/w;-><init>(Lccc71/pmw/lib/t;Lccc71/pmw/b/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
