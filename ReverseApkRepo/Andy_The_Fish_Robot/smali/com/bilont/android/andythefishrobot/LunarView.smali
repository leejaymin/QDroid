.class Lcom/bilont/android/andythefishrobot/LunarView;
.super Landroid/view/SurfaceView;
.source "LunarView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;
    }
.end annotation


# static fields
.field private static final RNG:Ljava/util/Random;


# instance fields
.field db:Lcom/bilont/android/andythefishrobot/DBAdapter;

.field private mAd:Lcom/admob/android/ads/AdView;

.field private mContext:Landroid/content/Context;

.field private mDay:I

.field private mMonth:I

.field private mStatusText:Landroid/widget/TextView;

.field private mYear:I

.field private thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/bilont/android/andythefishrobot/LunarView;->RNG:Ljava/util/Random;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 1381
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1384
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1385
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1386
    invoke-virtual {p0, v3}, Lcom/bilont/android/andythefishrobot/LunarView;->setFocusableInTouchMode(Z)V

    .line 1388
    new-instance v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    new-instance v2, Lcom/bilont/android/andythefishrobot/LunarView$1;

    invoke-direct {v2, p0}, Lcom/bilont/android/andythefishrobot/LunarView$1;-><init>(Lcom/bilont/android/andythefishrobot/LunarView;)V

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;-><init>(Lcom/bilont/android/andythefishrobot/LunarView;Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    .line 1411
    invoke-virtual {p0, v3}, Lcom/bilont/android/andythefishrobot/LunarView;->setFocusable(Z)V

    .line 1412
    return-void
.end method

.method static synthetic access$0(Lcom/bilont/android/andythefishrobot/LunarView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1(Lcom/bilont/android/andythefishrobot/LunarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mYear:I

    return-void
.end method

.method static synthetic access$10(Lcom/bilont/android/andythefishrobot/LunarView;)Lcom/admob/android/ads/AdView;
    .locals 1
    .parameter

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mAd:Lcom/admob/android/ads/AdView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bilont/android/andythefishrobot/LunarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mMonth:I

    return-void
.end method

.method static synthetic access$3(Lcom/bilont/android/andythefishrobot/LunarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mDay:I

    return-void
.end method

.method static synthetic access$4()Ljava/util/Random;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/bilont/android/andythefishrobot/LunarView;->RNG:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$5(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/bilont/android/andythefishrobot/LunarView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mMonth:I

    return v0
.end method

.method static synthetic access$7(Lcom/bilont/android/andythefishrobot/LunarView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mDay:I

    return v0
.end method

.method static synthetic access$8(Lcom/bilont/android/andythefishrobot/LunarView;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mYear:I

    return v0
.end method

.method static synthetic access$9(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getThread()Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0, p1, p2}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0, p1, p2}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0, p1}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 1455
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->pause()V

    .line 1456
    :cond_0
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "textView"
    .parameter "adView"

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mStatusText:Landroid/widget/TextView;

    .line 1466
    iput-object p2, p0, Lcom/bilont/android/andythefishrobot/LunarView;->mAd:Lcom/admob/android/ads/AdView;

    .line 1467
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0, p3, p4}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setSurfaceSize(II)V

    .line 1472
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setRunning(Z)V

    .line 1482
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->start()V

    .line 1483
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView;->thread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->pause()V

    .line 1504
    return-void
.end method
