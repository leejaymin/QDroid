.class final Lccc71/pmw/lib/fy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_frequencies;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_frequencies;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fy;->a:Lccc71/pmw/lib/pmw_frequencies;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lccc71/pmw/lib/fy;->a:Lccc71/pmw/lib/pmw_frequencies;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_frequencies;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lccc71/pmw/lib/fy;->a:Lccc71/pmw/lib/pmw_frequencies;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_frequencies;->e()V

    .line 136
    iget-object v0, p0, Lccc71/pmw/lib/fy;->a:Lccc71/pmw/lib/pmw_frequencies;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_frequencies;->a(Lccc71/pmw/lib/pmw_frequencies;)V

    .line 138
    :cond_0
    return-void
.end method
