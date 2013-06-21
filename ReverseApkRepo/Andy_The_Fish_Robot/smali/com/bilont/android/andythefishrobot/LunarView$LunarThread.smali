.class Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;
.super Ljava/lang/Thread;
.source "LunarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilont/android/andythefishrobot/LunarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LunarThread"
.end annotation


# static fields
.field private static final KEY_DOWN_ACCEL:Ljava/lang/String; = "physDownAccelSec"

.field private static final KEY_DX:Ljava/lang/String; = "mDX"

.field private static final KEY_DY:Ljava/lang/String; = "mDY"

.field private static final KEY_FIRE_ACCEL:Ljava/lang/String; = "physFireAccelSec"

.field private static final KEY_LANDER_HEIGHT:Ljava/lang/String; = "mLanderHeight"

.field private static final KEY_LANDER_WIDTH:Ljava/lang/String; = "mLanderWidth"

.field private static final KEY_LOWER_WALL:Ljava/lang/String; = "lowerWall"

.field private static final KEY_MAX_WALL_UPDATE_DELAY:Ljava/lang/String; = "maxWallUpdateDelay"

.field private static final KEY_SCORE:Ljava/lang/String; = "mScore"

.field private static final KEY_SCORE_DELAY:Ljava/lang/String; = "mScoreDelay"

.field private static final KEY_SCORE_INCREMENT:Ljava/lang/String; = "scoreIncrement"

.field private static final KEY_UPPER_WALL:Ljava/lang/String; = "upperWall"

.field private static final KEY_WALL_UPDATE_DELAY:Ljava/lang/String; = "wallUpdateDelay"

.field private static final KEY_X:Ljava/lang/String; = "mX"

.field private static final KEY_Y:Ljava/lang/String; = "mY"

.field private static final MAX_SCORE_DELAY:I = 0x1

.field public static final STATE_LOSE:I = 0x1

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_READY:I = 0x3

.field public static final STATE_RUNNING:I = 0x4

.field private static final WALL_ARRAY_SIZE:I = 0x31


# instance fields
.field public flip:I

.field public flipDelay:I

.field private level:I

