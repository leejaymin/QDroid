.class final Lccc71/pmw/lib/gk;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/gj;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gk;->a:Lccc71/pmw/lib/gj;

    .line 389
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/gk;->a:Lccc71/pmw/lib/gj;

    invoke-static {v0}, Lccc71/pmw/lib/gj;->a(Lccc71/pmw/lib/gj;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;)V

    const/4 v0, 0x0

    return-object v0
.end method
