.class Lcom/jaynux/app/RandomRun$ImgThread;
.super Ljava/lang/Thread;
.source "RandomRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/RandomRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImgThread"
.end annotation


# static fields
.field public static final STATE_LOSE:I = 0x1

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAY:I = 0x0

.field public static final STATE_RESUME:I = 0x4

.field public static final STATE_RUNNING:I = 0x3

.field public static final STATE_START:I = -0x1


# instance fields
.field BGmove:I

.field CENTER:I

.field DIENUM:I

.field final DISTANCE:I

.field public FIRST_START:I

.field public LASTRANK:I

.field final PARTICIPATION:I

.field final RACETIME:I

.field final TITLE:I

.field final WIN:I

.field final _ID:I

.field backWidth:I

.field private cnt:I

.field horse_size:I

.field horses:Lcom/jaynux/app/Horses;

.field imgDownHeight:I

.field mContext:Landroid/content/Context;

.field private mCursorCondition:Landroid/database/Cursor;

.field mEndMeter:I

.field private mHandler:Landroid/os/Handler;

.field private mImgBack:Landroid/graphics/Bitmap;

.field mNowMeter:I

.field private mPause:Z

.field private mRaceResult:Ljava/lang/String;

.field mRes:Landroid/content/res/Resources;

.field private mRun:Z

.field public mState:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTaskIntervalInMillis:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerLimit:I

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTimerValue:Ljava/lang/String;

.field playerNum:I

.field private settingBundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/jaynux/app/RandomRun;

.field xBGCENTER:I

.field xpos:I

.field ypos:I


