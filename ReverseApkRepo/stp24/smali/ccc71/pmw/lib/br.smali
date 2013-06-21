.class final Lccc71/pmw/lib/br;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/widget/TableLayout;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/widget/TableLayout;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/br;->a:Landroid/widget/TableLayout;

    iput-object p2, p0, Lccc71/pmw/lib/br;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lccc71/pmw/lib/br;->c:Landroid/os/Handler;

    .line 416
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 421
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 423
    iget-object v0, p0, Lccc71/pmw/lib/br;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v6

    .line 424
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget-object v0, p0, Lccc71/pmw/lib/br;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 426
    iget-object v7, p0, Lccc71/pmw/lib/br;->c:Landroid/os/Handler;

    new-instance v0, Lccc71/pmw/lib/bs;

    iget-object v3, p0, Lccc71/pmw/lib/br;->b:Ljava/util/ArrayList;

    iget-object v5, p0, Lccc71/pmw/lib/br;->a:Landroid/widget/TableLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/lib/bs;-><init>(Lccc71/pmw/lib/br;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/TableLayout;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method
