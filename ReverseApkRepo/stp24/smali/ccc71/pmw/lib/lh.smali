.class final Lccc71/pmw/lib/lh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/lh;->a:Lccc71/pmw/lib/pmw_settings;

    .line 4156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 4161
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4163
    iget-object v0, p0, Lccc71/pmw/lib/lh;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_settings;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4165
    :cond_0
    return-void
.end method
