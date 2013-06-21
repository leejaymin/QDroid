.class final Lccc71/bmw/lib/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_full_graph;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_full_graph;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ar;->a:Lccc71/bmw/lib/bmw_full_graph;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 368
    const-string v0, "battery_widget_monitor"

    const-string v1, "Loading previous history"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lccc71/bmw/lib/ar;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/av;->b(Landroid/app/Activity;)V

    .line 371
    iget-object v0, p0, Lccc71/bmw/lib/ar;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/av;->a(Landroid/app/Activity;)V

    .line 373
    iget-object v0, p0, Lccc71/bmw/lib/ar;->a:Lccc71/bmw/lib/bmw_full_graph;

    sget-object v1, Lccc71/bmw/lib/bmw_full_graph;->f:Landroid/os/Handler;

    invoke-static {v0, v1}, Lccc71/bmw/lib/bi;->a(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 374
    return-void
.end method
