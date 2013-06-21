.class final Lccc71/bmw/lib/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/ak;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_history;

.field private final synthetic b:Lccc71/utils/ccc71_grid_view;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_history;Lccc71/utils/ccc71_grid_view;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    iput-object p2, p0, Lccc71/bmw/lib/ay;->b:Lccc71/utils/ccc71_grid_view;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 198
    return-void
.end method

.method public final a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v2, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Z)V

    .line 186
    if-eqz p2, :cond_2

    .line 187
    iget-object v0, p0, Lccc71/bmw/lib/ay;->b:Lccc71/utils/ccc71_grid_view;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2012/02/02|21:19:20|%/h|%|mV|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v3}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccc71/utils/ccc71_grid_view;->setText(ZLjava/lang/String;)V

    .line 191
    :goto_1
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lccc71/bmw/lib/ay;->b:Lccc71/utils/ccc71_grid_view;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_grid_view;->setVisibility(I)V

    .line 193
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/ay;->b:Lccc71/utils/ccc71_grid_view;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2012/02/02|21:19:20|mA|%|mV|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v3}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccc71/utils/ccc71_grid_view;->setText(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v0, p2, p3}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;J)V

    .line 206
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_history;->b(Lccc71/bmw/lib/bmw_history;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;I)V

    .line 211
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_history;->registerForContextMenu(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_history;->openContextMenu(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_history;->unregisterForContextMenu(Landroid/view/View;)V

    .line 215
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/ay;->a:Lccc71/bmw/lib/bmw_history;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;I)V

    goto :goto_0
.end method
