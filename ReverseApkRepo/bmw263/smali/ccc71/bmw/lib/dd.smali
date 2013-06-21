.class final Lccc71/bmw/lib/dd;
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
    iput-object p1, p0, Lccc71/bmw/lib/dd;->a:Lccc71/bmw/lib/bmw_status;

    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/dd;)Lccc71/bmw/lib/bmw_status;
    .locals 1
    .parameter

    .prologue
    .line 1283
    iget-object v0, p0, Lccc71/bmw/lib/dd;->a:Lccc71/bmw/lib/bmw_status;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1287
    const-string v0, "battery_widget_monitor"

    const-string v1, "Loading next history"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lccc71/bmw/lib/dd;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/av;->b(Landroid/app/Activity;)V

    .line 1290
    iget-object v0, p0, Lccc71/bmw/lib/dd;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/av;->a(Landroid/app/Activity;)V

    .line 1292
    iget-object v0, p0, Lccc71/bmw/lib/dd;->a:Lccc71/bmw/lib/bmw_status;

    new-instance v1, Lccc71/bmw/lib/de;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/de;-><init>(Lccc71/bmw/lib/dd;)V

    invoke-static {v0, v1}, Lccc71/bmw/lib/bi;->b(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 1307
    return-void
.end method
