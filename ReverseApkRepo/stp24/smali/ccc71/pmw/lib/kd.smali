.class final Lccc71/pmw/lib/kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kd;->a:Lccc71/pmw/lib/pmw_process;

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lccc71/pmw/lib/kd;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lccc71/pmw/lib/kd;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->e()V

    .line 1139
    iget-object v0, p0, Lccc71/pmw/lib/kd;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->q(Lccc71/pmw/lib/pmw_process;)V

    .line 1141
    :cond_0
    return-void
.end method
