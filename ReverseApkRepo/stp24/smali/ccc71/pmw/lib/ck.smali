.class final Lccc71/pmw/lib/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ck;->a:Lccc71/pmw/lib/pmw_applist;

    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1494
    iget-object v0, p0, Lccc71/pmw/lib/ck;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lccc71/pmw/lib/ck;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_applist;->registerForContextMenu(Landroid/view/View;)V

    .line 1497
    iget-object v0, p0, Lccc71/pmw/lib/ck;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_applist;->openContextMenu(Landroid/view/View;)V

    .line 1506
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ck;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1502
    iget-object v0, p0, Lccc71/pmw/lib/ck;->a:Lccc71/pmw/lib/pmw_applist;

    sget-object v1, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/y;)V

    goto :goto_0

    .line 1504
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ck;->a:Lccc71/pmw/lib/pmw_applist;

    sget-object v1, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/y;)V

    goto :goto_0
.end method