.field private lowerWall:[I

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mCrashPlayed:I

.field private mCrashedImage:Landroid/graphics/drawable/Drawable;

.field private mDX:D

.field private mDY:D

.field private mDiff:I

.field private mDisplayFood:I

.field private mEngineFiring:Z

.field private mFiringImage:Landroid/graphics/drawable/Drawable;

.field private mFiringImage2:Landroid/graphics/drawable/Drawable;

.field private mFoodHeight:I

.field private mFoodImage1:Landroid/graphics/drawable/Drawable;

.field private mFoodImage2:Landroid/graphics/drawable/Drawable;

.field private mFoodWidth:I

.field private mGenerateNewFood:I

.field private mHandler:Landroid/os/Handler;

.field private mLanderHeight:I

.field private mLanderImage:Landroid/graphics/drawable/Drawable;

.field private mLanderImage2:Landroid/graphics/drawable/Drawable;

.field private mLanderWidth:I

.field private mLastTime:J

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMode:I

.field private mMuteImage:Landroid/graphics/drawable/Drawable;

.field private mPauseImage:Landroid/graphics/drawable/Drawable;

.field private mRun:Z

.field private mScore:J

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mUnmuteImage:Landroid/graphics/drawable/Drawable;

.field private mX:D

.field private mXFood:I

.field private mY:D

.field private mYFood:I

.field private maxWallUpdateDelay:I

.field mpCrash:Landroid/media/MediaPlayer;

.field mpSplash:Landroid/media/MediaPlayer;

.field private physDownAccelSec:I

.field private physFireAccelSec:I

.field private redFoodWorking:I

.field private scoreDelay:I

.field private scoreIncrement:I

.field private soundMuted:I

.field private tapped:I

.field final synthetic this$0:Lcom/bilont/android/andythefishrobot/LunarView;

.field private touchX:I

.field private touchY:I

.field private upperWall:[I

.field private wallUpdateDelay:I

.field private yellowFoodWorking:I


# direct methods
.method public constructor <init>(Lcom/bilont/android/andythefishrobot/LunarView;Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .parameter
    .parameter "surfaceHolder"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    .line 204
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    const/16 v4, 0x31

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    .line 99
    const/16 v4, 0x31

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    .line 101
    const/16 v4, 0x46

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 102
    const/16 v4, 0x8c

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    .line 112
    const/4 v4, 0x1

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    .line 119
    const/4 v4, 0x1

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    .line 149
    const/4 v4, 0x1

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flip:I

    .line 150
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flipDelay:I

    .line 151
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    .line 152
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreDelay:I

    .line 180
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mRun:Z

    .line 186
    const-wide/high16 v4, 0x4000

    iput-wide v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mX:D

    .line 189
    const-wide/high16 v4, 0x4000

    iput-wide v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    .line 197
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    .line 198
    const/4 v4, 0x1

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    .line 199
    const/4 v4, 0x1

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 202
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCrashPlayed:I

    .line 764
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->soundMuted:I

    .line 871
    const/4 v4, 0x1

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    .line 872
    const/4 v4, 0x6

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDiff:I

    .line 873
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->yellowFoodWorking:I

    .line 874
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->redFoodWorking:I

    .line 1177
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mGenerateNewFood:I

    .line 1178
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDisplayFood:I

    .line 1180
    const/16 v4, -0x64

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    .line 1181
    iget v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mYFood:I

    .line 1286
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchX:I

    .line 1287
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchY:I

    .line 1288
    const/4 v4, 0x0

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->tapped:I

    .line 207
    iput-object p2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 208
    iput-object p4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    .line 209
    #setter for: Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;
    invoke-static {p1, p3}, Lcom/bilont/android/andythefishrobot/LunarView;->access$0(Lcom/bilont/android/andythefishrobot/LunarView;Landroid/content/Context;)V

    .line 210
    const v4, 0x7f040001

    invoke-static {p3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mpSplash:Landroid/media/MediaPlayer;

    .line 211
    const/high16 v4, 0x7f04

    invoke-static {p3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mpCrash:Landroid/media/MediaPlayer;

    .line 212
    new-instance v4, Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-direct {v4, p3}, Lcom/bilont/android/andythefishrobot/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    .line 213
    iget-object v4, p1, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v4}, Lcom/bilont/android/andythefishrobot/DBAdapter;->open()Lcom/bilont/android/andythefishrobot/DBAdapter;

    .line 215
    iget-object v4, p1, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v4}, Lcom/bilont/android/andythefishrobot/DBAdapter;->getAllTitles()Landroid/database/Cursor;

    move-result-object v2

    .line 216
    .local v2, cur:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    const/4 v0, 0x0

    .local v0, alfa:I
    :goto_0
    const/4 v4, 0x5

    if-lt v0, v4, :cond_1

    .line 231
    .end local v0           #alfa:I
    :cond_0
    iget-object v4, p1, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v4}, Lcom/bilont/android/andythefishrobot/DBAdapter;->close()V

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 234
    .local v1, c:Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    #setter for: Lcom/bilont/android/andythefishrobot/LunarView;->mYear:I
    invoke-static {p1, v4}, Lcom/bilont/android/andythefishrobot/LunarView;->access$1(Lcom/bilont/android/andythefishrobot/LunarView;I)V

    .line 235
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    #setter for: Lcom/bilont/android/andythefishrobot/LunarView;->mMonth:I
    invoke-static {p1, v4}, Lcom/bilont/android/andythefishrobot/LunarView;->access$2(Lcom/bilont/android/andythefishrobot/LunarView;I)V

    .line 236
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    #setter for: Lcom/bilont/android/andythefishrobot/LunarView;->mDay:I
    invoke-static {p1, v4}, Lcom/bilont/android/andythefishrobot/LunarView;->access$3(Lcom/bilont/android/andythefishrobot/LunarView;I)V

    .line 239
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 241
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 242
    const v5, 0x7f020008

    .line 241
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 244
    const v5, 0x7f020009

    .line 243
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage2:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 246
    const v5, 0x7f020006

    .line 245
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFiringImage:Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 248
    const v5, 0x7f020007

    .line 247
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFiringImage2:Landroid/graphics/drawable/Drawable;

    .line 249
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 250
    const v5, 0x7f020005

    .line 249
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCrashedImage:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 252
    const v5, 0x7f020002

    .line 251
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage1:Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 254
    const v5, 0x7f020003

    .line 253
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage2:Landroid/graphics/drawable/Drawable;

    .line 255
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 256
    const v5, 0x7f02000b

    .line 255
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mPauseImage:Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 258
    const v5, 0x7f02000a

    .line 257
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMuteImage:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 260
    const v5, 0x7f02000c

    .line 259
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mUnmuteImage:Landroid/graphics/drawable/Drawable;

    .line 267
    const v4, 0x7f020001

    .line 266
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 270
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    .line 271
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    .line 272
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodWidth:I

    .line 273
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodHeight:I

    .line 275
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLinePaint:Landroid/graphics/Paint;

    .line 276
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLinePaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 277
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLinePaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0x3d

    const/16 v7, 0x60

    const/16 v8, 0x1d

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 279
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mTextPaint:Landroid/graphics/Paint;

    .line 280
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 281
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mTextPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xe6

    const/16 v7, 0xe6

    const/16 v8, 0xe6

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 282
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 286
    const-wide/high16 v4, -0x3fa7

    iput-wide v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mX:D

    .line 287
    const-wide/high16 v4, 0x4059

    iput-wide v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    .line 288
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDX:D

    .line 289
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    .line 290
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    return-void

    .line 228
    .end local v1           #c:Ljava/util/Calendar;
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v0       #alfa:I
    :cond_1
    iget-object v4, p1, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    const-string v5, "-"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/bilont/android/andythefishrobot/DBAdapter;->insertTitle(Ljava/lang/String;Ljava/lang/String;)J

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private checkFood()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1211
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDisplayFood:I

    if-ne v0, v4, :cond_0

    .line 1213
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mX:D

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodWidth:I

    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mYFood:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodHeight:I

    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1215
    iput v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDisplayFood:I

    .line 1216
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    .line 1217
    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mGenerateNewFood:I

    .line 1220
    :cond_0
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    if-gez v0, :cond_1

    .line 1222
    iput v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDisplayFood:I

    .line 1223
    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mGenerateNewFood:I

    .line 1225
    :cond_1
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 773
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mBackgroundImage:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 775
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    iget-wide v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    double-to-int v8, v8

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v6, v7, v8

    .line 776
    .local v6, yTop:I
    iget-wide v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mX:D

    double-to-int v7, v7

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int v4, v7, v8

    .line 777
    .local v4, xLeft:I
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mYFood:I

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v5, v7, v8

    .line 778
    .local v5, yFoodTop:I
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 780
    .local v3, xFoodLeft:I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 781
    .local v1, lowerPath:Landroid/graphics/Path;
    const/4 v7, 0x0

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 782
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v7, 0x30

    if-le v0, v7, :cond_4

    .line 786
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 788
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 789
    .local v2, upperPath:Landroid/graphics/Path;
    const/4 v7, 0x0

    const/high16 v8, 0x41a0

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 790
    const/4 v0, 0x0

    :goto_1
    const/16 v7, 0x30

    if-le v0, v7, :cond_5

    .line 794
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x41a0

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 796
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 797
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 799
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Score:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    const/high16 v9, 0x4188

    iget-object v10, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 801
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->soundMuted:I

    if-nez v7, :cond_6

    .line 803
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMuteImage:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    const/16 v9, 0x5a

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    iget v10, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    const/16 v11, 0x14

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 804
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMuteImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 812
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 813
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 814
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCrashedImage:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    add-int/2addr v8, v4

    .line 815
    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    add-int/2addr v9, v6

    .line 814
    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 816
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCrashedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 817
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCrashPlayed:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 819
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->soundMuted:I

    if-nez v7, :cond_0

    .line 820
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mpCrash:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 821
    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCrashPlayed:I

    .line 849
    :cond_1
    :goto_3
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDisplayFood:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 851
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flip:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 853
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage1:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodWidth:I

    add-int/2addr v8, v3

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodHeight:I

    add-int/2addr v9, v5

    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 854
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 863
    :cond_2
    :goto_4
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 864
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mPauseImage:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    const/16 v9, 0x5a

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    const/16 v10, 0x14

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    iget v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 865
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mPauseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 868
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 870
    return-void

    .line 784
    .end local v2           #upperPath:Landroid/graphics/Path;
    :cond_4
    int-to-float v7, v0

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x4240

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v9, v9, v0

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 792
    .restart local v2       #upperPath:Landroid/graphics/Path;
    :cond_5
    int-to-float v7, v0

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x4240

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v8, v8, v0

    add-int/lit8 v8, v8, 0x14

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 808
    :cond_6
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mUnmuteImage:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    const/16 v9, 0x5a

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    iget v10, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    const/16 v11, 0x14

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 809
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mUnmuteImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 823
    :cond_7
    iget-boolean v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    if-eqz v7, :cond_9

    .line 824
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flip:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 826
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFiringImage:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 827
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFiringImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 834
    :goto_5
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->soundMuted:I

    if-nez v7, :cond_1

    .line 835
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mpSplash:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_3

    .line 831
    :cond_8
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFiringImage2:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 832
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFiringImage2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 839
    :cond_9
    iget v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flip:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 841
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 842
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 844
    :cond_a
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage2:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 845
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderImage2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 858
    :cond_b
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage2:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodWidth:I

    add-int/2addr v8, v3

    iget v9, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodHeight:I

    add-int/2addr v9, v5

    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 859
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mFoodImage2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4
.end method

.method private generateFood()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x2c

    .line 1199
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mGenerateNewFood:I

    if-ne v0, v4, :cond_0

    .line 1201
    const/high16 v0, 0x4230

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4240

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    .line 1202
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v0, v0, v3

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mYFood:I

    .line 1203
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mGenerateNewFood:I

    .line 1204
    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDisplayFood:I

    .line 1207
    :cond_0
    return-void
.end method

.method private updateFood()V
    .locals 2

    .prologue
    .line 1188
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDisplayFood:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1189
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    div-int/lit8 v1, v1, 0x30

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    .line 1190
    :cond_0
    invoke-direct {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->checkFood()V

    .line 1192
    return-void
.end method

.method private updateLowerWall()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x12c

    const/16 v9, 0x14

    const/16 v8, 0x30

    const/16 v7, 0x2f

    .line 1069
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-le v0, v7, :cond_1

    .line 1074
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aput v11, v4, v8

    .line 1075
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aput v11, v4, v8

    .line 1077
    invoke-static {}, Lcom/bilont/android/andythefishrobot/LunarView;->access$4()Ljava/util/Random;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1078
    .local v2, randomVar1:I
    invoke-static {}, Lcom/bilont/android/andythefishrobot/LunarView;->access$4()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1079
    .local v3, randomVar2:I
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    if-lt v4, v9, :cond_6

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    const/16 v5, 0x50

    if-gt v4, v5, :cond_6

    .line 1081
    if-gt v2, v10, :cond_2

    .line 1083
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    add-int/lit8 v5, v3, 0x5

    aput v5, v4, v8

    .line 1120
    :cond_0
    :goto_1
    return-void

    .line 1071
    .end local v2           #randomVar1:I
    .end local v3           #randomVar2:I
    :cond_1
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    aput v5, v4, v0

    .line 1072
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    aput v5, v4, v0

    .line 1069
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    .restart local v2       #randomVar1:I
    .restart local v3       #randomVar2:I
    :cond_2
    if-lt v2, v10, :cond_3

    const/16 v4, 0x258

    if-gt v2, v4, :cond_3

    .line 1088
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    add-int/lit8 v5, v3, 0x1e

    aput v5, v4, v8

    goto :goto_1

    .line 1091
    :cond_3
    const/16 v4, 0x30c

    if-lt v2, v4, :cond_4

    const/16 v4, 0x348

    if-gt v2, v4, :cond_4

    .line 1093
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    add-int/lit8 v5, v3, 0x78

    aput v5, v4, v8

    goto :goto_1

    .line 1096
    :cond_4
    const/16 v4, 0x352

    if-lt v2, v4, :cond_5

    const/16 v4, 0x366

    if-gt v2, v4, :cond_5

    .line 1098
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    add-int/lit16 v5, v3, 0x96

    aput v5, v4, v8

    goto :goto_1

    .line 1101
    :cond_5
    const/16 v4, 0x384

    if-lt v2, v4, :cond_0

    const/16 v4, 0x398

    if-gt v2, v4, :cond_0

    .line 1103
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    add-int/lit16 v5, v3, 0xc8

    aput v5, v4, v8

    goto :goto_1

    .line 1109
    :cond_6
    const/4 v1, 0x1

    .line 1111
    .local v1, mSign:I
    const/16 v4, 0x2bc

    if-le v2, v4, :cond_7

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    const/16 v5, 0x1e

    if-le v4, v5, :cond_7

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    const/16 v5, 0x28

    if-lt v4, v5, :cond_a

    .line 1113
    :cond_7
    const/16 v4, 0x1f4

    if-le v2, v4, :cond_8

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    const/16 v5, 0x28

    if-lt v4, v5, :cond_8

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    const/16 v5, 0x82

    if-le v4, v5, :cond_a

    .line 1114
    :cond_8
    if-le v2, v10, :cond_9

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    const/16 v5, 0x82

    if-gt v4, v5, :cond_a

    .line 1115
    :cond_9
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_b

    .line 1116
    :cond_a
    const/4 v1, -0x1

    .line 1118
    :cond_b
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v5, v5, v7

    invoke-static {}, Lcom/bilont/android/andythefishrobot/LunarView;->access$4()Ljava/util/Random;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    aput v5, v4, v8

    goto/16 :goto_1
.end method

.method private updatePhysics()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 877
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 879
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    .line 880
    iput v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDiff:I

    .line 882
    :cond_0
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->yellowFoodWorking:I

    if-nez v0, :cond_2

    .line 884
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 885
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    .line 886
    :cond_1
    iput v6, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDiff:I

    .line 888
    :cond_2
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->yellowFoodWorking:I

    if-nez v0, :cond_4

    .line 890
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    if-ge v0, v4, :cond_3

    .line 891
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    .line 892
    :cond_3
    iput v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDiff:I

    .line 894
    :cond_4
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->yellowFoodWorking:I

    if-nez v0, :cond_6

    .line 896
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    if-ge v0, v5, :cond_5

    .line 897
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    .line 898
    :cond_5
    iput v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDiff:I

    .line 900
    :cond_6
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->yellowFoodWorking:I

    if-nez v0, :cond_7

    .line 902
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    if-ge v0, v6, :cond_7

    .line 903
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    .line 905
    :cond_7
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->yellowFoodWorking:I

    if-nez v0, :cond_8

    .line 907
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    if-ge v0, v7, :cond_8

    .line 908
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    .line 910
    :cond_8
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->level:I

    invoke-direct {p0, v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updatePhysics(I)V

    .line 911
    return-void
.end method

.method private updatePhysics(I)V
    .locals 21
    .parameter "level"

    .prologue
    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 923
    .local v13, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLastTime:J

    move-wide v15, v0

    sub-long v15, v13, v15

    const-wide/16 v17, 0x32

    cmp-long v15, v15, v17

    if-gez v15, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    move-wide v15, v0

    const-wide/16 v17, 0x64

    cmp-long v15, v15, v17

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    move-wide v15, v0

    const-wide/16 v17, 0x78

    cmp-long v15, v15, v17

    if-lez v15, :cond_2

    .line 926
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    move-wide v15, v0

    const-wide/16 v17, 0x190

    rem-long v15, v15, v17

    const-wide/16 v17, 0x14

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    .line 928
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->generateFood()V

    .line 930
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 931
    const/4 v15, 0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_4

    .line 933
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 934
    const/16 v15, 0x8c

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    const/16 v15, 0x46

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 936
    :cond_4
    const/4 v15, 0x2

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_5

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 939
    const/4 v15, 0x2

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    const/4 v15, 0x3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 940
    const/16 v15, 0xb4

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    const/16 v15, 0x5a

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 942
    :cond_5
    const/4 v15, 0x3

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_6

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 946
    const/4 v15, 0x3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    const/4 v15, 0x5

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 947
    const/16 v15, 0xdc

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    const/16 v15, 0x6e

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 949
    :cond_6
    const/4 v15, 0x4

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_7

    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 952
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 953
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 954
    const/4 v15, 0x3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    const/16 v15, 0x8

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 955
    const/16 v15, 0x104

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    const/16 v15, 0x82

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 957
    :cond_7
    const/4 v15, 0x5

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_8

    .line 959
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 960
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 962
    const/4 v15, 0x2

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    const/16 v15, 0xa

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 963
    const/16 v15, 0x12c

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    const/16 v15, 0x96

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 965
    :cond_8
    const/4 v15, 0x6

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_9

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 968
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 969
    invoke-direct/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateWalls()V

    .line 970
    const/4 v15, 0x2

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    const/16 v15, 0xf

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 971
    const/16 v15, 0x154

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    const/16 v15, 0xaa

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 973
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLastTime:J

    move-wide v15, v0

    sub-long v15, v13, v15

    long-to-double v15, v15

    const-wide v17, 0x408f400000000000L

    div-double v9, v15, v17

    .line 975
    .local v9, elapsed:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    move v15, v0

    neg-int v15, v15

    int-to-double v15, v15

    mul-double v5, v15, v9

    .line 976
    .local v5, ddy:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    move v15, v0

    if-eqz v15, :cond_a

    .line 978
    move-wide v11, v9

    .line 980
    .local v11, elapsedFiring:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    move v15, v0

    int-to-double v15, v15

    mul-double v3, v15, v11

    .line 981
    .local v3, accel:D
    add-double/2addr v5, v3

    .line 983
    .end local v3           #accel:D
    .end local v11           #elapsedFiring:D
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    move-wide v7, v0

    .line 985
    .local v7, dyOld:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    move-wide v15, v0

    add-double/2addr v15, v5

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    .line 987
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    move-wide/from16 v17, v0

    add-double v17, v17, v7

    mul-double v17, v17, v9

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    add-double v15, v15, v17

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    .line 988
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLastTime:J

    .line 991
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    const-wide/high16 v17, 0x3ff0

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_b

    .line 992
    const-wide/high16 v15, 0x3ff0

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    .line 993
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    move/from16 v17, v0

    const/16 v18, 0x14

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-ltz v15, :cond_c

    .line 994
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    move v15, v0

    const/16 v16, 0x14

    sub-int v15, v15, v16

    int-to-double v15, v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    .line 996
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x4008

    add-double v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v15, v15, v17

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x4000

    add-double v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    move-object/from16 v17, v0

    const/16 v18, 0x6

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v15, v15, v17

    if-lez v15, :cond_d

    .line 998
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    move-object/from16 v17, v0

    const/16 v18, 0x7

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v15, v15, v17

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    move-object/from16 v17, v0

    const/16 v18, 0x8

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v15, v15, v17

    if-lez v15, :cond_d

    .line 1000
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget v18, v18, v19

    sub-int v17, v17, v18

    const/16 v18, 0x14

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-gez v15, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    move/from16 v17, v0

    const/16 v18, 0x14

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget v18, v18, v19

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-gez v15, :cond_d

    .line 1002
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    move-object/from16 v18, v0

    const/16 v19, 0x7

    aget v18, v18, v19

    sub-int v17, v17, v18

    const/16 v18, 0x14

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-gez v15, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    move-wide v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    move/from16 v17, v0

    const/16 v18, 0x14

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    move-object/from16 v18, v0

    const/16 v19, 0x8

    aget v18, v18, v19

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-ltz v15, :cond_0

    .line 1003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->redFoodWorking:I

    move v15, v0

    if-nez v15, :cond_0

    .line 1004
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->performGameOver()V

    goto/16 :goto_0
.end method

.method private updateUpperWall()V
    .locals 10

    .prologue
    const/16 v9, 0x28

    const/16 v8, 0x14

    const/16 v6, 0x12c

    const/16 v7, 0x30

    const/16 v5, 0x2f

    .line 1125
    invoke-static {}, Lcom/bilont/android/andythefishrobot/LunarView;->access$4()Ljava/util/Random;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1126
    .local v1, randomVar1:I
    invoke-static {}, Lcom/bilont/android/andythefishrobot/LunarView;->access$4()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1128
    .local v2, randomVar2:I
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v4, v4, v7

    sub-int/2addr v3, v4

    const/16 v4, 0x96

    if-lt v3, v4, :cond_6

    .line 1131
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    if-gt v3, v8, :cond_0

    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    const/16 v4, 0x50

    if-ge v3, v4, :cond_7

    .line 1133
    :cond_0
    const/4 v0, 0x1

    .line 1135
    .local v0, mSign:I
    const/16 v3, 0x2bc

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    if-lt v3, v9, :cond_4

    .line 1137
    :cond_1
    const/16 v3, 0x1f4

    if-le v1, v3, :cond_2

    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    if-lt v3, v9, :cond_2

    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    const/16 v4, 0x82

    if-le v3, v4, :cond_4

    .line 1139
    :cond_2
    if-le v1, v6, :cond_3

    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    const/16 v4, 0x82

    if-gt v3, v4, :cond_4

    .line 1140
    :cond_3
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v3, v3, v5

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_5

    .line 1141
    :cond_4
    const/4 v0, -0x1

    .line 1143
    :cond_5
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v4, v4, v5

    invoke-static {}, Lcom/bilont/android/andythefishrobot/LunarView;->access$4()Ljava/util/Random;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    aput v4, v3, v7

    .line 1174
    .end local v0           #mSign:I
    :cond_6
    :goto_0
    return-void

    .line 1147
    :cond_7
    if-gt v1, v6, :cond_8

    .line 1149
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    add-int/lit8 v4, v2, 0x5

    aput v4, v3, v7

    goto :goto_0

    .line 1152
    :cond_8
    if-lt v1, v6, :cond_9

    const/16 v3, 0x258

    if-gt v1, v3, :cond_9

    .line 1154
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    add-int/lit8 v4, v2, 0x1e

    aput v4, v3, v7

    goto :goto_0

    .line 1157
    :cond_9
    const/16 v3, 0x30c

    if-lt v1, v3, :cond_a

    const/16 v3, 0x348

    if-gt v1, v3, :cond_a

    .line 1159
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    add-int/lit8 v4, v2, 0x78

    aput v4, v3, v7

    goto :goto_0

    .line 1162
    :cond_a
    const/16 v3, 0x352

    if-lt v1, v3, :cond_b

    const/16 v3, 0x366

    if-gt v1, v3, :cond_b

    .line 1164
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    add-int/lit16 v4, v2, 0x96

    aput v4, v3, v7

    goto :goto_0

    .line 1167
    :cond_b
    const/16 v3, 0x384

    if-lt v1, v3, :cond_6

    const/16 v3, 0x398

    if-gt v1, v3, :cond_6

    .line 1169
    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    add-int/lit16 v4, v2, 0xc8

    aput v4, v3, v7

    goto :goto_0
.end method

.method private updateWalls()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x5f

    const/16 v3, 0x30

    .line 1013
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flipDelay:I

    if-le v0, v5, :cond_0

    .line 1015
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flip:I

    if-ne v0, v7, :cond_6

    .line 1016
    iput v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flip:I

    .line 1019
    :goto_0
    iput v6, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flipDelay:I

    .line 1021
    :cond_0
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flipDelay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flipDelay:I

    .line 1023
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    .line 1025
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    if-lt v0, v1, :cond_5

    .line 1027
    invoke-direct {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateLowerWall()V

    .line 1028
    invoke-direct {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateUpperWall()V

    .line 1030
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_2

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v1, v0, v3

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x5f

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1037
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v0, v0, v3

    if-gt v0, v5, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aput v5, v0, v3

    .line 1042
    :cond_2
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    const/16 v1, 0x2e

    aget v0, v0, v1

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_3

    .line 1044
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    const/16 v1, 0x2d

    aget v0, v0, v1

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_4

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v1, v0, v3

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x5f

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1048
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aget v0, v0, v3

    if-gt v0, v5, :cond_4

    .line 1049
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    aput v5, v0, v3

    .line 1052
    :cond_4
    invoke-direct {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updateFood()V

    .line 1053
    iput v6, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    .line 1055
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreDelay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreDelay:I

    .line 1056
    iget v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreDelay:I

    if-lt v0, v7, :cond_5

    .line 1058
    iget-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    .line 1059
    iput v6, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreDelay:I

    .line 1062
    :cond_5
    return-void

    .line 1017
    :cond_6
    iput v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->flip:I

    goto/16 :goto_0
.end method


# virtual methods
.method public DisplayTitle(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 450
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 451
    .local v2, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v1, b:Landroid/os/Bundle;
    const-string v4, ""

    .line 453
    .local v4, str:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/bilont/android/andythefishrobot/LunarView;->access$5(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 454
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f05000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 456
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    const/4 v0, 0x0

    .local v0, alfa:I
    :goto_0
    const/4 v5, 0x5

    if-lt v0, v5, :cond_1

    .line 465
    .end local v0           #alfa:I
    :cond_0
    const-string v5, "text"

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v5, "viz"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 468
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    return-void

    .line 460
    .restart local v0       #alfa:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method doKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    const/16 v8, 0x17

    const/16 v7, 0x15

    const/16 v6, 0x14

    const/16 v5, 0x13

    const/4 v4, 0x1

    .line 696
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, okStart:Z
    if-ne p1, v5, :cond_0

    const/4 v0, 0x1

    .line 699
    :cond_0
    if-ne p1, v6, :cond_1

    const/4 v0, 0x1

    .line 700
    :cond_1
    if-ne p1, v7, :cond_2

    const/4 v0, 0x1

    .line 701
    :cond_2
    const/16 v2, 0x16

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    .line 702
    :cond_3
    if-ne p1, v8, :cond_4

    const/4 v0, 0x1

    .line 703
    :cond_4
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_5

    const/4 v0, 0x1

    .line 705
    :cond_5
    :try_start_0
    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    if-ne v2, v4, :cond_8

    .line 708
    :cond_6
    if-eqz v0, :cond_7

    .line 709
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doStart()V

    .line 710
    :cond_7
    monitor-exit v1

    move v1, v4

    .line 738
    :goto_0
    return v1

    .line 712
    :cond_8
    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 715
    if-nez v0, :cond_9

    const/16 v2, 0x2c

    if-ne p1, v2, :cond_a

    .line 716
    :cond_9
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->unpause()V

    .line 717
    :cond_a
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 719
    :cond_b
    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    .line 722
    const/16 v2, 0x3e

    if-ne p1, v2, :cond_c

    .line 723
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setFiring(Z)V

    .line 724
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 727
    :cond_c
    if-eq p1, v5, :cond_d

    .line 728
    if-eq p1, v6, :cond_d

    .line 729
    if-eq p1, v7, :cond_d

    .line 730
    if-eq p1, v8, :cond_d

    .line 731
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_e

    .line 733
    :cond_d
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->pause()V

    .line 734
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 738
    :cond_e
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method doKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 750
    const/4 v0, 0x0

    .line 752
    .local v0, handled:Z
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 753
    :try_start_0
    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 754
    const/16 v2, 0x3e

    if-ne p1, v2, :cond_0

    .line 755
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setFiring(Z)V

    .line 756
    const/4 v0, 0x1

    .line 752
    :cond_0
    monitor-exit v1

    .line 761
    return v0

    .line 752
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public doStart()V
    .locals 6

    .prologue
    .line 298
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 301
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    .line 304
    const-wide/high16 v2, 0x4050

    iput-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mX:D

    .line 305
    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    .line 307
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    .line 308
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDX:D

    .line 310
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    .line 311
    const/16 v2, -0x64

    iput v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mXFood:I

    .line 312
    const/4 v2, 0x1

    iput v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 313
    const/4 v2, 0x1

    iput v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    .line 314
    const/4 v2, 0x1

    iput v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCrashPlayed:I

    .line 315
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x30

    if-le v0, v2, :cond_0

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLastTime:J

    .line 322
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setState(I)V

    .line 298
    monitor-exit v1

    .line 324
    return-void

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    invoke-static {}, Lcom/bilont/android/andythefishrobot/LunarView;->access$4()Ljava/util/Random;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v2, v0

    .line 318
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    iget-object v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0x19

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1290
    const/4 v1, 0x0

    .line 1291
    .local v1, handled:Z
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 1293
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchX:I

    .line 1294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchY:I

    .line 1295
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchX:I

    iget v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    const/16 v5, 0x6e

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchY:I

    if-gt v3, v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 1297
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->soundMuted:I

    if-nez v3, :cond_0

    .line 1298
    const/4 v3, 0x1

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->soundMuted:I

    .line 1300
    :goto_0
    monitor-exit v2

    move v2, v6

    .line 1338
    :goto_1
    return v2

    .line 1299
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->soundMuted:I

    goto :goto_0

    .line 1291
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1302
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    if-ne v3, v6, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 1304
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->tapped:I

    if-nez v3, :cond_3

    .line 1305
    const/4 v3, 0x1

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->tapped:I

    .line 1310
    :goto_2
    monitor-exit v2

    move v2, v6

    goto :goto_1

    .line 1307
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->tapped:I

    .line 1308
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doStart()V

    goto :goto_2

    .line 1311
    :cond_4
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    .line 1313
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->tapped:I

    if-nez v3, :cond_5

    .line 1314
    const/4 v3, 0x1

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->tapped:I

    .line 1319
    :goto_3
    monitor-exit v2

    move v2, v6

    goto :goto_1

    .line 1316
    :cond_5
    const/4 v3, 0x0

    iput v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->tapped:I

    .line 1317
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->unpause()V

    goto :goto_3

    .line 1320
    :cond_6
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    if-ne v3, v8, :cond_a

    .line 1321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1322
    .local v0, action:I
    if-nez v0, :cond_8

    .line 1323
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchX:I

    iget v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    const/16 v5, 0x64

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_7

    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->touchY:I

    iget v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    sub-int/2addr v4, v9

    if-le v3, v4, :cond_7

    .line 1324
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->pause()V

    .line 1326
    :goto_4
    monitor-exit v2

    move v2, v6

    goto :goto_1

    .line 1325
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setFiring(Z)V

    goto :goto_4

    .line 1328
    :cond_8
    if-ne v0, v6, :cond_9

    .line 1330
    iget v3, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    if-ne v3, v8, :cond_9

    .line 1331
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setFiring(Z)V

    .line 1332
    const/4 v1, 0x1

    .line 1335
    :cond_9
    monitor-exit v2

    move v2, v1

    goto :goto_1

    .line 1291
    .end local v0           #action:I
    :cond_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v7

    .line 1338
    goto :goto_1
.end method

.method public doTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1342
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 1345
    :try_start_0
    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    if-ne v1, v3, :cond_1

    .line 1347
    :cond_0
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doStart()V

    .line 1348
    monitor-exit v0

    move v0, v3

    .line 1359
    :goto_0
    return v0

    .line 1349
    :cond_1
    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1351
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->unpause()V

    .line 1352
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 1353
    :cond_2
    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1354
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->pause()V

    .line 1355
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 1342
    :cond_3
    monitor-exit v0

    .line 1359
    const/4 v0, 0x0

    goto :goto_0

    .line 1342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public menuAbout()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 495
    :try_start_0
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->showAbout()V

    .line 494
    monitor-exit v0

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public menuHelp()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->showHelp()V

    .line 420
    monitor-exit v0

    .line 423
    return-void

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public menuHighScore()V
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v2, v2, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v2}, Lcom/bilont/android/andythefishrobot/DBAdapter;->open()Lcom/bilont/android/andythefishrobot/DBAdapter;

    .line 481
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v2, v2, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v2}, Lcom/bilont/android/andythefishrobot/DBAdapter;->getAllTitles()Landroid/database/Cursor;

    move-result-object v0

    .line 482
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->DisplayTitle(Landroid/database/Cursor;)V

    .line 483
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v2, v2, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v2}, Lcom/bilont/android/andythefishrobot/DBAdapter;->close()V

    .line 477
    monitor-exit v1

    .line 487
    return-void

    .line 477
    .end local v0           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 331
    :try_start_0
    iget v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setState(I)V

    .line 330
    :cond_0
    monitor-exit v0

    .line 333
    return-void

    .line 330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public performGameOver()V
    .locals 13

    .prologue
    .line 1234
    const-string v3, ""

    .line 1235
    .local v3, message:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/bilont/android/andythefishrobot/LunarView;->access$5(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1236
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f05000a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1237
    const/4 v5, 0x1

    .line 1239
    .local v5, result:I
    const-string v6, ""

    .line 1240
    .local v6, score:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v7, v7, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v7}, Lcom/bilont/android/andythefishrobot/DBAdapter;->open()Lcom/bilont/android/andythefishrobot/DBAdapter;

    .line 1241
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v7, v7, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v7}, Lcom/bilont/android/andythefishrobot/DBAdapter;->getAllTitles()Landroid/database/Cursor;

    move-result-object v2

    .line 1243
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1245
    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1247
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v7, v7, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    const-wide/16 v8, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mMonth:I
    invoke-static {v11}, Lcom/bilont/android/andythefishrobot/LunarView;->access$6(Lcom/bilont/android/andythefishrobot/LunarView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1248
    iget-object v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mDay:I
    invoke-static {v11}, Lcom/bilont/android/andythefishrobot/LunarView;->access$7(Lcom/bilont/android/andythefishrobot/LunarView;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mYear:I
    invoke-static {v11}, Lcom/bilont/android/andythefishrobot/LunarView;->access$8(Lcom/bilont/android/andythefishrobot/LunarView;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1249
    iget-wide v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 1247
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/bilont/android/andythefishrobot/DBAdapter;->updateTitle(JLjava/lang/String;Ljava/lang/String;)Z

    .line 1250
    const v7, 0x7f05000d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1280
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v7, v7, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    invoke-virtual {v7}, Lcom/bilont/android/andythefishrobot/DBAdapter;->close()V

    .line 1281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1282
    invoke-virtual {p0, v5, v3, v6}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setState(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1284
    return-void

    .line 1254
    :cond_1
    const/4 v1, 0x1

    .local v1, alfa:I
    :goto_1
    const/4 v7, 0x5

    if-le v1, v7, :cond_3

    .line 1269
    :cond_2
    if-lez v1, :cond_5

    const/4 v7, 0x5

    if-gt v1, v7, :cond_5

    .line 1271
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v7, v7, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    int-to-long v8, v1

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mMonth:I
    invoke-static {v11}, Lcom/bilont/android/andythefishrobot/LunarView;->access$6(Lcom/bilont/android/andythefishrobot/LunarView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1272
    iget-object v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mDay:I
    invoke-static {v11}, Lcom/bilont/android/andythefishrobot/LunarView;->access$7(Lcom/bilont/android/andythefishrobot/LunarView;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mYear:I
    invoke-static {v11}, Lcom/bilont/android/andythefishrobot/LunarView;->access$8(Lcom/bilont/android/andythefishrobot/LunarView;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1273
    iget-wide v11, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 1271
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/bilont/android/andythefishrobot/DBAdapter;->updateTitle(JLjava/lang/String;Ljava/lang/String;)Z

    .line 1274
    const v7, 0x7f05000d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0

    .line 1256
    :cond_3
    iget-wide v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 1257
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1260
    :cond_4
    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1261
    const/4 v0, 0x5

    .local v0, a:I
    :goto_2
    if-le v0, v1, :cond_2

    .line 1263
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1264
    iget-object v7, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    iget-object v7, v7, Lcom/bilont/android/andythefishrobot/LunarView;->db:Lcom/bilont/android/andythefishrobot/DBAdapter;

    int-to-long v8, v0

    const/4 v10, 0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/bilont/android/andythefishrobot/DBAdapter;->updateTitle(JLjava/lang/String;Ljava/lang/String;)Z

    .line 1261
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1277
    .end local v0           #a:I
    :cond_5
    const-string v6, "Your Score : "

    goto/16 :goto_0
.end method

.method public declared-synchronized restoreState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setState(I)V

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    .line 347
    const-string v1, "mX"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mX:D

    .line 348
    const-string v1, "mY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    .line 349
    const-string v1, "mDX"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDX:D

    .line 350
    const-string v1, "mDY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    .line 351
    const-string v1, "mLanderWidth"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    .line 352
    const-string v1, "mLanderHeight"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    .line 353
    const-string v1, "lowerWall"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    .line 354
    const-string v1, "upperWall"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    .line 355
    const-string v1, "physDownAccelSec"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    .line 356
    const-string v1, "physFireAccelSec"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    .line 357
    const-string v1, "mScore"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    .line 358
    const-string v1, "mScoreDelay"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreDelay:I

    .line 359
    const-string v1, "wallUpdateDelay"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    .line 360
    const-string v1, "maxWallUpdateDelay"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    .line 361
    const-string v1, "scoreIncrement"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    .line 343
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 367
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mRun:Z

    if-nez v1, :cond_1

    .line 384
    return-void

    .line 368
    :cond_1
    const/4 v0, 0x0

    .line 370
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 372
    :try_start_1
    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->updatePhysics()V

    .line 373
    :cond_2
    invoke-direct {p0, v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doDraw(Landroid/graphics/Canvas;)V

    .line 371
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    :catchall_1
    move-exception v1

    .line 379
    if-eqz v0, :cond_3

    .line 380
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 382
    :cond_3
    throw v1
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "map"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 394
    if-eqz p1, :cond_0

    .line 395
    :try_start_0
    const-string v1, "mX"

    iget-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 396
    const-string v1, "mY"

    iget-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mY:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 397
    const-string v1, "mDX"

    iget-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 398
    const-string v1, "mDY"

    iget-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mDY:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 399
    const-string v1, "mLanderWidth"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    const-string v1, "lowerWall"

    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->lowerWall:[I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 401
    const-string v1, "upperWall"

    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->upperWall:[I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 402
    const-string v1, "physDownAccelSec"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physDownAccelSec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const-string v1, "physFireAccelSec"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->physFireAccelSec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string v1, "mScore"

    iget-wide v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mScore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 405
    const-string v1, "mScoreDelay"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    const-string v1, "wallUpdateDelay"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->wallUpdateDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    const-string v1, "maxWallUpdateDelay"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->maxWallUpdateDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    const-string v1, "scoreIncrement"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->scoreIncrement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    const-string v1, "mLanderHeight"

    iget v2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLanderHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    :cond_0
    monitor-exit v0

    .line 412
    return-object p1

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFiring(Z)V
    .locals 2
    .parameter "firing"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 527
    :try_start_0
    iput-boolean p1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    .line 526
    monitor-exit v0

    .line 529
    return-void

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mRun:Z

    .line 541
    return-void
.end method

.method public setState(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 552
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setState(ILjava/lang/CharSequence;)V

    .line 551
    monitor-exit v0

    .line 554
    return-void

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setState(ILjava/lang/CharSequence;)V
    .locals 7
    .parameter "mode"
    .parameter "message"

    .prologue
    const/4 v6, 0x4

    const-string v4, "viz"

    const-string v4, "text"

    .line 572
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v4

    .line 573
    :try_start_0
    iput p1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    .line 575
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    if-ne v5, v6, :cond_0

    .line 576
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 577
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "text"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v5, "viz"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 581
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    :goto_0
    monitor-exit v4

    .line 605
    return-void

    .line 583
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    .line 584
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/bilont/android/andythefishrobot/LunarView;->access$5(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 585
    .local v2, res:Landroid/content/res/Resources;
    const-string v3, ""

    .line 586
    .local v3, str:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 587
    const v5, 0x7f050006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 593
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    :cond_2
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 598
    .restart local v1       #msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 599
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v5, "text"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v5, "viz"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 602
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 572
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #str:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 588
    .restart local v2       #res:Landroid/content/res/Resources;
    .restart local v3       #str:Ljava/lang/CharSequence;
    :cond_3
    :try_start_1
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 589
    const v5, 0x7f050007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 590
    :cond_4
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 591
    const v5, 0x7f050008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method public setState(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "mode"
    .parameter "message"
    .parameter "score"

    .prologue
    const/4 v6, 0x4

    const-string v4, "viz"

    const-string v4, "text"

    const-string v4, "\n"

    .line 623
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v4

    .line 624
    :try_start_0
    iput p1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    .line 626
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    if-ne v5, v6, :cond_0

    .line 627
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 628
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 629
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "text"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v5, "viz"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 632
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 623
    :goto_0
    monitor-exit v4

    .line 662
    return-void

    .line 634
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mEngineFiring:Z

    .line 635
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/bilont/android/andythefishrobot/LunarView;->access$5(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 636
    .local v2, res:Landroid/content/res/Resources;
    const-string v3, ""

    .line 637
    .local v3, str:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 638
    const v5, 0x7f050006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 644
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    :cond_2
    if-eqz p3, :cond_3

    .line 649
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    :cond_3
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 655
    .restart local v1       #msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 656
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v5, "text"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v5, "viz"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 658
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 659
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 623
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #str:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 639
    .restart local v2       #res:Landroid/content/res/Resources;
    .restart local v3       #str:Ljava/lang/CharSequence;
    :cond_4
    :try_start_1
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 640
    const v5, 0x7f050007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 641
    :cond_5
    iget v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 642
    const v5, 0x7f050008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method public setSurfaceSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 668
    :try_start_0
    iput p1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasWidth:I

    .line 669
    iput p2, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mCanvasHeight:I

    .line 673
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mBackgroundImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 672
    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 667
    monitor-exit v0

    .line 675
    return-void

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showAbout()V
    .locals 7

    .prologue
    .line 508
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v4

    .line 509
    :try_start_0
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 510
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v0, b:Landroid/os/Bundle;
    const-string v3, ""

    .line 512
    .local v3, str:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/bilont/android/andythefishrobot/LunarView;->access$5(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 513
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f05000f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 514
    const-string v5, "text"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v5, "viz"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 517
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    monitor-exit v4

    .line 519
    return-void

    .line 508
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #str:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public showHelp()V
    .locals 7

    .prologue
    .line 434
    iget-object v4, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v4

    .line 435
    :try_start_0
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 436
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v0, b:Landroid/os/Bundle;
    const-string v3, ""

    .line 438
    .local v3, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/bilont/android/andythefishrobot/LunarView;->access$5(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 439
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f05000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    const-string v5, "text"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v5, "viz"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 443
    iget-object v5, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    monitor-exit v4

    .line 445
    return-void

    .line 434
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public unpause()V
    .locals 5

    .prologue
    .line 682
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 683
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->mLastTime:J

    .line 682
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setState(I)V

    .line 686
    return-void

    .line 682
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
