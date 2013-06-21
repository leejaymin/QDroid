.class final Lccc71/pmw/lib/fz;
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
    iput-object p1, p0, Lccc71/pmw/lib/fz;->a:Lccc71/pmw/lib/pmw_frequencies;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    invoke-static {}, Lccc71/pmw/lib/pmw_frequencies;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    invoke-static {}, Lccc71/pmw/lib/pmw_frequencies;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/lib/pmw_frequencies;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-static {}, Lccc71/pmw/lib/pmw_frequencies;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_frequencies;->a(J)V

    .line 166
    iget-object v0, p0, Lccc71/pmw/lib/fz;->a:Lccc71/pmw/lib/pmw_frequencies;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_frequencies;->e()V

    .line 167
    return-void
.end method
