.class public Lcom/jaynux/app/RandomRun;
.super Landroid/view/SurfaceView;
.source "RandomRun.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaynux/app/RandomRun$ImgThread;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SAMGUKJI RACE"


# instance fields
.field private mBGFarMoveX:I

.field private mButtonMain:Landroid/widget/Button;

.field private mButtonRetry:Landroid/widget/Button;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mMeterView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field private mTimerView:Landroid/widget/TextView;

.field private mTitleBG2:Landroid/graphics/Bitmap;

.field surfaceHeight:I

.field surfaceWidth:I

.field private thread:Lcom/jaynux/app/RandomRun$ImgThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 677
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I

    .line 681
    invoke-virtual {p0}, Lcom/jaynux/app/RandomRun;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 682
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 687
    invoke-virtual {p0}, Lcom/jaynux/app/RandomRun;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    new-instance v1, Lcom/jaynux/app/RandomRun$ImgThread;

    new-instance v2, Lcom/jaynux/app/RandomRun$1;

    invoke-direct {v2, p0}, Lcom/jaynux/app/RandomRun$1;-><init>(Lcom/jaynux/app/RandomRun;)V

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/jaynux/app/RandomRun$ImgThread;-><init>(Lcom/jaynux/app/RandomRun;Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    .line 725
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jaynux/app/RandomRun;->setFocusable(Z)V

    .line 726
    return-void
.end method

.method static synthetic access$0(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->mMeterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jaynux/app/RandomRun;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->mTitleBG2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jaynux/app/RandomRun;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/jaynux/app/RandomRun;->mTitleBG2:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/jaynux/app/RandomRun;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I

    return v0
.end method

.method static synthetic access$4(Lcom/jaynux/app/RandomRun;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput p1, p0, Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I

    return-void
.end method

.method static synthetic access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 672
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->mTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jaynux/app/RandomRun;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->mButtonRetry:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jaynux/app/RandomRun;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->mButtonMain:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public SetButtonMain(Landroid/widget/Button;)V
    .locals 0
    .parameter "_buttonRetry"

    .prologue
    .line 820
    iput-object p1, p0, Lcom/jaynux/app/RandomRun;->mButtonMain:Landroid/widget/Button;

    .line 822
    return-void
.end method

.method public SetButtonView(Landroid/widget/Button;)V
    .locals 0
    .parameter "_buttonRetry"

    .prologue
    .line 815
    iput-object p1, p0, Lcom/jaynux/app/RandomRun;->mButtonRetry:Landroid/widget/Button;

    .line 817
    return-void
.end method

.method public SetTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "textView"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/jaynux/app/RandomRun;->mTextView:Landroid/widget/TextView;

    .line 827
    return-void
.end method

.method public getThread()Lcom/jaynux/app/RandomRun$ImgThread;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 770
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public setMeterView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 798
    iput-object p1, p0, Lcom/jaynux/app/RandomRun;->mMeterView:Landroid/widget/TextView;

    .line 799
    return-void
.end method

.method public setSQLiteDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "arDb"

    .prologue
    .line 830
    iput-object p1, p0, Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 831
    return-void
.end method

.method public setTimerView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 805
    iput-object p1, p0, Lcom/jaynux/app/RandomRun;->mTimerView:Landroid/widget/TextView;

    .line 806
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 732
    iput p3, p0, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    .line 733
    iput p4, p0, Lcom/jaynux/app/RandomRun;->surfaceHeight:I

    .line 734
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x1

    .line 738
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->FIRST_START:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-nez v0, :cond_1

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    invoke-virtual {v0}, Lcom/jaynux/app/RandomRun$ImgThread;->DoResume()V

    .line 748
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 741
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    #setter for: Lcom/jaynux/app/RandomRun$ImgThread;->mPause:Z
    invoke-static {v0, v2}, Lcom/jaynux/app/RandomRun$ImgThread;->access$1(Lcom/jaynux/app/RandomRun$ImgThread;Z)V

    goto :goto_0

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v1, v0, Lcom/jaynux/app/RandomRun$ImgThread;->FIRST_START:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jaynux/app/RandomRun$ImgThread;->FIRST_START:I

    .line 745
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    invoke-virtual {v0, v2}, Lcom/jaynux/app/RandomRun$ImgThread;->setRunning(Z)V

    .line 746
    iget-object v0, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    invoke-virtual {v0}, Lcom/jaynux/app/RandomRun$ImgThread;->start()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 752
    iget-object v1, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v1, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v1, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v1, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-nez v1, :cond_2

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    invoke-virtual {v1}, Lcom/jaynux/app/RandomRun$ImgThread;->DoPause()V

    .line 765
    :cond_1
    return-void

    .line 755
    :cond_2
    const/4 v0, 0x1

    .line 756
    .local v0, retry:Z
    iget-object v1, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jaynux/app/RandomRun$ImgThread;->setRunning(Z)V

    .line 757
    :goto_0
    if-eqz v0, :cond_1

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/jaynux/app/RandomRun;->thread:Lcom/jaynux/app/RandomRun$ImgThread;

    invoke-virtual {v1}, Lcom/jaynux/app/RandomRun$ImgThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    const/4 v0, 0x0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    goto :goto_0
.end method
