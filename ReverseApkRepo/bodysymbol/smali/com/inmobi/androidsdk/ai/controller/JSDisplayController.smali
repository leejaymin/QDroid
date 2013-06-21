.class public Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;
.super Lcom/inmobi/androidsdk/ai/controller/JSController;
.source "JSDisplayController.java"


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/JSController;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V

    .line 43
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 44
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    .line 46
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    .line 49
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 184
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 185
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 186
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 187
    const v5, 0x1020002

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v0, v4, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v0, v5, :cond_14

    .line 193
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2, v0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getWhetherTablet(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 199
    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    move v0, v1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput-boolean v7, v2, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    :cond_1
    move v2, v0

    .line 205
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 206
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Device current rotation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Density of device: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 212
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 213
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 214
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 215
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 216
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 218
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 219
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 218
    iput v0, v5, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    .line 221
    if-eqz v2, :cond_3

    if-ne v2, v8, :cond_15

    .line 222
    :cond_3
    const-string v0, "portrait"

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 226
    :goto_1
    iput-boolean v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    .line 227
    iget-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 228
    iget-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    iget-object v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->adCreativeLocksOrientation(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    .line 232
    :cond_4
    iget-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    if-nez v0, :cond_5

    .line 233
    iget-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    const-string v5, "landscape"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    iput-boolean v7, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    .line 236
    :cond_5
    iget-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    if-ne v0, v7, :cond_6

    .line 237
    iget-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    const-string v5, "portrait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iput-boolean v7, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    .line 240
    :cond_6
    iget-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-nez v0, :cond_7

    .line 241
    iput-boolean v7, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    .line 244
    :cond_7
    iget-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    if-eqz v0, :cond_13

    .line 253
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    if-lez v0, :cond_8

    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    if-gtz v0, :cond_9

    .line 254
    :cond_8
    iput v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 255
    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 256
    iput-boolean v7, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 259
    :cond_9
    if-eqz v2, :cond_a

    if-ne v2, v8, :cond_16

    .line 260
    :cond_a
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 261
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 267
    :goto_2
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 268
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " Device Width: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    const-string v5, " Device height: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_b
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    sub-int v0, v4, v0

    .line 274
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    if-le v2, v3, :cond_c

    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 275
    :cond_c
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    if-le v2, v0, :cond_d

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 277
    :cond_d
    new-array v2, v8, [I

    .line 278
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getLocationOnScreen([I)V

    .line 279
    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    if-gez v4, :cond_e

    .line 280
    aget v4, v2, v1

    iput v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 281
    :cond_e
    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    if-gez v4, :cond_f

    .line 282
    aget v4, v2, v7

    iget v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 283
    sget-boolean v4, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 284
    const-string v4, "InMobiAndroidSDK_3.5.2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "topStuff: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 285
    const-string v6, " ,bottomStuff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_f
    sget-boolean v4, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v4, :cond_10

    .line 289
    const-string v4, "InMobiAndroidSDK_3.5.2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loc 0: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loc 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 290
    aget v2, v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_10
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    add-int/2addr v2, v4

    sub-int v2, v3, v2

    .line 295
    if-gez v2, :cond_11

    .line 296
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 297
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    if-gez v2, :cond_11

    .line 298
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 299
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 304
    :cond_11
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 305
    if-gez v0, :cond_12

    .line 306
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 307
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    if-gez v0, :cond_12

    .line 308
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 309
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 312
    :cond_12
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 313
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 314
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 315
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "final expanded width after density : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string v2, "final expanded height after density "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "portrait width requested :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    const-string v2, "portrait height requested :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_13
    return-object p1

    .line 195
    :cond_14
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto/16 :goto_0

    .line 224
    :cond_15
    const-string v0, "landscape"

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    goto/16 :goto_1

    .line 263
    :cond_16
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 264
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    goto/16 :goto_2
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 421
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 422
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 423
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 424
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 425
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 426
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 427
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    .line 428
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    .line 429
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    .line 430
    iget-object v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    .line 431
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    .line 432
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 433
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 434
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 435
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 436
    iget-object v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 437
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    .line 438
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 439
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 440
    return-void
.end method


# virtual methods
.method a(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 108
    .line 112
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 114
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 115
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Width: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " height: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 121
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    .line 122
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    .line 123
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 124
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    if-gez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    .line 126
    :cond_1
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    if-gez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 128
    :cond_2
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 129
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getLocationOnScreen([I)V

    .line 130
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-gez v0, :cond_3

    .line 131
    aget v0, v5, v1

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    .line 132
    :cond_3
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-gez v0, :cond_a

    .line 133
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 134
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v0, v4, v0

    .line 137
    aget v6, v5, v9

    sub-int/2addr v6, v2

    iput v6, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 138
    sget-boolean v6, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 139
    const-string v6, "InMobiAndroidSDK_3.5.2"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "topStuff: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 140
    const-string v8, " ,bottomStuff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4
    :goto_0
    sget-boolean v6, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 145
    const-string v6, "InMobiAndroidSDK_3.5.2"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loc 0: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " loc 1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 146
    aget v5, v5, v9

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    iget v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget v6, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 151
    if-gez v3, :cond_6

    .line 152
    iget v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    add-int/2addr v3, v5

    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    .line 154
    :cond_6
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-gez v3, :cond_7

    .line 155
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    .line 159
    :cond_7
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    iget v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    add-int/2addr v3, v5

    sub-int v3, v4, v3

    .line 160
    if-gez v3, :cond_8

    .line 161
    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 162
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    sub-int v2, v3, v2

    iput v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 163
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    sub-int v0, v2, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 165
    :cond_8
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-gez v0, :cond_9

    .line 166
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 169
    :cond_9
    return-object p1

    :cond_a
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 458
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "JSDisplayController-> close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 368
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> expand: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    .line 376
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_2

    .line 377
    const-string v0, "window.mraidview.fireErrorEvent(\"Current state is not default\", \"expand\")"

    .line 379
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_3

    .line 384
    const-string v0, "window.mraidview.fireErrorEvent(\"Expand cannot be called on interstitial ad\", \"expand\")"

    .line 386
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 412
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 413
    const-string v2, "Exception while expanding the ad."

    .line 412
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 390
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V

    .line 391
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 392
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> At the time of expand the properties are: tempexpProps.width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    const-string v2, "tempexpProps.height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    const-string v2, "tempexpProps.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    const-string v2, "tempexpProps.boolean1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    const-string v2, "tempexpProps.boolean2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
    const-string v2, "tempexpProps.boolean3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->expand(Ljava/lang/String;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 532
    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getCurrentRotation(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSDisplayController-> getOrientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_0
    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    const-string v0, "-1"

    .line 541
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 542
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSDisplayController-> Error getOrientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 521
    const-string v1, "JSDisplayController-> getPlacementType "

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getPlacementType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "JSDisplayController-> getState "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isViewable()Z
    .locals 2

    .prologue
    .line 511
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "JSDisplayController-> isViewable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> open: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->openURL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 332
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    const-class v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 332
    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 335
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> ExpandProperties is set: expProps.width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expProps.height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expProps.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expProps.boolean1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    const-string v2, "expProps.boolean2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 343
    const-string v2, "expProps.boolean3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandPropertiesForInterstitial(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 350
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 351
    const-string v2, "Exception while setting the expand properties"

    .line 350
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 3
    .parameter

    .prologue
    .line 447
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> useCustomClose"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setCustomClose(Z)V

    .line 452
    return-void
.end method
