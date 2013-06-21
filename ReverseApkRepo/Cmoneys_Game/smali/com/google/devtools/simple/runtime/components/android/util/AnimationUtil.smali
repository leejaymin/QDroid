.class public final Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "animation"

    .prologue
    const/16 v5, 0x1f40

    const/16 v4, 0xfa0

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const-string v0, "ScrollRightSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "ScrollRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {p0, v1, v4}, Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "ScrollRightFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 58
    :cond_3
    const-string v0, "ScrollLeftSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-static {p0, v2, v5}, Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 60
    :cond_4
    const-string v0, "ScrollLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    invoke-static {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 62
    :cond_5
    const-string v0, "ScrollLeftFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0
.end method

.method private static ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V
    .locals 12
    .parameter "view"
    .parameter "left"
    .parameter "speed"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x2

    .line 28
    if-eqz p1, :cond_0

    const/high16 v2, 0x3f80

    move v10, v2

    .line 29
    .local v10, sign:F
    :goto_0
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 30
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 31
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 33
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3f333333

    mul-float/2addr v2, v10

    const v3, -0x40cccccd

    mul-float v4, v10, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 36
    .local v0, move:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 37
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 38
    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 39
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 40
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    return-void

    .line 28
    .end local v0           #move:Landroid/view/animation/TranslateAnimation;
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    .end local v10           #sign:F
    :cond_0
    const/high16 v2, -0x4080

    move v10, v2

    goto :goto_0
.end method
