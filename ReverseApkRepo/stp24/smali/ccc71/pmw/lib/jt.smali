.class final Lccc71/pmw/lib/jt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jt;->a:Lccc71/pmw/lib/pmw_process;

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1578
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1581
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    .line 1582
    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1584
    if-eqz p2, :cond_0

    .line 1586
    iget-object v2, p0, Lccc71/pmw/lib/jt;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v3, p0, Lccc71/pmw/lib/jt;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_process;->d(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1592
    :goto_0
    return-void

    .line 1590
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/jt;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v3, p0, Lccc71/pmw/lib/jt;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_process;->d(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
