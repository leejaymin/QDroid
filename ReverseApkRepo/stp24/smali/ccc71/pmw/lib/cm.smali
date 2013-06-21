.class final Lccc71/pmw/lib/cm;
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
    iput-object p1, p0, Lccc71/pmw/lib/cm;->a:Lccc71/pmw/lib/pmw_applist;

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1694
    iget-object v1, p0, Lccc71/pmw/lib/cm;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1696
    iget-object v1, p0, Lccc71/pmw/lib/cm;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, p0, Lccc71/pmw/lib/cm;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1697
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1704
    :goto_0
    return-void

    .line 1701
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/cm;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, p0, Lccc71/pmw/lib/cm;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->g(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Z)V

    .line 1702
    iget-object v0, p0, Lccc71/pmw/lib/cm;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->h(Lccc71/pmw/lib/pmw_applist;)V

    goto :goto_0

    .line 1701
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
