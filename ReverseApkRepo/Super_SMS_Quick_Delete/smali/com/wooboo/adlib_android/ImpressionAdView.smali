.class public final Lcom/wooboo/adlib_android/ImpressionAdView;
.super Landroid/widget/PopupWindow;
.source "ImpressionAdView.java"


# static fields
.field private static adView:Lcom/wooboo/adlib_android/ImpressionAdView;

.field private static button:Landroid/widget/ImageButton;

.field private static closebmp:Landroid/graphics/drawable/BitmapDrawable;

.field private static context:Landroid/content/Context;

.field private static frame:Landroid/widget/RelativeLayout;

.field private static freshInterval:I

.field private static freshTimer:Ljava/util/Timer;

.field private static handler:Landroid/os/Handler;

.field private static height:I

.field private static parentView:Landroid/view/View;

.field private static textColor:I

.field private static uiThreadHandler:Landroid/os/Handler;

.field private static width:I

.field private static x_location:I

.field private static y_location:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->y_location:I

    .line 29
    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->x_location:I

    .line 34
    const/16 v0, 0x30

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->height:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->handler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->closebmp:Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 427
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 442
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 443
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 439
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 435
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 431
    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "contentView"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 456
    return-void
.end method

.method private constructor <init>(Landroid/view/View;II)V
    .locals 0
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 451
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 452
    return-void
.end method

.method private constructor <init>(Landroid/view/View;IIZ)V
    .locals 0
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 448
    return-void
.end method

.method static synthetic access$0()Landroid/view/View;
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getParentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Lcom/wooboo/adlib_android/ImpressionAdView;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    return-object v0
.end method

.method static synthetic access$10()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->button:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->closebmp:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getX_location()I

    move-result v0

    return v0
.end method