# direct methods
.method public constructor <init>(Lcom/jaynux/app/RandomRun;Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .parameter
    .parameter "surfaceHolder"
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    iput-object p1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    .line 102
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->_ID:I

    .line 38
    iput v4, p0, Lcom/jaynux/app/RandomRun$ImgThread;->TITLE:I

    .line 39
    const/4 v2, 0x2

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->PARTICIPATION:I

    .line 40
    const/4 v2, 0x3

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->WIN:I

    .line 41
    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->DISTANCE:I

    .line 42
    const/4 v2, 0x5

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->RACETIME:I

    .line 47
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->FIRST_START:I

    .line 50
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->LASTRANK:I

    .line 55
    iput-boolean v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mRun:Z

    .line 56
    iput-boolean v4, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mPause:Z

    .line 64
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->cnt:I

    .line 74
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    .line 75
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    .line 76
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->backWidth:I

    .line 77
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    .line 78
    iput v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->ypos:I

    .line 79
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    .line 80
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->BGmove:I

    .line 81
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    .line 83
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    .line 88
    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->DIENUM:I

    .line 94
    iput-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    .line 95
    iput-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    .line 97
    iput v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTaskIntervalInMillis:I

    .line 98
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerLimit:I

    .line 100
    const-string v2, "0:00"

    iput-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerValue:Ljava/lang/String;

    .line 105
    iput v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    .line 107
    const-string v2, ""

    iput-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 113
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mRes:Landroid/content/res/Resources;

    .line 114
    iget-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mRes:Landroid/content/res/Resources;

    const/high16 v3, 0x7f02

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    .line 115
    iget-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f020006

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, mImgDownBack:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 118
    .local v1, yBack:I
    iget-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->backWidth:I

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    .line 121
    iget v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    .line 122
    iget v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->ypos:I

    .line 124
    iget-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    .line 128
    iput-object p3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mContext:Landroid/content/Context;

    .line 129
    new-instance v2, Lcom/jaynux/app/Horses;

    iget-object v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/jaynux/app/Horses;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    .line 132
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    .line 134
    invoke-direct {p0}, Lcom/jaynux/app/RandomRun$ImgThread;->setInitialGameState()V

    return-void
.end method

.method static synthetic access$0(Lcom/jaynux/app/RandomRun$ImgThread;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/jaynux/app/RandomRun$ImgThread;->doCountDown()V

    return-void
.end method

.method static synthetic access$1(Lcom/jaynux/app/RandomRun$ImgThread;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mPause:Z

    return-void
.end method

.method private doCountDown()V
    .locals 15

    .prologue
    .line 275
    iget v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerLimit:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerLimit:I

    .line 277
    iget-object v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v10, v10, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v11, p0, Lcom/jaynux/app/RandomRun$ImgThread;->LASTRANK:I

    aget-object v10, v10, v11

    iget v10, v10, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iput v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mNowMeter:I

    .line 278
    iget v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mNowMeter:I

    iget v11, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    if-le v10, v11, :cond_0

    .line 279
    iget v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    iput v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mNowMeter:I

    .line 283
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "000000"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerLimit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, timerLimit:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 285
    .local v3, lenth:I
    add-int/lit8 v10, v3, -0x2

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, milis:Ljava/lang/String;
    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, s:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    div-int/lit16 v2, v10, 0xe10

    .line 288
    .local v2, hour:I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    rem-int/lit16 v10, v10, 0xe10

    div-int/lit8 v5, v10, 0x3c

    .line 289
    .local v5, min:I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    rem-int/lit8 v8, v10, 0x3c

    .line 290
    .local v8, sec:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\uc2dc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\ubd84:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\ucd08"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v2           #hour:I
    .end local v3           #lenth:I
    .end local v4           #milis:Ljava/lang/String;
    .end local v5           #min:I
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #sec:I
    .end local v9           #timerLimit:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 297
    .local v6, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, b:Landroid/os/Bundle;
    const-string v10, "timeinfo"

    iget-object v11, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerValue:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v10, "endmeterinfo"

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v10, "nowmeterinfo"

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mNowMeter:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mNowMeter:I

    iget v11, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    if-ge v10, v11, :cond_1

    .line 312
    new-instance v10, Lcom/jaynux/app/RandomRun$ImgThread$1;

    invoke-direct {v10, p0}, Lcom/jaynux/app/RandomRun$ImgThread$1;-><init>(Lcom/jaynux/app/RandomRun$ImgThread;)V

    iput-object v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    .line 318
    iget-object v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    iget-object v11, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    iget v12, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTaskIntervalInMillis:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 325
    :cond_1
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 326
    iget-object v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    return-void

    .line 291
    .end local v0           #b:Landroid/os/Bundle;
    .end local v6           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 292
    .local v1, e1:Ljava/lang/Exception;
    const-string v10, "SAMGUKJI RACE"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "doCountDown threw "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 162
    iget v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 163
    invoke-direct {p0, p1}, Lcom/jaynux/app/RandomRun$ImgThread;->doDrawRunning(Landroid/graphics/Canvas;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mTitleBG2:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$1(Lcom/jaynux/app/RandomRun;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mRes:Landroid/content/res/Resources;

    const/high16 v2, 0x7f02

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/jaynux/app/RandomRun;->mTitleBG2:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/jaynux/app/RandomRun;->access$2(Lcom/jaynux/app/RandomRun;Landroid/graphics/Bitmap;)V

    .line 168
    :cond_3
    invoke-direct {p0, p1}, Lcom/jaynux/app/RandomRun$ImgThread;->doDrawPlay(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private doDrawPlay(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mTitleBG2:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$1(Lcom/jaynux/app/RandomRun;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    return-void
.end method

.method private doDrawRunning(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 176
    const/4 v0, 0x1

    .line 186
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 189
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I
    invoke-static {v5}, Lcom/jaynux/app/RandomRun;->access$3(Lcom/jaynux/app/RandomRun;)I

    move-result v6

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->BGmove:I

    sub-int/2addr v6, v7

    #setter for: Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I
    invoke-static {v5, v6}, Lcom/jaynux/app/RandomRun;->access$4(Lcom/jaynux/app/RandomRun;I)V

    .line 192
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I
    invoke-static {v6}, Lcom/jaynux/app/RandomRun;->access$3(Lcom/jaynux/app/RandomRun;)I

    move-result v6

    neg-int v6, v6

    sub-int v3, v5, v6

    .line 195
    .local v3, newFarX:I
    if-gtz v3, :cond_1

    .line 196
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #setter for: Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I
    invoke-static {v5, v11}, Lcom/jaynux/app/RandomRun;->access$4(Lcom/jaynux/app/RandomRun;I)V

    .line 198
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I
    invoke-static {v6}, Lcom/jaynux/app/RandomRun;->access$3(Lcom/jaynux/app/RandomRun;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    :goto_0
    iget v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->cnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->cnt:I

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    if-lt v1, v5, :cond_2

    .line 262
    .end local v1           #i:I
    .end local v3           #newFarX:I
    :cond_0
    const/4 v0, 0x0

    .line 263
    return-void

    .line 202
    .restart local v3       #newFarX:I
    :cond_1
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mBGFarMoveX:I
    invoke-static {v6}, Lcom/jaynux/app/RandomRun;->access$3(Lcom/jaynux/app/RandomRun;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mImgBack:Landroid/graphics/Bitmap;

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 209
    .restart local v1       #i:I
    :cond_2
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    if-ge v5, v6, :cond_5

    .line 210
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    .line 229
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/jaynux/app/Horses$Specification;->obstableFlag:Z

    if-eqz v5, :cond_4

    .line 230
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/jaynux/app/Horses$Specification;->setShowDrawble()V

    .line 231
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    rem-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    add-int/lit8 v6, v6, 0x5a

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->ypos:I

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    add-int/lit16 v8, v8, 0xbe

    iget v9, p0, Lcom/jaynux/app/RandomRun$ImgThread;->ypos:I

    iget v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    mul-int/2addr v10, v1

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    rem-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->DIENUM:I

    iget-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/jaynux/app/Horses$Specification;->DAMAGE:I

    rsub-int/lit8 v7, v7, 0xc

    mul-int/2addr v6, v7

    if-le v5, v6, :cond_4

    .line 235
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/jaynux/app/Horses$Specification;->setDieDrawble()V

    .line 236
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iput-boolean v11, v5, Lcom/jaynux/app/Horses$Specification;->obstableFlag:Z

    .line 241
    :cond_4
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    rem-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->ypos:I

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    add-int/lit8 v8, v8, 0x64

    iget v9, p0, Lcom/jaynux/app/RandomRun$ImgThread;->ypos:I

    iget v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horse_size:I

    mul-int/2addr v10, v1

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    rem-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v5, v5, Lcom/jaynux/app/RandomRun;->surfaceHeight:I

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    sub-int v2, v5, v6

    .line 246
    .local v2, mini_y:I
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    rem-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v6, v6, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    div-int/2addr v6, v7

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    mul-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v8, v8, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    iget v9, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    div-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v9, v9, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    div-int/2addr v8, v9

    iget v9, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    div-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    iget v9, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    mul-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v2

    iget v10, p0, Lcom/jaynux/app/RandomRun$ImgThread;->imgDownHeight:I

    div-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    rem-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 249
    const/4 v4, 0x0

    .local v4, s:I
    :goto_3
    iget v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    if-lt v4, v5, :cond_9

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 211
    .end local v2           #mini_y:I
    .end local v4           #s:I
    :cond_5
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    if-lt v5, v6, :cond_6

    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    iget-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v7, v7, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_6

    .line 212
    iget v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    aget-object v6, v6, v7

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    .line 214
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->mCurrentSpeed:I

    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->BGmove:I

    goto/16 :goto_2

    .line 216
    :cond_6
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    iget-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v7, v7, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_3

    .line 217
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    iget-object v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v7, v7, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    iget v8, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xBGCENTER:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    .line 218
    iget v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v6, v6, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    add-int/lit8 v6, v6, -0x64

    if-le v5, v6, :cond_7

    .line 219
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v5, v5, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    add-int/lit8 v5, v5, -0x64

    iput v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    .line 222
    :cond_7
    iget v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->xpos:I

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    iget v6, v6, Lcom/jaynux/app/RandomRun;->surfaceWidth:I

    add-int/lit8 v6, v6, -0x64

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v5

    if-nez v5, :cond_8

    .line 224
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerLimit:I

    invoke-virtual {v5, v6}, Lcom/jaynux/app/Horses$Specification;->setStopWatch(I)V

    .line 226
    :cond_8
    iput v11, p0, Lcom/jaynux/app/RandomRun$ImgThread;->BGmove:I

    goto/16 :goto_2

    .line 250
    .restart local v2       #mini_y:I
    .restart local v4       #s:I
    :cond_9
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    if-ge v5, v6, :cond_a

    .line 251
    iput v4, p0, Lcom/jaynux/app/RandomRun$ImgThread;->CENTER:I

    .line 253
    :cond_a
    iget-object v5, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v5, v5, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    iget v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->LASTRANK:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget-object v6, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    if-le v5, v6, :cond_b

    .line 255
    iput v4, p0, Lcom/jaynux/app/RandomRun$ImgThread;->LASTRANK:I

    .line 249
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method private setInitialGameState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    .line 142
    iput v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mNowMeter:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    .line 145
    iput v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mNowMeter:I

    .line 147
    iput v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerLimit:I

    .line 149
    const-string v0, "0:00"

    iput-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerValue:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public DoPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    if-lt v0, v1, :cond_0

    .line 332
    iput-boolean v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mPause:Z

    .line 333
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/jaynux/app/Horses$Specification;->mPause:Z

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized DoResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 336
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    if-lt v0, v1, :cond_1

    .line 339
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mPause:Z

    .line 340
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/jaynux/app/RandomRun$ImgThread;->setGameState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_0
    monitor-exit p0

    return-void

    .line 337
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jaynux/app/Horses$Specification;->mPause:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getGameState()I
    .locals 2

    .prologue
    .line 587
    iget-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 588
    :try_start_0
    iget v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    monitor-exit v1

    return v0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 24

    .prologue
    .line 347
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mRun:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 580
    return-void

    .line 349
    :cond_0
    const/4 v5, 0x0

    .line 353
    .local v5, c:Landroid/graphics/Canvas;
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 356
    new-instance v20, Lcom/jaynux/app/RandomRun$ImgThread$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jaynux/app/RandomRun$ImgThread$2;-><init>(Lcom/jaynux/app/RandomRun$ImgThread;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mTaskIntervalInMillis:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 368
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5

    .line 371
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/jaynux/app/RandomRun$ImgThread;->doDraw(Landroid/graphics/Canvas;)V

    .line 373
    const-wide/16 v20, 0x1

    invoke-static/range {v20 .. v21}, Lcom/jaynux/app/RandomRun$ImgThread;->sleep(J)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jaynux/app/Horses;->NUMBER:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 379
    const-string v20, "SAMGUKJI RACE"

    const-string v21, "mHandler message ~~"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 383
    .local v13, msg:Landroid/os/Message;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v8, v0, :cond_5

    .line 543
    new-instance v20, Lcom/jaynux/app/Horses;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/jaynux/app/Horses;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jaynux/app/Horses;->setSettingValue(Landroid/os/Bundle;)V

    .line 546
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 548
    .local v4, b:Landroid/os/Bundle;
    const-string v20, "text"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v20, "STATE_LOSE"

    const-string v21, "1"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    .line 554
    const-string v20, "meter"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    .line 560
    invoke-virtual {v13, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 568
    .end local v4           #b:Landroid/os/Bundle;
    .end local v8           #i:I
    .end local v13           #msg:Landroid/os/Message;
    :cond_2
    if-eqz v5, :cond_3

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 348
    .end local v5           #c:Landroid/graphics/Canvas;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mPause:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 574
    const-wide/16 v20, 0x64

    :try_start_1
    invoke-static/range {v20 .. v21}, Lcom/jaynux/app/RandomRun$ImgThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 575
    :catch_0
    move-exception v6

    .line 577
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 365
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v5       #c:Landroid/graphics/Canvas;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 565
    :catch_1
    move-exception v6

    .line 566
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    if-eqz v5, :cond_3

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 384
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v8       #i:I
    .restart local v13       #msg:Landroid/os/Message;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, -0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Lcom/jaynux/app/Horses$Specification;->stop()V

    .line 385
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v9, v0, :cond_6

    .line 383
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 386
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jaynux/app/Horses$Specification;->RANK:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_8

    .line 388
    const-string v14, ""

    .line 389
    .local v14, panalty:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_b

    .line 390
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "000000"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 391
    .local v19, timerLimit:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 392
    .local v10, lenth:I
    add-int/lit8 v20, v10, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 393
    .local v11, milis:Ljava/lang/String;
    const/16 v20, 0x0

    add-int/lit8 v21, v10, -0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 394
    .local v16, s:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v7, v0, 0xe10

    .line 395
    .local v7, hour:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v20, v0

    div-int/lit8 v12, v20, 0x3c

    .line 396
    .local v12, min:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    rem-int/lit8 v17, v20, 0x3c

    .line 397
    .local v17, sec:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\uc2dc:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ubd84:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ucd08"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 398
    .local v18, time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "first"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "first"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 400
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ub4f1 : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 401
    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 402
    const-string v21, "Panalty : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "first"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 403
    const-string v21, "Time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "select _id, title, participation, win, distance, racetime from notes where title=\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 406
    invoke-virtual/range {v20 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-nez v20, :cond_9

    .line 409
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v15, row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v20, "participation"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v20, "win"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 385
    .end local v7           #hour:I
    .end local v10           #lenth:I
    .end local v11           #milis:Ljava/lang/String;
    .end local v12           #min:I
    .end local v14           #panalty:Ljava/lang/String;
    .end local v15           #row:Landroid/content/ContentValues;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sec:I
    .end local v18           #time:Ljava/lang/String;
    .end local v19           #timerLimit:Ljava/lang/String;
    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 418
    .restart local v7       #hour:I
    .restart local v10       #lenth:I
    .restart local v11       #milis:Ljava/lang/String;
    .restart local v12       #min:I
    .restart local v14       #panalty:Ljava/lang/String;
    .restart local v16       #s:Ljava/lang/String;
    .restart local v17       #sec:I
    .restart local v18       #time:Ljava/lang/String;
    .restart local v19       #timerLimit:Ljava/lang/String;
    :cond_9
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .restart local v15       #row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v20, "participation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v20, "win"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "title = \'"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 567
    .end local v7           #hour:I
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v10           #lenth:I
    .end local v11           #milis:Ljava/lang/String;
    .end local v12           #min:I
    .end local v13           #msg:Landroid/os/Message;
    .end local v14           #panalty:Ljava/lang/String;
    .end local v15           #row:Landroid/content/ContentValues;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sec:I
    .end local v18           #time:Ljava/lang/String;
    .end local v19           #timerLimit:Ljava/lang/String;
    :catchall_0
    move-exception v20

    .line 568
    if-eqz v5, :cond_a

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 571
    :cond_a
    throw v20

    .line 427
    .restart local v8       #i:I
    .restart local v9       #j:I
    .restart local v13       #msg:Landroid/os/Message;
    .restart local v14       #panalty:Ljava/lang/String;
    :cond_b
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_e

    .line 428
    :try_start_5
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "000000"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 429
    .restart local v19       #timerLimit:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 430
    .restart local v10       #lenth:I
    add-int/lit8 v20, v10, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 431
    .restart local v11       #milis:Ljava/lang/String;
    const/16 v20, 0x0

    add-int/lit8 v21, v10, -0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 432
    .restart local v16       #s:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v7, v0, 0xe10

    .line 433
    .restart local v7       #hour:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v20, v0

    div-int/lit8 v12, v20, 0x3c

    .line 434
    .restart local v12       #min:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    rem-int/lit8 v17, v20, 0x3c

    .line 435
    .restart local v17       #sec:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\uc2dc:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ubd84:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ucd08"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 436
    .restart local v18       #time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "second"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "second"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 438
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ub4f1 : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 439
    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 440
    const-string v21, "Panalty : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "second"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 441
    const-string v21, "Time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "select _id, title, participation, win, distance, racetime from notes where title=\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 444
    invoke-virtual/range {v20 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-nez v20, :cond_d

    .line 447
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .restart local v15       #row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v20, "participation"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    const-string v20, "win"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_5

    .line 456
    .end local v15           #row:Landroid/content/ContentValues;
    :cond_d
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .restart local v15       #row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v20, "participation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v20, "win"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "title = \'"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 464
    .end local v7           #hour:I
    .end local v10           #lenth:I
    .end local v11           #milis:Ljava/lang/String;
    .end local v12           #min:I
    .end local v15           #row:Landroid/content/ContentValues;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sec:I
    .end local v18           #time:Ljava/lang/String;
    .end local v19           #timerLimit:Ljava/lang/String;
    :cond_e
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v8, v0, :cond_11

    .line 465
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "000000"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 466
    .restart local v19       #timerLimit:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 467
    .restart local v10       #lenth:I
    add-int/lit8 v20, v10, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 468
    .restart local v11       #milis:Ljava/lang/String;
    const/16 v20, 0x0

    add-int/lit8 v21, v10, -0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 469
    .restart local v16       #s:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v7, v0, 0xe10

    .line 470
    .restart local v7       #hour:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v20, v0

    div-int/lit8 v12, v20, 0x3c

    .line 471
    .restart local v12       #min:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    rem-int/lit8 v17, v20, 0x3c

    .line 472
    .restart local v17       #sec:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\uc2dc:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ubd84:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ucd08"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 473
    .restart local v18       #time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "third"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "third"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 475
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ub4f1 : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 476
    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 477
    const-string v21, "Panalty : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 478
    const-string v21, "Time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "select _id, title, participation, win, distance, racetime from notes where title=\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 481
    invoke-virtual/range {v20 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-nez v20, :cond_10

    .line 484
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .restart local v15       #row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v20, "participation"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v20, "win"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_5

    .line 493
    .end local v15           #row:Landroid/content/ContentValues;
    :cond_10
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .restart local v15       #row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v20, "participation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v20, "win"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "title = \'"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 502
    .end local v7           #hour:I
    .end local v10           #lenth:I
    .end local v11           #milis:Ljava/lang/String;
    .end local v12           #min:I
    .end local v15           #row:Landroid/content/ContentValues;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sec:I
    .end local v18           #time:Ljava/lang/String;
    .end local v19           #timerLimit:Ljava/lang/String;
    :cond_11
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "000000"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 503
    .restart local v19       #timerLimit:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 504
    .restart local v10       #lenth:I
    add-int/lit8 v20, v10, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 505
    .restart local v11       #milis:Ljava/lang/String;
    const/16 v20, 0x0

    add-int/lit8 v21, v10, -0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 506
    .restart local v16       #s:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v7, v0, 0xe10

    .line 507
    .restart local v7       #hour:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v20, v0

    div-int/lit8 v12, v20, 0x3c

    .line 508
    .restart local v12       #min:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    rem-int/lit8 v17, v20, 0x3c

    .line 509
    .restart local v17       #sec:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\uc2dc:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ubd84:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ucd08"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 510
    .restart local v18       #time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "fourth"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_12

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "fourth"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 512
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\ub4f1 : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 513
    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 514
    const-string v21, "Panalty : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 515
    const-string v21, "Time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mRaceResult:Ljava/lang/String;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "select _id, title, participation, win, distance, racetime from notes where title=\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 518
    invoke-virtual/range {v20 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-nez v20, :cond_13

    .line 521
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .restart local v15       #row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v20, "participation"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v20, "win"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_5

    .line 530
    .end local v15           #row:Landroid/content/ContentValues;
    :cond_13
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .restart local v15       #row:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v20, "participation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v20, "win"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v20, "distance"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 535
    const-string v20, "racetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mCursorCondition:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/jaynux/app/Horses$Specification;->getStopWatch()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    move-object/from16 v20, v0

    #getter for: Lcom/jaynux/app/RandomRun;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/jaynux/app/RandomRun;->access$5(Lcom/jaynux/app/RandomRun;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "notes"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "title = \'"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5
.end method

.method public setGameState(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 600
    iget-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 601
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/jaynux/app/RandomRun$ImgThread;->setGameState(ILjava/lang/CharSequence;)V

    .line 600
    monitor-exit v1

    .line 603
    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGameState(ILjava/lang/CharSequence;)V
    .locals 6
    .parameter "state"
    .parameter "message"

    .prologue
    const/4 v4, 0x3

    .line 613
    iget-object v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 616
    :try_start_0
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-eq v1, p1, :cond_0

    .line 617
    iput p1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    .line 620
    :cond_0
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 622
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 624
    new-instance v1, Lcom/jaynux/app/RandomRun$ImgThread$3;

    invoke-direct {v1, p0}, Lcom/jaynux/app/RandomRun$ImgThread$3;-><init>(Lcom/jaynux/app/RandomRun$ImgThread;)V

    iput-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    .line 629
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    .line 630
    iget-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTimerTask:Ljava/util/TimerTask;

    iget v4, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mTaskIntervalInMillis:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 631
    const/4 v1, 0x3

    iput v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    .line 613
    :cond_1
    monitor-exit v2

    .line 646
    return-void

    .line 632
    :cond_2
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-ne v1, v4, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/jaynux/app/RandomRun$ImgThread;->setInitialGameState()V

    .line 639
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    if-ge v0, v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jaynux/app/Horses$Specification;->start()V

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mRun:Z

    .line 656
    return-void
.end method

.method public setSettingValue(Landroid/os/Bundle;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/jaynux/app/RandomRun$ImgThread;->settingBundle:Landroid/os/Bundle;

    .line 154
    const-string v0, "playerNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->playerNum:I

    .line 155
    const-string v0, "meter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    .line 156
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->horses:Lcom/jaynux/app/Horses;

    invoke-virtual {v0, p1}, Lcom/jaynux/app/Horses;->setSettingValue(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mMeterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$0(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jaynux/app/RandomRun$ImgThread;->mEndMeter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method
