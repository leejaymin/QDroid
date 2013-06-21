.class final Lccc71/bmw/lib/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/eb;->a:Lccc71/bmw/lib/bmw_status;

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/eb;)Lccc71/bmw/lib/bmw_status;
    .locals 1
    .parameter

    .prologue
    .line 1256
    iget-object v0, p0, Lccc71/bmw/lib/eb;->a:Lccc71/bmw/lib/bmw_status;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1260
    const-string v0, "battery_widget_monitor"

    const-string v1, "Loading previous history"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lccc71/bmw/lib/eb;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/av;->b(Landroid/app/Activity;)V

    .line 1263
    iget-object v0, p0, Lccc71/bmw/lib/eb;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/av;->a(Landroid/app/Activity;)V

    .line 1265
    iget-object v0, p0, Lccc71/bmw/lib/eb;->a:Lccc71/bmw/lib/bmw_status;

    new-instance v1, Lccc71/bmw/lib/ec;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/ec;-><init>(Lccc71/bmw/lib/eb;)V

    invoke-static {v0, v1}, Lccc71/bmw/lib/bi;->a(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 1280
    return-void
.end method
