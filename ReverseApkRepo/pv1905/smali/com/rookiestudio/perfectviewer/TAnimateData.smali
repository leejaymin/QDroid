.class public Lcom/rookiestudio/perfectviewer/TAnimateData;
.super Ljava/lang/Object;
.source "TAnimateData.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field public static Alpha_Cancel:Ljava/lang/reflect/Method; = null

.field public static Translate_Cancel:Ljava/lang/reflect/Method; = null

.field public static final esBounceIn:I = 0x3

.field public static final esBounceOut:I = 0x4

.field public static final esElasticIn:I = 0x5

.field public static final esElasticOut:I = 0x6

.field public static final esNone:I = 0x0

.field public static final esStrongIn:I = 0x1

.field public static final esStrongOut:I = 0x2


# instance fields
.field public AlphaObject:Landroid/view/animation/AlphaAnimation;

.field public AnimateAlpha:Z

.field public AnimateEnd:Z

.field public AnimateMove:Z

.field public Easing:I

.field public EffectDuration:I

.field public FromAlpha:I

.field public FromX:I

.field public FromY:I

.field public MoveObject:Landroid/view/animation/TranslateAnimation;

.field public Sprite:Lcom/rookiestudio/baseclass/TSprite;

.field public ToAlpha:I

.field public ToX:I

.field public ToY:I

.field public callback:Lcom/rookiestudio/baseclass/TAnimatorCallback;

.field private transformation:Landroid/view/animation/Transformation;

.field private values:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Alpha_Cancel:Ljava/lang/reflect/Method;

    .line 36
    sput-object v0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Translate_Cancel:Ljava/lang/reflect/Method;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/rookiestudio/baseclass/TSprite;)V
    .locals 2
    .parameter "S"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateMove:Z

    .line 24
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateAlpha:Z

    .line 25
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateEnd:Z

    .line 26
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 27
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Easing:I

    .line 28
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromX:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToX:I

    .line 29
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromY:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToY:I

    .line 30
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromAlpha:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToAlpha:I

    .line 31
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->EffectDuration:I

    .line 32
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    .line 33
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    .line 34
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->callback:Lcom/rookiestudio/baseclass/TAnimatorCallback;

    .line 37
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->transformation:Landroid/view/animation/Transformation;

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->values:[F

    .line 42
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 43
    return-void
.end method


# virtual methods
.method public AlphaEffect(IIII)V
    .locals 4
    .parameter "a1"
    .parameter "a2"
    .parameter "E"
    .parameter "D"

    .prologue
    const/4 v3, 0x0

    .line 69
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Easing:I

    .line 70
    iput p4, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->EffectDuration:I

    .line 71
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromAlpha:I

    .line 72
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToAlpha:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateAlpha:Z

    .line 74
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    .line 75
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 76
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 78
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 79
    return-void
.end method

.method public DoAction()V
    .locals 4

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateMove:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 84
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->values:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 85
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 86
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->values:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateAlpha:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 89
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    goto :goto_0
.end method

.method public MoveTo(IIIIII)V
    .locals 9
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"
    .parameter "E"
    .parameter "D"

    .prologue
    .line 46
    iput p5, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Easing:I

    .line 47
    iput p6, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->EffectDuration:I

    .line 48
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromX:I

    .line 49
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToX:I

    .line 50
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromY:I

    .line 51
    iput p4, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToY:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateMove:Z

    .line 53
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/4 v3, 0x0

    int-to-float v4, p2

    .line 54
    const/4 v5, 0x0

    int-to-float v6, p3

    const/4 v7, 0x0

    int-to-float v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 53
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    .line 55
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TAnimator;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 63
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 64
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 65
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->startNow()V

    .line 66
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TAnimator;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TAnimator;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public Stop()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateMove:Z

    if-eqz v0, :cond_4

    .line 95
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    if-lt v0, v1, :cond_0

    .line 97
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Translate_Cancel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveObject:Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :cond_0
    :goto_0
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromX:I

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToX:I

    if-eq v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToX:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 104
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->FromY:I

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToY:I

    if-eq v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToY:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 107
    :cond_2
    iput-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateEnd:Z

    .line 118
    :cond_3
    :goto_1
    return-void

    .line 108
    :cond_4
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateAlpha:Z

    if-eqz v0, :cond_3

    .line 109
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    if-lt v0, v1, :cond_5

    .line 111
    :try_start_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Alpha_Cancel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaObject:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->ToAlpha:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 116
    iput-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateEnd:Z

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateEnd:Z

    .line 124
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->callback:Lcom/rookiestudio/baseclass/TAnimatorCallback;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimateData;->callback:Lcom/rookiestudio/baseclass/TAnimatorCallback;

    invoke-interface {v0, p0}, Lcom/rookiestudio/baseclass/TAnimatorCallback;->onAnimationFinished(Lcom/rookiestudio/perfectviewer/TAnimateData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 136
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 140
    return-void
.end method
