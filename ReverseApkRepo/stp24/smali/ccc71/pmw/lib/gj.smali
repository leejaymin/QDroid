.class final Lccc71/pmw/lib/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gj;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/gj;)Lccc71/pmw/lib/pmw_logcat;
    .locals 1
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lccc71/pmw/lib/gj;->a:Lccc71/pmw/lib/pmw_logcat;

    return-object v0
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lccc71/pmw/lib/gj;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0, p2}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 384
    iget-object v0, p0, Lccc71/pmw/lib/gj;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;)Lccc71/a/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lccc71/pmw/lib/gj;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;)Lccc71/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/a/a/a/b;->a(Z)V

    .line 387
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/gj;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->b(Lccc71/pmw/lib/pmw_logcat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    new-instance v0, Lccc71/pmw/lib/gk;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gk;-><init>(Lccc71/pmw/lib/gj;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 398
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/gk;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 412
    :goto_0
    return-void

    .line 404
    :cond_1
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_logcat;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/gj;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->d(Lccc71/pmw/lib/pmw_logcat;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
