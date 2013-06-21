.class final Lccc71/pmw/lib/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1006
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->d(Lccc71/pmw/lib/pmw_monitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/content/Context;Z)V

    .line 1009
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->a(Lccc71/pmw/lib/pmw_monitor;Z)V

    .line 1011
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    sget v1, Lccc71/pmw/lib/d;->ar:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1012
    sget v1, Lccc71/pmw/lib/c;->aM:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1014
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    .line 1015
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    .line 1028
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/content/Context;Z)V

    .line 1020
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->a(Lccc71/pmw/lib/pmw_monitor;Z)V

    .line 1022
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    sget v1, Lccc71/pmw/lib/d;->ar:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1023
    sget v1, Lccc71/pmw/lib/c;->aN:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1025
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    .line 1026
    iget-object v0, p0, Lccc71/pmw/lib/jd;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    goto :goto_0
.end method
