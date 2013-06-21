.class final Lccc71/pmw/lib/da;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/da;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1955
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1960
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1962
    iget-object v0, p0, Lccc71/pmw/lib/da;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backuplist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    :goto_0
    return-void

    .line 1965
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/da;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->q(Lccc71/pmw/lib/pmw_backuplist;)V

    goto :goto_0
.end method
