.class final Lccc71/pmw/lib/kk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/kj;

.field private final synthetic b:Lccc71/pmw/a/a;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/kj;Lccc71/pmw/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kk;->a:Lccc71/pmw/lib/kj;

    iput-object p2, p0, Lccc71/pmw/lib/kk;->b:Lccc71/pmw/a/a;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lccc71/pmw/lib/kk;->a:Lccc71/pmw/lib/kj;

    invoke-static {v0}, Lccc71/pmw/lib/kj;->a(Lccc71/pmw/lib/kj;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/kk;->b:Lccc71/pmw/a/a;

    iget-object v1, v1, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/kk;->a:Lccc71/pmw/lib/kj;

    invoke-static {v2}, Lccc71/pmw/lib/kj;->a(Lccc71/pmw/lib/kj;)Lccc71/pmw/lib/pmw_process;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->b(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 270
    return-void
.end method
