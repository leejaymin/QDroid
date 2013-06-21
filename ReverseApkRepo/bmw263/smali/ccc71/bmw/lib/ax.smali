.class final Lccc71/bmw/lib/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/ak;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_history;

.field private final synthetic b:Lccc71/utils/ccc71_list_view;

.field private final synthetic c:Lccc71/utils/ccc71_grid_view;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_history;Lccc71/utils/ccc71_list_view;Lccc71/utils/ccc71_grid_view;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ax;->a:Lccc71/bmw/lib/bmw_history;

    iput-object p2, p0, Lccc71/bmw/lib/ax;->b:Lccc71/utils/ccc71_list_view;

    iput-object p3, p0, Lccc71/bmw/lib/ax;->c:Lccc71/utils/ccc71_grid_view;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public final a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 155
    iget-object v0, p0, Lccc71/bmw/lib/ax;->a:Lccc71/bmw/lib/bmw_history;

    iget-object v2, p0, Lccc71/bmw/lib/ax;->b:Lccc71/utils/ccc71_list_view;

    iget-boolean v2, v2, Lccc71/utils/ccc71_list_view;->a:Z

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Z)V

    .line 156
    iget-object v2, p0, Lccc71/bmw/lib/ax;->b:Lccc71/utils/ccc71_list_view;

    iget-object v0, p0, Lccc71/bmw/lib/ax;->b:Lccc71/utils/ccc71_list_view;

    iget-boolean v0, v0, Lccc71/utils/ccc71_list_view;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lccc71/utils/ccc71_list_view;->a:Z

    .line 158
    iget-object v0, p0, Lccc71/bmw/lib/ax;->b:Lccc71/utils/ccc71_list_view;

    iget-boolean v0, v0, Lccc71/utils/ccc71_list_view;->a:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lccc71/bmw/lib/ax;->c:Lccc71/utils/ccc71_grid_view;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2012/02/02|21:19:20|%/h|%|mV|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/bmw/lib/ax;->a:Lccc71/bmw/lib/bmw_history;

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

    .line 163
    :goto_1
    iget-object v0, p0, Lccc71/bmw/lib/ax;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lccc71/bmw/lib/ax;->c:Lccc71/utils/ccc71_grid_view;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_grid_view;->setVisibility(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/ax;->b:Lccc71/utils/ccc71_list_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_list_view;->b()V

    .line 167
    return-void

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/ax;->c:Lccc71/utils/ccc71_grid_view;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2012/02/02|21:19:20|mA|%|mV|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/bmw/lib/ax;->a:Lccc71/bmw/lib/bmw_history;

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
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    return-void
.end method
