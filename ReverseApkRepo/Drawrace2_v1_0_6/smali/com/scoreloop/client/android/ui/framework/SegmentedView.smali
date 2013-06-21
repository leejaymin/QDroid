.class public abstract Lcom/scoreloop/client/android/ui/framework/SegmentedView;
.super Landroid/widget/LinearLayout;
.source "SegmentedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public oldSelectedSegment:I

.field private onSegmentClickListener:Landroid/view/View$OnClickListener;

.field protected selectedSegment:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    .line 34
    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->oldSelectedSegment:I

    .line 38
    return-void
.end method


# virtual methods
.method protected allowsReselection()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedSegment()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    return v0
.end method

.method public getSelectedSegmentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->getChildCount()I

    move-result v0

    .line 55
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 57
    iget v2, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->allowsReselection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->switchToSegment(I)V

    .line 59
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->onSegmentClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->onSegmentClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 66
    :cond_1
    return-void

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected prepareSelection()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public prepareUsage()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->requestLayout()V

    .line 75
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->getChildCount()I

    move-result v0

    .line 76
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->prepareSelection()V

    .line 81
    return-void
.end method

.method public setOnSegmentClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->onSegmentClickListener:Landroid/view/View$OnClickListener;

    .line 85
    return-void
.end method

.method protected setSegment(I)V
    .locals 3
    .parameter "segment"

    .prologue
    const/4 v2, -0x1

    .line 88
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    if-eq v0, v2, :cond_0

    .line 89
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->setSegmentEnabled(IZ)V

    .line 91
    :cond_0
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->oldSelectedSegment:I

    .line 92
    iput p1, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    .line 93
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    if-eq v0, v2, :cond_1

    .line 94
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->selectedSegment:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->setSegmentEnabled(IZ)V

    .line 96
    :cond_1
    return-void
.end method

.method protected abstract setSegmentEnabled(IZ)V
.end method

.method public switchToSegment(I)V
    .locals 0
    .parameter "segment"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;->setSegment(I)V

    .line 102
    return-void
.end method
