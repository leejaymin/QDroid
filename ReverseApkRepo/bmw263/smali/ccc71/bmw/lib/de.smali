.class final Lccc71/bmw/lib/de;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/dd;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/de;->a:Lccc71/bmw/lib/dd;

    .line 1292
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f7fffff

    .line 1296
    iget-object v0, p0, Lccc71/bmw/lib/de;->a:Lccc71/bmw/lib/dd;

    invoke-static {v0}, Lccc71/bmw/lib/dd;->a(Lccc71/bmw/lib/dd;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_status;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->a(Z)V

    .line 1300
    iget-object v0, p0, Lccc71/bmw/lib/de;->a:Lccc71/bmw/lib/dd;

    invoke-static {v0}, Lccc71/bmw/lib/dd;->a(Lccc71/bmw/lib/dd;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->b(Lccc71/bmw/lib/bmw_status;)V

    .line 1302
    iget-object v0, p0, Lccc71/bmw/lib/de;->a:Lccc71/bmw/lib/dd;

    invoke-static {v0}, Lccc71/bmw/lib/dd;->a(Lccc71/bmw/lib/dd;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->c(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    .line 1303
    iget-object v0, p0, Lccc71/bmw/lib/de;->a:Lccc71/bmw/lib/dd;

    invoke-static {v0}, Lccc71/bmw/lib/dd;->a(Lccc71/bmw/lib/dd;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->d(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lccc71/bmw/lib/de;->a:Lccc71/bmw/lib/dd;

    invoke-static {v0}, Lccc71/bmw/lib/dd;->a(Lccc71/bmw/lib/dd;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->d(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    goto :goto_0

    .line 1299
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
