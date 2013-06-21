.class final Lccc71/utils/u;
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
    iput-object p1, p0, Lccc71/utils/u;->a:Lccc71/utils/ccc71_grid_view;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lccc71/utils/u;->a:Lccc71/utils/ccc71_grid_view;

    invoke-static {v0}, Lccc71/utils/ccc71_grid_view;->a(Lccc71/utils/ccc71_grid_view;)Lccc71/utils/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lccc71/utils/u;->a:Lccc71/utils/ccc71_grid_view;

    invoke-static {v0}, Lccc71/utils/ccc71_grid_view;->a(Lccc71/utils/ccc71_grid_view;)Lccc71/utils/ak;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lccc71/utils/ak;->a(I)V

    .line 370
    :cond_0
    return-void
.end method
