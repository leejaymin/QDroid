.class final Lccc71/pmw/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/b/u;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lccc71/pmw/b/u;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/b/x;->a:Lccc71/pmw/b/u;

    iput-object p2, p0, Lccc71/pmw/b/x;->b:Ljava/lang/String;

    iput p3, p0, Lccc71/pmw/b/x;->c:I

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lccc71/pmw/b/x;->a:Lccc71/pmw/b/u;

    invoke-static {v0}, Lccc71/pmw/b/u;->a(Lccc71/pmw/b/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 530
    :try_start_0
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lccc71/pmw/b/u;->l:Z

    if-nez v0, :cond_0

    .line 532
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/b/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 534
    iget v0, p0, Lccc71/pmw/b/x;->c:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 535
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    iget v2, p0, Lccc71/pmw/b/x;->c:I

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 528
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 537
    :cond_1
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
