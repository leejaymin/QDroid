.class public Lorg/tf/ui/UIHelpers;
.super Ljava/lang/Object;
.source "UIHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs animateBody(Landroid/view/View;ZI[I)V
    .locals 5
    .parameter "parentView"
    .parameter "in"
    .parameter "offset"
    .parameter "ids"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    const v3, 0x7f090004

    .line 118
    invoke-static {v2, v3}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v0

    .line 121
    .local v0, delay:I
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 129
    return-void

    .line 121
    :cond_0
    aget v1, p3, v3

    .line 125
    .local v1, id:I
    if-eqz p1, :cond_1

    const v4, 0x7f040006

    .line 122
    :goto_1
    invoke-static {p0, v1, v4, p2}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/view/View;III)I

    .line 127
    add-int/2addr p2, v0

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const v4, 0x7f040007

    goto :goto_1
.end method

.method public static animateHeadAndBody(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "layoutID"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/tf/ui/UIHelpers;->animateHeadAndBody(Landroid/app/Activity;IZ)V

    .line 133
    return-void
.end method

.method public static animateHeadAndBody(Landroid/app/Activity;IZ)V
    .locals 12
    .parameter "activity"
    .parameter "layoutID"
    .parameter "forceLoadAnimations"

    .prologue
    const/4 v11, 0x0

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 137
    .local v7, layout:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 138
    .local v3, childCount:I
    const/4 v1, 0x0

    .line 139
    .local v1, animationOffset:I
    const/4 v2, 0x0

    .line 142
    .local v2, child:I
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 143
    .local v6, head:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0c0001

    if-ne v9, v10, :cond_2

    .line 144
    const/4 v2, 0x1

    .line 145
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 146
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 147
    :cond_0
    const v9, 0x7f04000a

    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 149
    :cond_1
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v9

    long-to-int v1, v9

    .line 150
    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_2
    const v9, 0x7f090001

    invoke-static {p0, v9}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v4

    .line 154
    .local v4, delay:I
    const v9, 0x7f090002

    invoke-static {p0, v9}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v5

    .line 155
    .local v5, delayDecay:I
    :goto_0
    if-ne v2, v3, :cond_3

    .line 166
    return-void

    .line 156
    :cond_3
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 157
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 158
    .restart local v0       #animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    .line 159
    :cond_4
    const v9, 0x7f040003

    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 161
    :cond_5
    int-to-long v9, v1

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 162
    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    add-int/2addr v1, v4

    .line 164
    sub-int v9, v4, v5

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static flipToChild(Landroid/app/Activity;IIZ)V
    .locals 5
    .parameter "activity"
    .parameter "flipperID"
    .parameter "child"
    .parameter "animate"

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 170
    .local v0, flipper:Landroid/widget/ViewFlipper;
    const/4 v1, 0x0

    .line 171
    .local v1, in:Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 172
    .local v2, out:Landroid/view/animation/Animation;
    if-nez p3, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 174
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 178
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-virtual {v0, p2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 180
    if-nez p3, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 184
    :cond_1
    return-void
.end method

.method public static flipToChild(Landroid/widget/ViewFlipper;IZ)V
    .locals 3
    .parameter "flipper"
    .parameter "child"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, in:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 189
    .local v1, out:Landroid/view/animation/Animation;
    if-nez p2, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 192
    invoke-virtual {p0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 193
    invoke-virtual {p0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 196
    if-nez p2, :cond_1

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 200
    :cond_1
    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getInteger(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "arguments"

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .parameter "context"
    .parameter "fontPath"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static makeFullscreen(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    return-void
.end method

.method public static setText(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "viewID"
    .parameter "text"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "viewID"
    .parameter "text"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static setViewVisibility(Landroid/app/Activity;II)V
    .locals 1
    .parameter "activity"
    .parameter "viewID"
    .parameter "visibility"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public static startViewAnimation(Landroid/app/Activity;II)I
    .locals 1
    .parameter "activity"
    .parameter "viewID"
    .parameter "animationID"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    move-result v0

    return v0
.end method

.method public static startViewAnimation(Landroid/app/Activity;III)I
    .locals 6
    .parameter "activity"
    .parameter "viewID"
    .parameter "animationID"
    .parameter "offset"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    .line 110
    :cond_0
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 111
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v2, p3

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int p3, v2

    .line 112
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v2, p3

    goto :goto_0
.end method

.method public static startViewAnimation(Landroid/view/View;II)I
    .locals 1
    .parameter "parentView"
    .parameter "viewID"
    .parameter "animationID"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static startViewAnimation(Landroid/view/View;III)I
    .locals 4
    .parameter "parentView"
    .parameter "viewID"
    .parameter "animationID"
    .parameter "offset"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 99
    :goto_0
    return v2

    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 92
    .local v0, animation:Landroid/view/animation/Animation;
    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 93
    invoke-static {v2, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 97
    :cond_1
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 98
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v2, p3

    goto :goto_0
.end method
