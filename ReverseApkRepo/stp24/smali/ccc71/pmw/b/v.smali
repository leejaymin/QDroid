.class final Lccc71/pmw/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/b/u;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/b/u;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/b/v;->a:Lccc71/pmw/b/u;

    iput-object p2, p0, Lccc71/pmw/b/v;->b:Landroid/content/Context;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lccc71/pmw/b/v;->a:Lccc71/pmw/b/u;

    invoke-static {v0}, Lccc71/pmw/b/u;->a(Lccc71/pmw/b/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 333
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lccc71/pmw/b/v;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/b/u;->a(Landroid/app/ProgressDialog;)V

    .line 334
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 335
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/b/v;->b:Landroid/content/Context;

    sget v3, Lccc71/pmw/lib/g;->cP:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 337
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v2, Lccc71/pmw/lib/c;->m:I

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 338
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/b/v;->b:Landroid/content/Context;

    sget v3, Lccc71/pmw/lib/g;->cQ:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 340
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 341
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 343
    invoke-static {}, Lccc71/pmw/b/u;->l()Landroid/app/ProgressDialog;

    move-result-object v0

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 344
    if-eqz v0, :cond_0

    .line 346
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 347
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_0
    monitor-exit v1

    .line 355
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 354
    :try_start_1
    const-string v2, "process_monitor_widget"

    const-string v3, "Failed to open SD analysis progress dialog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
