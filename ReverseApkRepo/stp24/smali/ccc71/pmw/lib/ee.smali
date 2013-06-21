.class final Lccc71/pmw/lib/ee;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ed;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ed;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ee;->a:Lccc71/pmw/lib/ed;

    .line 937
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1
    new-instance v0, Lccc71/pmw/b/q;

    iget-object v1, p0, Lccc71/pmw/lib/ee;->a:Lccc71/pmw/lib/ed;

    invoke-static {v1}, Lccc71/pmw/lib/ed;->a(Lccc71/pmw/lib/ed;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v5}, Lccc71/pmw/b/q;->a(ZZ)V

    const-string v1, "/system/xbin/virtuous_oc"

    invoke-virtual {v0, v1}, Lccc71/pmw/b/q;->a(Ljava/lang/String;)Lccc71/pmw/b/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kill "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "/system/xbin/virtuous_oc &\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    return-object v2
.end method
