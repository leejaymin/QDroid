.class final Lccc71/pmw/lib/om;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/om;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 174
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1
    new-instance v0, Lccc71/pmw/a/at;

    iget-object v1, p0, Lccc71/pmw/lib/om;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v0, v1}, Lccc71/pmw/a/at;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lccc71/pmw/lib/om;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/a/at;->a(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v2
.end method
