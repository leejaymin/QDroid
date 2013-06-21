.class Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;
.super Lcom/chillingo/crystal/ui/skinning/SkinnedView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PulltabSkinnedView"
.end annotation


# instance fields
.field _frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

.field final synthetic this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;Lcom/chillingo/crystal/ui/theming/FrameItem;)V
    .locals 7

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    iput-object p8, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x4000

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->onMeasure(II)V

    return-void
.end method
