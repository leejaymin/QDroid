.class final Lccc71/pmw/lib/fs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_event_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_event_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fs;->a:Lccc71/pmw/lib/pmw_event_apps;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 555
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lccc71/pmw/lib/fv;

    .line 556
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lccc71/pmw/lib/fw;

    .line 558
    if-eqz p2, :cond_0

    .line 560
    iget-object v2, p0, Lccc71/pmw/lib/fs;->a:Lccc71/pmw/lib/pmw_event_apps;

    iget-object v1, v1, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    iget-object v0, v0, Lccc71/pmw/lib/fw;->d:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/lib/fs;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_event_apps;->e(Lccc71/pmw/lib/pmw_event_apps;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/fs;->a:Lccc71/pmw/lib/pmw_event_apps;

    iget-object v1, v1, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    iget-object v0, v0, Lccc71/pmw/lib/fw;->d:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/lib/fs;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_event_apps;->e(Lccc71/pmw/lib/pmw_event_apps;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