.method static synthetic access$13()I
    .locals 1

    .prologue
    .line 401
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getY_location()I

    move-result v0

    return v0
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->requestFreshAd(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getWh()I

    move-result v0

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getHt()I

    move-result v0

    return v0
.end method

.method static synthetic access$6()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->frame:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$8()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->frame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9(Landroid/widget/ImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->button:Landroid/widget/ImageButton;

    return-void
.end method

.method public static close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 366
    sget-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    if-eqz v1, :cond_0

    .line 367
    sget-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/wooboo/adlib_android/ImpressionAdView$3;

    invoke-direct {v2}, Lcom/wooboo/adlib_android/ImpressionAdView$3;-><init>()V

    .line 376
    const-wide/16 v3, 0x1f40

    .line 367
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    sget-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    sget-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->dismiss()V

    .line 380
    sget-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->frame:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 381
    sget-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->frame:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 382
    const/4 v1, 0x0

    sput-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->frame:Landroid/widget/RelativeLayout;

    .line 383
    const/4 v1, 0x0

    sput-boolean v1, Lcom/wooboo/adlib_android/___;->isGif:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 386
    .local v0, e:Ljava/lang/Exception;
    sput-object v5, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    goto :goto_0
.end method

.method private static freshAdAtTime(Z)V
    .locals 7
    .parameter "fresh"

    .prologue
    .line 230
    sget-object v6, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    monitor-enter v6

    .line 231
    if-eqz p0, :cond_1

    :try_start_0
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshInterval:I

    if-lez v0, :cond_1

    .line 232
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshTimer:Ljava/util/Timer;

    .line 234
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/wooboo/adlib_android/ImpressionAdView$1;

    invoke-direct {v1}, Lcom/wooboo/adlib_android/ImpressionAdView$1;-><init>()V

    .line 242
    const-wide/16 v2, 0x7d0

    sget v4, Lcom/wooboo/adlib_android/ImpressionAdView;->freshInterval:I

    int-to-long v4, v4

    .line 234
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 230
    :cond_0
    :goto_0
    monitor-exit v6

    .line 252
    return-void

    .line 244
    :cond_1
    if-eqz p0, :cond_2

    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshInterval:I

    if-nez v0, :cond_0

    .line 245
    :cond_2
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 247
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->freshTimer:Ljava/util/Timer;

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static getHt()I
    .locals 1

    .prologue
    .line 410
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->height:I

    return v0
.end method

.method private static getMID(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const-string v7, "Wooboo SDK"

    .line 172
    const/4 v3, 0x1

    .line 174
    .local v3, mid:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 176
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 175
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 177
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 178
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "Market_ID"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 179
    const-string v4, "Wooboo SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The Market_ID is set to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 181
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Wooboo SDK"

    .line 184
    const-string v4, "Could not read Market_ID meta-data from AndroidManifest.xml."

    .line 183
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const-string v7, "Wooboo SDK"

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, id:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 194
    .local v3, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 193
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 195
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 196
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "Wooboo_PID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    const-string v4, "Wooboo SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wooboo_PID reads from AndroidManifest.xml is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #manager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 202
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Wooboo SDK"

    .line 203
    const-string v4, "Could not read Wooboo_PID meta-data from AndroidManifest.xml."

    .line 202
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->parentView:Landroid/view/View;

    return-object v0
.end method

.method protected static getTextColor()I
    .locals 1

    .prologue
    .line 362
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->textColor:I

    return v0
.end method

.method private static getWh()I
    .locals 1

    .prologue
    .line 418
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    return v0
.end method

.method private static getX_location()I
    .locals 1

    .prologue
    .line 394
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->x_location:I

    return v0
.end method

.method private static getY_location()I
    .locals 1

    .prologue
    .line 402
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->y_location:I

    return v0
.end method

.method private static requestFreshAd(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 256
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->uiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->uiThreadHandler:Landroid/os/Handler;

    .line 259
    :cond_0
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView$2;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/ImpressionAdView$2;-><init>()V

    .line 333
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView$2;->start()V

    .line 335
    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 350
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->context:Landroid/content/Context;

    .line 351
    return-void
.end method

.method private static setFreshAdInterval(I)V
    .locals 5
    .parameter "freshAdInterval"

    .prologue
    const-string v4, "AdView.setRequestInterval("

    .line 209
    const/16 v1, 0x14

    .line 210
    .local v1, mins:I
    const/16 v0, 0x258

    .line 212
    .local v0, maxs:I
    if-gtz p0, :cond_1

    .line 213
    const/4 p0, 0x0

    .line 221
    :cond_0
    :goto_0
    mul-int/lit16 v2, p0, 0x3e8

    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->freshInterval:I

    .line 222
    sget v2, Lcom/wooboo/adlib_android/ImpressionAdView;->freshInterval:I

    if-nez v2, :cond_3

    .line 223
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wooboo/adlib_android/ImpressionAdView;->freshAdAtTime(Z)V

    .line 227
    :goto_1
    return-void

    .line 214
    :cond_1
    if-ge p0, v1, :cond_2

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdView.setRequestInterval("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    const-string v3, ") seconds must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_2
    if-le p0, v0, :cond_0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdView.setRequestInterval("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    const-string v3, ") seconds must be <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/wooboo/adlib_android/ImpressionAdView;->freshAdAtTime(Z)V

    goto :goto_1
.end method

.method private static setHt(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 414
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->height:I

    .line 415
    return-void
.end method

.method private static setParentView(Landroid/view/View;)V
    .locals 0
    .parameter "parentView"

    .prologue
    .line 346
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->parentView:Landroid/view/View;

    .line 347
    return-void
.end method

.method private static setTextColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    .line 354
    const/high16 v0, -0x100

    or-int/2addr v0, p0

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->textColor:I

    .line 355
    return-void
.end method

.method private static setWh(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 422
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    .line 423
    return-void
.end method

.method private static setX_location(I)V
    .locals 0
    .parameter "x_location"

    .prologue
    .line 398
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->x_location:I

    .line 399
    return-void
.end method

.method private static setY_location(I)V
    .locals 0
    .parameter "y_location"

    .prologue
    .line 406
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->y_location:I

    .line 407
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;IIIIZI)V
    .locals 2
    .parameter "context"
    .parameter "parent"
    .parameter "location_x"
    .parameter "location_y"
    .parameter "height"
    .parameter "textColor"
    .parameter "isTesting"
    .parameter "freshAdInterval"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 124
    const-string v0, "The parent view that you add is null,please check whether the parent view is initialized or is a real view."

    invoke-static {v0}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    .line 127
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 128
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .end local v0           #dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 129
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .end local v0           #dm:Landroid/util/DisplayMetrics;
    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    .line 130
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    const/16 v1, 0x140

    if-lt v0, v1, :cond_1

    .line 131
    const/16 v0, 0x140

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    .line 133
    :cond_1
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/ImpressionAdView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    .line 134
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    .line 135
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setAnimationStyle(I)V

    .line 136
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->setContext(Landroid/content/Context;)V

    .line 137
    invoke-static {p2}, Lcom/wooboo/adlib_android/ImpressionAdView;->setX_location(I)V

    .line 138
    invoke-static {p3}, Lcom/wooboo/adlib_android/ImpressionAdView;->setY_location(I)V

    .line 139
    sget p2, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    .end local p2
    invoke-static {p2}, Lcom/wooboo/adlib_android/ImpressionAdView;->setWh(I)V

    .line 140
    invoke-static {p4}, Lcom/wooboo/adlib_android/ImpressionAdView;->setHt(I)V

    .line 141
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->m(Landroid/content/Context;)V

    .line 142
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->getPID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 143
    .local p2, Wooboo_PID:Ljava/lang/String;
    invoke-static {p2}, Lcom/wooboo/adlib_android/___;->c(Ljava/lang/String;)V

    .line 144
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->getMID(Landroid/content/Context;)I

    move-result p2

    .line 145
    .local p2, market_id:I
    invoke-static {p2}, Lcom/wooboo/adlib_android/___;->e(I)V

    .line 146
    invoke-static {p6}, Lcom/wooboo/adlib_android/___;->setInTestMode(Z)V

    .line 147
    invoke-static {p5}, Lcom/wooboo/adlib_android/ImpressionAdView;->setTextColor(I)V

    .line 148
    invoke-static {p1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setParentView(Landroid/view/View;)V

    .line 149
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->requestFreshAd(Landroid/content/Context;)V

    .line 150
    invoke-static {p7}, Lcom/wooboo/adlib_android/ImpressionAdView;->setFreshAdInterval(I)V

    .line 152
    :try_start_0
    sget-object p1, Lcom/wooboo/adlib_android/ImpressionAdView;->closebmp:Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    if-nez p1, :cond_2

    .line 153
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 154
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;

    move-result-object p2

    .end local p2           #market_id:I
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "btn.png"

    .end local p3
    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 153
    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object p1, Lcom/wooboo/adlib_android/ImpressionAdView;->closebmp:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 160
    .local p1, pit:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->r(Ljava/lang/String;)V

    .line 161
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->gd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 162
    .local p1, uid:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->d(Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->gl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 164
    .local p1, ml:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->o(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 166
    .local p1, pk:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->_p(Ljava/lang/String;)V

    .line 167
    invoke-static {p0}, Lcom/wooboo/adlib_android/u;->getInstance(Landroid/content/Context;)Lcom/wooboo/adlib_android/u;

    move-result-object p0

    .end local p0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .end local p1           #pk:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/wooboo/adlib_android/u;->getValue(Ljava/lang/String;)I

    move-result p0

    .line 168
    .local p0, mid:I
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->setS(I)V

    .line 169
    return-void

    .line 155
    .local p0, context:Landroid/content/Context;
    :catch_0
    move-exception p1

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;IIIIZII)V
    .locals 2
    .parameter "context"
    .parameter "Wooboo_PID"
    .parameter "parent"
    .parameter "location_x"
    .parameter "location_y"
    .parameter "height"
    .parameter "textColor"
    .parameter "isTesting"
    .parameter "freshAdInterval"
    .parameter "Market_ID"

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 62
    const-string v0, "The parent view that you add is null,please check whether the parent view is initialized or is a real view."

    invoke-static {v0}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    .line 65
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .end local v0           #dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 67
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .end local v0           #dm:Landroid/util/DisplayMetrics;
    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    .line 68
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    const/16 v1, 0x140

    if-lt v0, v1, :cond_1

    .line 69
    const/16 v0, 0x140

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    .line 71
    :cond_1
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/ImpressionAdView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    .line 72
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->adView:Lcom/wooboo/adlib_android/ImpressionAdView;

    .line 73
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setAnimationStyle(I)V

    .line 74
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->setContext(Landroid/content/Context;)V

    .line 75
    invoke-static {p3}, Lcom/wooboo/adlib_android/ImpressionAdView;->setX_location(I)V

    .line 76
    invoke-static {p4}, Lcom/wooboo/adlib_android/ImpressionAdView;->setY_location(I)V

    .line 77
    sget p3, Lcom/wooboo/adlib_android/ImpressionAdView;->width:I

    .end local p3
    invoke-static {p3}, Lcom/wooboo/adlib_android/ImpressionAdView;->setWh(I)V

    .line 78
    invoke-static {p5}, Lcom/wooboo/adlib_android/ImpressionAdView;->setHt(I)V

    .line 79
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->m(Landroid/content/Context;)V

    .line 80
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->c(Ljava/lang/String;)V

    .line 81
    const-string p3, "Wooboo SDK"

    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    const-string p5, "Your Wooboo_PID is "

    .end local p5
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p7}, Lcom/wooboo/adlib_android/___;->setInTestMode(Z)V

    .line 83
    invoke-static {p9}, Lcom/wooboo/adlib_android/___;->e(I)V

    .line 84
    const-string p1, "Wooboo SDK"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "The Market_ID is set to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p6}, Lcom/wooboo/adlib_android/ImpressionAdView;->setTextColor(I)V

    .line 86
    invoke-static {p2}, Lcom/wooboo/adlib_android/ImpressionAdView;->setParentView(Landroid/view/View;)V

    .line 87
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->requestFreshAd(Landroid/content/Context;)V

    .line 88
    invoke-static {p8}, Lcom/wooboo/adlib_android/ImpressionAdView;->setFreshAdInterval(I)V

    .line 90
    :try_start_0
    sget-object p1, Lcom/wooboo/adlib_android/ImpressionAdView;->closebmp:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_2

    .line 91
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "btn.png"

    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object p1, Lcom/wooboo/adlib_android/ImpressionAdView;->closebmp:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 98
    .local p1, pit:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->r(Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->gd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 100
    .local p1, uid:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->d(Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->gl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 102
    .local p1, ml:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->o(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 104
    .local p1, pk:Ljava/lang/String;
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->_p(Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lcom/wooboo/adlib_android/u;->getInstance(Landroid/content/Context;)Lcom/wooboo/adlib_android/u;

    move-result-object p0

    .end local p0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .end local p1           #pk:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/wooboo/adlib_android/u;->getValue(Ljava/lang/String;)I

    move-result p0

    .line 106
    .local p0, mid:I
    invoke-static {p0}, Lcom/wooboo/adlib_android/___;->setS(I)V

    .line 107
    return-void

    .line 93
    .local p0, context:Landroid/content/Context;
    :catch_0
    move-exception p1

    goto :goto_0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 338
    invoke-static {p1}, Lcom/wooboo/adlib_android/ImpressionAdView;->freshAdAtTime(Z)V

    .line 339
    return-void
.end method
