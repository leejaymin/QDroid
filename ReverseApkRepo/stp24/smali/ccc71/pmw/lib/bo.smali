.class final Lccc71/pmw/lib/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bn;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bn;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bo;->a:Lccc71/pmw/lib/bn;

    iput p2, p0, Lccc71/pmw/lib/bo;->b:I

    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1406
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object v0, p0, Lccc71/pmw/lib/bo;->a:Lccc71/pmw/lib/bn;

    invoke-static {v0}, Lccc71/pmw/lib/bn;->a(Lccc71/pmw/lib/bn;)Lccc71/pmw/lib/bl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    move v1, v2

    .line 1409
    :goto_0
    iget v3, p0, Lccc71/pmw/lib/bo;->b:I

    if-lt v1, v3, :cond_0

    .line 1418
    iget-object v0, p0, Lccc71/pmw/lib/bo;->a:Lccc71/pmw/lib/bn;

    invoke-static {v0}, Lccc71/pmw/lib/bn;->a(Lccc71/pmw/lib/bn;)Lccc71/pmw/lib/bl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1419
    return-void

    .line 1411
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1412
    iget-object v4, p0, Lccc71/pmw/lib/bo;->a:Lccc71/pmw/lib/bn;

    invoke-static {v4}, Lccc71/pmw/lib/bn;->a(Lccc71/pmw/lib/bn;)Lccc71/pmw/lib/bl;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1414
    iget-object v4, p0, Lccc71/pmw/lib/bo;->a:Lccc71/pmw/lib/bn;

    invoke-static {v4}, Lccc71/pmw/lib/bn;->a(Lccc71/pmw/lib/bn;)Lccc71/pmw/lib/bl;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1415
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1409
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
