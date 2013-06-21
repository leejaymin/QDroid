.class public Lccc71/pmw/pro/pmw_widget_graph_3x1;
.super Lccc71/pmw/pro/pmw_widget_graph_2x1;
.source "SourceFile"


# instance fields
.field protected final x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lccc71/pmw/pro/pmw_widget_graph_2x1;-><init>()V

    .line 8
    const/16 v0, 0xd8

    iput v0, p0, Lccc71/pmw/pro/pmw_widget_graph_3x1;->x:I

    .line 6
    return-void
.end method


# virtual methods
.method protected final a(Lccc71/pmw/lib/qm;Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    const/high16 v1, 0x4358

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lccc71/pmw/pro/pmw_widget_graph_3x1;->r:I

    .line 15
    const/high16 v1, 0x4290

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lccc71/pmw/pro/pmw_widget_graph_3x1;->s:I

    .line 17
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(Lccc71/pmw/lib/qm;Landroid/content/Context;I)V

    .line 18
    return-void
.end method
