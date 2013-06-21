.class final Lccc71/pmw/lib/le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sd;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/le;->a:Lccc71/pmw/lib/pmw_sd;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lccc71/pmw/lib/le;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/b/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lccc71/pmw/lib/le;->a:Lccc71/pmw/lib/pmw_sd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/le;->a:Lccc71/pmw/lib/pmw_sd;

    iget-object v1, p0, Lccc71/pmw/lib/le;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;)V

    goto :goto_0
.end method
