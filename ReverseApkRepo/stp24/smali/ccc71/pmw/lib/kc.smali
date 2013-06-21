.class final Lccc71/pmw/lib/kc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/kb;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/kb;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kc;->a:Lccc71/pmw/lib/kb;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lccc71/pmw/lib/kc;->a:Lccc71/pmw/lib/kb;

    invoke-static {v0}, Lccc71/pmw/lib/kb;->a(Lccc71/pmw/lib/kb;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lccc71/pmw/lib/kc;->a:Lccc71/pmw/lib/kb;

    invoke-static {v0}, Lccc71/pmw/lib/kb;->a(Lccc71/pmw/lib/kb;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->e()V

    .line 1108
    iget-object v0, p0, Lccc71/pmw/lib/kc;->a:Lccc71/pmw/lib/kb;

    invoke-static {v0}, Lccc71/pmw/lib/kb;->a(Lccc71/pmw/lib/kb;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->q(Lccc71/pmw/lib/pmw_process;)V

    .line 1110
    :cond_0
    return-void
.end method
