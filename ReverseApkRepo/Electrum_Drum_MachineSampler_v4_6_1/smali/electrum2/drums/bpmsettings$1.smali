.class Lelectrum2/drums/bpmsettings$1;
.super Ljava/lang/Object;
.source "bpmsettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/bpmsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/bpmsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/bpmsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "me"

    .prologue
    const/16 v8, 0x168

    const/16 v7, -0x5a

    const/4 v10, 0x1

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 218
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Lelectrum2/drums/bpmsettings;->OldY:F

    .line 220
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iput-boolean v10, v4, Lelectrum2/drums/bpmsettings;->starttracking:Z

    .line 222
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v4, v4, Lelectrum2/drums/bpmsettings;->shuffleknob:Landroid/widget/ImageView;

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 228
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-boolean v4, v4, Lelectrum2/drums/bpmsettings;->starttracking:Z

    if-eqz v4, :cond_4

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 235
    .local v0, newY:F
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget v4, v4, Lelectrum2/drums/bpmsettings;->OldY:F

    sub-float v3, v0, v4

    .line 237
    .local v3, ydiff:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 239
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget v5, v5, Lelectrum2/drums/bpmsettings;->Position:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lelectrum2/drums/bpmsettings;->Position:I

    .line 244
    :cond_1
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget v4, v4, Lelectrum2/drums/bpmsettings;->Position:I

    if-le v4, v8, :cond_2

    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iput v8, v4, Lelectrum2/drums/bpmsettings;->Position:I

    .line 245
    :cond_2
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget v4, v4, Lelectrum2/drums/bpmsettings;->Position:I

    if-ge v4, v7, :cond_3

    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iput v7, v4, Lelectrum2/drums/bpmsettings;->Position:I

    .line 248
    :cond_3
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iput v0, v4, Lelectrum2/drums/bpmsettings;->OldY:F

    .line 251
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    #calls: Lelectrum2/drums/bpmsettings;->SetVolumeAndLengthText()V
    invoke-static {v4}, Lelectrum2/drums/bpmsettings;->access$0(Lelectrum2/drums/bpmsettings;)V

    .line 253
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v4, v4, Lelectrum2/drums/bpmsettings;->shuffleknob:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 256
    .local v1, volknobsize:I
    move v2, v1

    .line 259
    .local v2, xrot:I
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    new-instance v5, Landroid/view/animation/RotateAnimation;

    iget-object v6, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget v6, v6, Lelectrum2/drums/bpmsettings;->OldPosition:I

    int-to-float v6, v6

    iget-object v7, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget v7, v7, Lelectrum2/drums/bpmsettings;->Position:I

    int-to-float v7, v7

    int-to-float v8, v2

    int-to-float v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v5, v4, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    .line 260
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v4, v4, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 261
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v4, v4, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v10}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 262
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v4, v4, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 264
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v4, v4, Lelectrum2/drums/bpmsettings;->shuffleknob:Landroid/widget/ImageView;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v5, v5, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-wide v4, v4, Lelectrum2/drums/bpmsettings;->shuffleval:D

    double-to-float v4, v4

    sput v4, Lelectrum2/drums/globalSounds;->shuffleamount:F

    .line 271
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget v5, v5, Lelectrum2/drums/bpmsettings;->Position:I

    iput v5, v4, Lelectrum2/drums/bpmsettings;->OldPosition:I

    .line 279
    .end local v0           #newY:F
    .end local v1           #volknobsize:I
    .end local v2           #xrot:I
    .end local v3           #ydiff:F
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_5

    .line 281
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lelectrum2/drums/bpmsettings;->starttracking:Z

    .line 283
    iget-object v4, p0, Lelectrum2/drums/bpmsettings$1;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v4, v4, Lelectrum2/drums/bpmsettings;->shuffleknob:Landroid/widget/ImageView;

    const/high16 v5, 0x7f02

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    :cond_5
    return v10
.end method
