.class final Lccc71/pmw/lib/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bh;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bj;->a:Lccc71/pmw/lib/bh;

    .line 2858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2863
    iget-object v2, p0, Lccc71/pmw/lib/bj;->a:Lccc71/pmw/lib/bh;

    invoke-static {v2}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/bj;->a:Lccc71/pmw/lib/bh;

    invoke-static {v3}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v1, v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;ZZ)V

    .line 2864
    return-void

    :cond_0
    move v0, v1

    .line 2863
    goto :goto_0
.end method
