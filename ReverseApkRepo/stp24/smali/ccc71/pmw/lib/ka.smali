.class final Lccc71/pmw/lib/ka;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/jz;

.field private final synthetic b:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/jz;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ka;->a:Lccc71/pmw/lib/jz;

    iput-object p2, p0, Lccc71/pmw/lib/ka;->b:Landroid/content/pm/ApplicationInfo;

    .line 617
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 622
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 624
    iget-object v0, p0, Lccc71/pmw/lib/ka;->a:Lccc71/pmw/lib/jz;

    invoke-static {v0}, Lccc71/pmw/lib/jz;->a(Lccc71/pmw/lib/jz;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ka;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/ka;->a:Lccc71/pmw/lib/jz;

    invoke-static {v2}, Lccc71/pmw/lib/jz;->a(Lccc71/pmw/lib/jz;)Lccc71/pmw/lib/pmw_process;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->c(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 625
    return-void
.end method
