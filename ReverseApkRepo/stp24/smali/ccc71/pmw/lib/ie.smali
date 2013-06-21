.class final Lccc71/pmw/lib/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory_tweak;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory_tweak;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ie;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lccc71/pmw/lib/ie;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 214
    new-instance v4, Lccc71/pmw/a/ar;

    invoke-direct {v4}, Lccc71/pmw/a/ar;-><init>()V

    .line 216
    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v0

    array-length v7, v0

    move v5, v6

    .line 217
    :goto_0
    if-lt v5, v7, :cond_0

    .line 366
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v0

    aget-object v0, v0, v5

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v0

    aget-object v0, v0, v5

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v0

    aget-object v0, v0, v5

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 223
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ie;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v1

    aget-object v1, v1, v5

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    .line 224
    invoke-virtual {v3}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 226
    invoke-virtual {v3, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 227
    if-eqz v3, :cond_2

    .line 229
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 230
    new-instance v0, Lccc71/pmw/lib/if;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lccc71/pmw/lib/if;-><init>(Lccc71/pmw/lib/ie;Landroid/os/Handler;Landroid/widget/TableLayout;Lccc71/pmw/a/ar;I)V

    .line 356
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 357
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_1
.end method
