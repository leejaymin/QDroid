.class final Lccc71/pmw/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/b/u;


# direct methods
.method constructor <init>(Lccc71/pmw/b/u;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/b/w;->a:Lccc71/pmw/b/u;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lccc71/pmw/b/w;->a:Lccc71/pmw/b/u;

    invoke-static {v0}, Lccc71/pmw/b/u;->a(Lccc71/pmw/b/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 393
    :try_start_0
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
