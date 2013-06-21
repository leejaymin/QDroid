.class final Lccc71/pmw/lib/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_frequencies;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_frequencies;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ga;->a:Lccc71/pmw/lib/pmw_frequencies;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-static {}, Lccc71/pmw/lib/pmw_frequencies;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_frequencies;->a(J)V

    .line 178
    iget-object v0, p0, Lccc71/pmw/lib/ga;->a:Lccc71/pmw/lib/pmw_frequencies;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_frequencies;->e()V

    .line 179
    return-void
.end method
