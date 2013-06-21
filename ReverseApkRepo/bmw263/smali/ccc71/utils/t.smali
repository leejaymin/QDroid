.class final Lccc71/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/utils/ccc71_grid_view;


# direct methods
.method constructor <init>(Lccc71/utils/ccc71_grid_view;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/t;->a:Lccc71/utils/ccc71_grid_view;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lccc71/utils/t;->a:Lccc71/utils/ccc71_grid_view;

    invoke-static {v0}, Lccc71/utils/ccc71_grid_view;->a(Lccc71/utils/ccc71_grid_view;)Lccc71/utils/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lccc71/utils/t;->a:Lccc71/utils/ccc71_grid_view;

    invoke-static {v0}, Lccc71/utils/ccc71_grid_view;->a(Lccc71/utils/ccc71_grid_view;)Lccc71/utils/ak;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lccc71/utils/t;->a:Lccc71/utils/ccc71_grid_view;

    invoke-static {v2}, Lccc71/utils/ccc71_grid_view;->b(Lccc71/utils/ccc71_grid_view;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lccc71/utils/ak;->a(IZ)V

    .line 360
    :cond_0
    return-void
.end method
