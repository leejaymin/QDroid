.class final Lccc71/pmw/lib/iw;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/iw;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 812
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 817
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 818
    iget-object v0, p0, Lccc71/pmw/lib/iw;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {}, Lccc71/pmw/lib/pmw_monitor;->h()V

    .line 819
    return-void
.end method
