.class final Lccc71/pmw/lib/im;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory_tweak;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory_tweak;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/im;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    iput-object p2, p0, Lccc71/pmw/lib/im;->b:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1
    new-instance v0, Lccc71/pmw/a/ar;

    invoke-direct {v0}, Lccc71/pmw/a/ar;-><init>()V

    iget-object v1, p0, Lccc71/pmw/lib/im;->b:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/im;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_memory_tweak;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/a/ar;->a(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lccc71/pmw/a/ar;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/im;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    iget-object v2, p0, Lccc71/pmw/lib/im;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lccc71/pmw/a/ar;->a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/im;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;)Lccc71/pmw/a/ac;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/im;->b:Ljava/lang/String;

    iput-object v1, v0, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/im;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Lccc71/pmw/a/ac;)V

    return-object v3
.end method
