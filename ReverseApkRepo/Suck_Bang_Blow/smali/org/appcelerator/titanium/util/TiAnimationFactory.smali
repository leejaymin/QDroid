.class public Lorg/appcelerator/titanium/util/TiAnimationFactory;
.super Ljava/lang/Object;
.source "TiAnimationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationFor(Ljava/lang/String;I)Lorg/appcelerator/titanium/util/TiAnimationPair;
    .locals 13
    .parameter "style"
    .parameter "duration"

    .prologue
    .line 20
    new-instance v9, Lorg/appcelerator/titanium/util/TiAnimationPair;

    invoke-direct {v9}, Lorg/appcelerator/titanium/util/TiAnimationPair;-><init>()V

    .line 21
    .local v9, a:Lorg/appcelerator/titanium/util/TiAnimationPair;
    const/4 v10, 0x1

    .line 23
    .local v10, needsDuration:Z
    const-string v0, "fade-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .end local p0
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 25
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v10

    .line 124
    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    :goto_0
    if-eqz v9, :cond_3

    .line 125
    iget-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 126
    if-eqz p0, :cond_0

    .line 127
    iget-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    :cond_0
    iget-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 131
    :cond_1
    iget-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 132
    if-eqz p0, :cond_2

    .line 133
    iget-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    .end local p0           #needsDuration:Z
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    :cond_2
    iget-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local p1
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    :cond_3
    return-object v9

    .line 26
    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    .restart local p1
    :cond_4
    const-string v0, "fade-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .end local p0           #style:Ljava/lang/String;
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 28
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v10

    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    goto :goto_0

    .line 29
    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    :cond_5
    const-string v0, "slide-from-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x4080

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 33
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v10

    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    goto :goto_0

    .line 36
    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    :cond_6
    const-string v0, "slide-from-top"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x4080

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 40
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v10

    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    goto/16 :goto_0

    .line 43
    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    :cond_7
    const-string v0, "slide-from-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 47
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x4080

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v10

    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    goto/16 :goto_0

    .line 50
    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    :cond_8
    const-string v0, "slide-from-bottom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f80

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 54
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v10

    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    goto/16 :goto_0

    .line 57
    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    :cond_9
    const-string v0, "scale-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 61
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v10

    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    goto/16 :goto_0

    .line 64
    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    :cond_a
    const-string v0, "wink-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    const/4 v10, 0x0

    .line 66
    div-int/lit8 p0, p1, 0x2

    .line 68
    .local p0, half:I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 71
    iget-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    div-int/lit8 v1, p0, 0x5

    add-int/2addr v1, p0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 72
    iget-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    .line 77
    iget-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    move p0, v10

    .line 78
    .end local v10           #needsDuration:Z
    .local p0, needsDuration:Z
    goto/16 :goto_0

    .restart local v10       #needsDuration:Z
    .local p0, style:Ljava/lang/String;
    :cond_b
    const-string v0, "headlines"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #style:Ljava/lang/String;
    if-eqz p0, :cond_c

    .line 79
    const/4 v11, 0x0

    .line 80
    .end local v10           #needsDuration:Z
    .local v11, needsDuration:Z
    div-int/lit8 v10, p1, 0x2

    .line 81
    .local v10, half:I
    div-int/lit8 v12, v10, 0x5

    .line 84
    .local v12, pause:I
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 85
    .local p0, as:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v0, t:Landroid/view/animation/Animation;
    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0           #t:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, -0x3bcc

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 91
    .restart local v0       #t:Landroid/view/animation/Animation;
    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #t:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 97
    .restart local v0       #t:Landroid/view/animation/Animation;
    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 100
    iput-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 101
    iget-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .end local p0           #as:Landroid/view/animation/AnimationSet;
    add-int v0, v10, v12

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 104
    .end local v0           #t:Landroid/view/animation/Animation;
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 106
    .restart local p0       #as:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 107
    .restart local v0       #t:Landroid/view/animation/Animation;
    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0           #t:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x4434

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 112
    .restart local v0       #t:Landroid/view/animation/Animation;
    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #t:Landroid/view/animation/Animation;
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 118
    .restart local v0       #t:Landroid/view/animation/Animation;
    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iput-object p0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    move p0, v11

    .end local v11           #needsDuration:Z
    .local p0, needsDuration:Z
    goto/16 :goto_0

    .end local v0           #t:Landroid/view/animation/Animation;
    .end local v12           #pause:I
    .end local p0           #needsDuration:Z
    .local v10, needsDuration:Z
    :cond_c
    move p0, v10

    .end local v10           #needsDuration:Z
    .restart local p0       #needsDuration:Z
    goto/16 :goto_0
.end method
