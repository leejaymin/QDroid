.class final Lccc71/pmw/lib/dv;
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
    iput-object p1, p0, Lccc71/pmw/lib/dv;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;
    .locals 1
    .parameter

    .prologue
    .line 1641
    iget-object v0, p0, Lccc71/pmw/lib/dv;->a:Lccc71/pmw/lib/pmw_backuplist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1646
    iget-object v0, p0, Lccc71/pmw/lib/dv;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backuplist;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1648
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_0

    .line 1649
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lccc71/pmw/lib/dv;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v3, Lccc71/pmw/lib/g;->cR:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lccc71/pmw/lib/dv;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v3, Lccc71/pmw/lib/g;->ea:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1651
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccc71/pmw/lib/dv;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1652
    new-instance v2, Lccc71/pmw/lib/dw;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/dw;-><init>(Lccc71/pmw/lib/dv;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1812
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1813
    return-void
.end method
