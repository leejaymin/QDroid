.class public Lcom/scoreloop/client/android/ui/framework/TabView;
.super Lcom/scoreloop/client/android/ui/framework/SegmentedView;
.source "TabView.java"


# instance fields
.field private final res2:[[I

.field private final res3:[[I

.field private final res4:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/TabView;->res2:[[I

    .line 36
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/TabView;->res3:[[I

    .line 41
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/TabView;->res4:[[I

    .line 53
    return-void

    .line 33
    :array_0
    .array-data 0x4
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 36
    :array_2
    .array-data 0x4
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 41
    :array_5
    .array-data 0x4
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private updateHighlight(I)V
    .locals 9
    .parameter "segment"

    .prologue
    .line 78
    const/4 v4, 0x0

    check-cast v4, [[I

    .line 79
    .local v4, res:[[I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabView;->getChildCount()I

    move-result v1

    .line 80
    .local v1, count:I
    packed-switch v1, :pswitch_data_0

    .line 82
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported number of tabs"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :pswitch_0
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/framework/TabView;->res2:[[I

    .line 93
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 94
    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/framework/TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, child:Landroid/widget/TextView;
    aget-object v5, v4, p1

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 99
    .local v3, r:Landroid/content/res/Resources;
    if-ne v2, p1, :cond_0

    .line 100
    const v5, 0x7f070013

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const v5, 0x7f0a0008

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f0a0009

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v7, 0x7f0a000a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const v8, 0x7f070014

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v0           #child:Landroid/widget/TextView;
    .end local v2           #i:I
    .end local v3           #r:Landroid/content/res/Resources;
    :pswitch_1
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/framework/TabView;->res3:[[I

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/framework/TabView;->res4:[[I

    goto :goto_0

    .line 105
    .restart local v0       #child:Landroid/widget/TextView;
    .restart local v2       #i:I
    .restart local v3       #r:Landroid/content/res/Resources;
    :cond_0
    const v5, 0x7f070011

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    const v5, 0x7f0a0005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f0a0006

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v7, 0x7f0a0007

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const v8, 0x7f070012

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 111
    .end local v0           #child:Landroid/widget/TextView;
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected prepareSelection()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/TabView;->switchToSegment(I)V

    .line 60
    :cond_0
    return-void
.end method

.method protected setSegmentEnabled(IZ)V
    .locals 2
    .parameter "segment"
    .parameter "enabled"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    return-void
.end method

.method public switchToSegment(I)V
    .locals 1
    .parameter "segment"

    .prologue
    .line 70
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/TabView;->selectedSegment:I

    if-ne p1, v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/TabView;->updateHighlight(I)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/TabView;->setSegment(I)V

    goto :goto_0
.end method
