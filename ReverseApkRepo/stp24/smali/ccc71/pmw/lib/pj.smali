.class final Lccc71/pmw/lib/pj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_terminal;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_terminal;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pj;->a:Lccc71/pmw/lib/pmw_terminal;

    .line 378
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lccc71/pmw/lib/pj;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->j(Lccc71/pmw/lib/pmw_terminal;)Lccc71/pmw/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 383
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received message with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lines"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lccc71/pmw/lib/pj;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_terminal;->a(Lccc71/pmw/lib/pmw_terminal;Ljava/util/ArrayList;)V

    .line 386
    return-void
.end method
