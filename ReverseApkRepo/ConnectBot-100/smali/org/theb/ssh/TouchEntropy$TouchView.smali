.class Lorg/theb/ssh/TouchEntropy$TouchView;
.super Landroid/view/View;
.source "TouchEntropy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/theb/ssh/TouchEntropy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchView"
.end annotation


# instance fields
.field private mFlipFlop:Z

.field mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mLastTime:J

.field mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/theb/ssh/TouchEntropy;


# direct methods
.method public constructor <init>(Lorg/theb/ssh/TouchEntropy;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "c"

    .prologue
    .line 46
    iput-object p1, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    .line 37
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mFlipFlop:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mLastTime:J

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    iget-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 43
    iget-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "c"

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/theb/ssh/TouchEntropy$TouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, prompt:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/high16 v2, 0x4059

    iget-object v4, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    iget-object v4, v4, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4034

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lorg/theb/ssh/TouchEntropy$TouchView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 53
    invoke-virtual {p0}, Lorg/theb/ssh/TouchEntropy$TouchView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v5, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 54
    iget-object v4, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 55
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 61
    .local v1, now:J
    iget-wide v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mLastTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    move v3, v7

    .line 88
    :goto_0
    return v3

    .line 64
    :cond_0
    iput-wide v1, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mLastTime:J

    .line 66
    const-string v3, "SSH"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Last time was "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mLastTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mFlipFlop:Z

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    iget-object v4, v3, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    and-int/lit16 v4, v4, 0xf0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    .line 76
    :goto_1
    iget-boolean v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mFlipFlop:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->mFlipFlop:Z

    .line 79
    iget-object v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    iget-object v3, v3, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 80
    iget-object v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    invoke-virtual {v3}, Lorg/theb/ssh/TouchEntropy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    iget-object v4, v4, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lorg/theb/ssh/TouchEntropy;->setResult(ILandroid/content/Intent;)V

    .line 83
    iget-object v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    invoke-virtual {v3}, Lorg/theb/ssh/TouchEntropy;->finish()V

    .line 86
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lorg/theb/ssh/TouchEntropy$TouchView;->invalidate()V

    move v3, v7

    .line 88
    goto :goto_0

    .line 74
    :cond_2
    iget-object v3, p0, Lorg/theb/ssh/TouchEntropy$TouchView;->this$0:Lorg/theb/ssh/TouchEntropy;

    iget-object v4, v3, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    and-int/lit16 v4, v4, 0xf0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v3, v7

    .line 76
    goto :goto_2
.end method
