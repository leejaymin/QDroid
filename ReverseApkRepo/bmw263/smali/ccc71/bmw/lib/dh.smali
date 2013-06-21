.class final Lccc71/bmw/lib/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dh;->a:Lccc71/bmw/lib/bmw_status;

    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 1352
    iget-object v0, p0, Lccc71/bmw/lib/dh;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lccc71/bmw/lib/dh;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_status;->registerForContextMenu(Landroid/view/View;)V

    .line 1355
    iget-object v0, p0, Lccc71/bmw/lib/dh;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_status;->openContextMenu(Landroid/view/View;)V

    .line 1356
    iget-object v0, p0, Lccc71/bmw/lib/dh;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_status;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1370
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1361
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v1, :cond_1

    .line 1362
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ac(Landroid/content/Context;)I

    move-result v0

    .line 1366
    :goto_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lccc71/bmw/lib/dh;->a:Lccc71/bmw/lib/bmw_status;

    const-class v3, Lccc71/bmw/lib/bmw_full_graph;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".gfx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1368
    iget-object v0, p0, Lccc71/bmw/lib/dh;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_status;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1364
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ae(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method
