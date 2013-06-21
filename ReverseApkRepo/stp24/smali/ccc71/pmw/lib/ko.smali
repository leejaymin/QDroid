.class final Lccc71/pmw/lib/ko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/kn;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/kn;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ko;->a:Lccc71/pmw/lib/kn;

    iput-boolean p2, p0, Lccc71/pmw/lib/ko;->b:Z

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 339
    iget-boolean v0, p0, Lccc71/pmw/lib/ko;->b:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lccc71/pmw/lib/ko;->a:Lccc71/pmw/lib/kn;

    invoke-static {v0}, Lccc71/pmw/lib/kn;->a(Lccc71/pmw/lib/kn;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ko;->a:Lccc71/pmw/lib/kn;

    invoke-static {v1}, Lccc71/pmw/lib/kn;->a(Lccc71/pmw/lib/kn;)Lccc71/pmw/lib/pmw_process;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/ko;->a:Lccc71/pmw/lib/kn;

    invoke-static {v2}, Lccc71/pmw/lib/kn;->a(Lccc71/pmw/lib/kn;)Lccc71/pmw/lib/pmw_process;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->c(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ko;->a:Lccc71/pmw/lib/kn;

    invoke-static {v0}, Lccc71/pmw/lib/kn;->a(Lccc71/pmw/lib/kn;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ko;->a:Lccc71/pmw/lib/kn;

    invoke-static {v1}, Lccc71/pmw/lib/kn;->a(Lccc71/pmw/lib/kn;)Lccc71/pmw/lib/pmw_process;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/ko;->a:Lccc71/pmw/lib/kn;

    invoke-static {v2}, Lccc71/pmw/lib/kn;->a(Lccc71/pmw/lib/kn;)Lccc71/pmw/lib/pmw_process;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->c(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
