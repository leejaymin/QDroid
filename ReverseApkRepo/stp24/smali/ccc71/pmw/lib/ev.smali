.class final Lccc71/pmw/lib/ev;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ev;->a:Lccc71/pmw/lib/pmw_cpu;

    .line 909
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 914
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 918
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ev;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_cpu;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
