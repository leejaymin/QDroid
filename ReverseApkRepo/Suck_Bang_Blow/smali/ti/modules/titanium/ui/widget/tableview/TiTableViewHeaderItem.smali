.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;
.super Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.source "TiTableViewHeaderItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TitaniamTableViewItem"


# instance fields
.field private rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 3
    .parameter "tiContext"

    .prologue
    const/4 v2, -0x1

    .line 72
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->handler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const/high16 v0, 0x4190

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMinimumHeight(I)V

    .line 77
    return-void
.end method


# virtual methods
.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 97
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    const/4 v1, 0x0

    sub-int v2, p5, p3

    invoke-virtual {v0, p2, v1, p4, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->layout(IIII)V

    .line 98
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->measureChildren(II)V

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 91
    .local v1, w:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 92
    .local v0, h:I
    invoke-static {v1, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 80
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 81
    return-void
.end method
