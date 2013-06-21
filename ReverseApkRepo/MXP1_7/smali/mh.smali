.class Lmh;
.super Landroid/view/View;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ㅼ꽑嫄:Ljava/util/ArrayList;

.field private final 弱밧:Z

.field private 洹:Ljava/util/HashMap;

.field final synthetic 癤욱븳援:Lmd;

.field private 궗:Landroid/app/KeyguardManager$KeyguardLock;

.field private 꾨뱾:S

.field private 대쫫:Landroid/graphics/Paint;

.field private 뚮Ц:J

.field private 먮:I

.field private 먯껜蹂대떎:S

.field private final 먯꽌:Landroid/content/res/Resources;

.field private 몃Ъ:I

.field private 붿슧:Landroid/media/SoundPool;

.field private 쇰뒗:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lmd;Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 5

    const/4 v1, 0x1

    iput-object p1, p0, Lmh;->癤욱븳援:Lmd;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput-short v0, p0, Lmh;->먯껜蹂대떎:S

    iput-object p3, p0, Lmh;->먯꽌:Landroid/content/res/Resources;

    iput-boolean p4, p0, Lmh;->弱밧:Z

    iget-boolean v0, p0, Lmh;->弱밧:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmh;->쇰뒗:Landroid/graphics/Paint;

    iget-object v0, p0, Lmh;->쇰뒗:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmh;->대쫫:Landroid/graphics/Paint;

    iget-object v0, p0, Lmh;->대쫫:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lmh;->대쫫:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmh;->대쫫:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-static {v1}, Lee;->먯꽌(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmh;->洹:Ljava/util/HashMap;

    iget-object v0, p0, Lmh;->먯꽌:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "effect0.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    :try_start_0
    new-instance v0, Landroid/media/SoundPool;

    const/16 v2, 0x10

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lmh;->붿슧:Landroid/media/SoundPool;

    iget-object v0, p0, Lmh;->붿슧:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lmh;->먮:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    :try_start_1
    sget-object v0, Lcom/mxtech/videoplayer/L;->꾨뱾:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lmh;->궗:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v0, p0, Lmh;->궗:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0

    :catch_0
    move-exception v0

    sget-object v1, Lmd;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmh;->궗:Landroid/app/KeyguardManager$KeyguardLock;

    goto :goto_0
.end method

.method private 癤욱븳援(IFFJLjava/lang/String;ZZ)Lmm;
    .locals 9

    iget-object v0, p0, Lmh;->먯꽌:Landroid/content/res/Resources;

    const-string v1, "drawable"

    const-string v2, "com.mxtech.kidslock"

    invoke-virtual {v0, p6, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lmd;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.mxtech.kidslock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lmh;->洹:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmh;->먯꽌:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lmh;->洹:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p7, :cond_1

    new-instance v0, Lml;

    iget v1, p0, Lmh;->몃Ъ:I

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lml;-><init>(IIFFJLandroid/graphics/Bitmap;Z)V

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lmf;

    iget v1, p0, Lmh;->몃Ъ:I

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lmf;-><init>(IIFFJLandroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_2
    move-object v7, v0

    goto :goto_0
.end method

.method private 癤욱븳援(IFFJ)V
    .locals 9

    iget-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v6, "trace_heart_stroke"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lmh;->癤욱븳援(IFFJLjava/lang/String;ZZ)Lmm;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmh;->invalidate()V

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    div-float v6, v0, v1

    :goto_1
    iget-object v0, p0, Lmh;->붿슧:Landroid/media/SoundPool;

    iget v1, p0, Lmh;->먮:I

    const v2, 0x3d8f5c29

    const v3, 0x3d8f5c29

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :goto_2
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm;

    iget v2, v0, Lmm;->몃Ъ:F

    sub-float v2, p2, v2

    iget v0, v0, Lmm;->먯껜蹂대떎:F

    sub-float v0, p3, v0

    mul-float/2addr v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    invoke-static {}, Lmd;->대쫫()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_2

    :pswitch_0
    new-instance v0, Lmg;

    iget v1, p0, Lmh;->몃Ъ:I

    iget-object v7, p0, Lmh;->쇰뒗:Landroid/graphics/Paint;

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lmg;-><init>(IIFFJLandroid/graphics/Paint;Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lmg;

    iget v1, p0, Lmh;->몃Ъ:I

    iget-object v7, p0, Lmh;->대쫫:Landroid/graphics/Paint;

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lmg;-><init>(IIFFJLandroid/graphics/Paint;Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lmk;

    iget v1, p0, Lmh;->몃Ъ:I

    iget-object v7, p0, Lmh;->쇰뒗:Landroid/graphics/Paint;

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lmk;-><init>(IIFFJLandroid/graphics/Paint;Z)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lmk;

    iget v1, p0, Lmh;->몃Ъ:I

    iget-object v7, p0, Lmh;->대쫫:Landroid/graphics/Paint;

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lmk;-><init>(IIFFJLandroid/graphics/Paint;Z)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lmn;

    iget v1, p0, Lmh;->몃Ъ:I

    iget-object v7, p0, Lmh;->쇰뒗:Landroid/graphics/Paint;

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lmn;-><init>(IIFFJLandroid/graphics/Paint;Z)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lmn;

    iget v1, p0, Lmh;->몃Ъ:I

    iget-object v7, p0, Lmh;->대쫫:Landroid/graphics/Paint;

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lmn;-><init>(IIFFJLandroid/graphics/Paint;Z)V

    goto/16 :goto_0

    :pswitch_6
    const-string v6, "trace_star_fill"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lmh;->癤욱븳援(IFFJLjava/lang/String;ZZ)Lmm;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    const-string v6, "trace_star_stroke"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lmh;->癤욱븳援(IFFJLjava/lang/String;ZZ)Lmm;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    const-string v6, "trace_heart_fill"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lmh;->癤욱븳援(IFFJLjava/lang/String;ZZ)Lmm;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lmd;->洹()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v1

    invoke-static {}, Lmd;->洹()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v6, v0, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lmh;->癤욱븳援(IFFJLjava/lang/String;ZZ)Lmm;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    mul-float v6, v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    iget-object v1, p0, Lmh;->癤욱븳援:Lmd;

    invoke-interface {v0, v1, p1}, Lmj;->癤욱븳援(Lmd;Landroid/view/KeyEvent;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v8

    :pswitch_1
    iget-object v1, p0, Lmh;->癤욱븳援:Lmd;

    invoke-virtual {v1, v0}, Lmd;->removeMessages(I)V

    iget v1, p0, Lmh;->몃Ъ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmh;->몃Ъ:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lmh;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-gez v9, :cond_1

    invoke-virtual {p0}, Lmh;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_2

    :cond_1
    iget-object v9, p0, Lmh;->癤욱븳援:Lmd;

    const/16 v10, 0x80

    invoke-virtual {v9, v10}, Lmd;->癤욱븳援(I)V

    :cond_2
    invoke-static {}, Lmd;->몃Ъ()F

    move-result v9

    cmpg-float v9, v2, v9

    if-gez v9, :cond_4

    invoke-static {}, Lmd;->몃Ъ()F

    move-result v9

    cmpg-float v9, v3, v9

    if-gez v9, :cond_3

    :goto_1
    if-ne v0, v7, :cond_6

    iput-short v7, p0, Lmh;->먯껜蹂대떎:S

    :goto_2
    iget-boolean v0, p0, Lmh;->弱밧:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lmh;->癤욱븳援(IFFJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmh;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lmd;->몃Ъ()F

    move-result v9

    sub-float/2addr v0, v9

    cmpl-float v0, v3, v0

    if-lez v0, :cond_11

    move v0, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmh;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lmd;->몃Ъ()F

    move-result v9

    sub-float/2addr v0, v9

    cmpl-float v0, v2, v0

    if-lez v0, :cond_11

    invoke-static {}, Lmd;->몃Ъ()F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    move v0, v8

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lmh;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lmd;->몃Ъ()F

    move-result v9

    sub-float/2addr v0, v9

    cmpl-float v0, v3, v0

    if-lez v0, :cond_11

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    iget-short v9, p0, Lmh;->먯껜蹂대떎:S

    if-eq v9, v7, :cond_7

    iget-short v7, p0, Lmh;->먯껜蹂대떎:S

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v7, v7, 0x4

    if-ne v7, v0, :cond_7

    iget-wide v9, p0, Lmh;->뚮Ц:J

    sub-long v9, v4, v9

    const-wide/16 v11, 0x7d0

    cmp-long v7, v9, v11

    if-lez v7, :cond_8

    :cond_7
    iput-short v0, p0, Lmh;->먯껜蹂대떎:S

    iput-wide v4, p0, Lmh;->뚮Ц:J

    iput-short v6, p0, Lmh;->꾨뱾:S

    goto :goto_2

    :cond_8
    iget-short v6, p0, Lmh;->꾨뱾:S

    add-int/lit8 v6, v6, -0x1

    int-to-short v6, v6

    iput-short v6, p0, Lmh;->꾨뱾:S

    if-lez v6, :cond_9

    iput-short v0, p0, Lmh;->먯껜蹂대떎:S

    iput-wide v4, p0, Lmh;->뚮Ц:J

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v8}, Lmh;->performHapticFeedback(I)Z

    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-virtual {v0}, Lmd;->ㅼ꽑嫄()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-boolean v2, p0, Lmh;->弱밧:Z

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmh;->癤욱븳援(IFFJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lmh;->invalidate()V

    goto/16 :goto_0

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm;

    iget v2, v0, Lmm;->대쫫:I

    iget v3, p0, Lmh;->몃Ъ:I

    if-ne v2, v3, :cond_a

    iget v2, v0, Lmm;->洹:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v0, Lmm;->몃Ъ:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v0, Lmm;->먯껜蹂대떎:F

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm;

    iget v4, v0, Lmm;->대쫫:I

    iget v5, p0, Lmh;->몃Ъ:I

    if-ne v4, v5, :cond_c

    iget v4, v0, Lmm;->洹:I

    if-ne v4, v2, :cond_c

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Lmm;->몃Ъ:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Lmm;->먯껜蹂대떎:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lmm;->뚮Ц:J

    invoke-virtual {p0}, Lmh;->invalidate()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lmh;->癤욱븳援:Lmd;

    sget v2, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lmd;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lmh;->invalidate()V

    goto/16 :goto_0

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm;

    iget v2, v0, Lmm;->대쫫:I

    iget v3, p0, Lmh;->몃Ъ:I

    if-ne v2, v3, :cond_e

    iget v2, v0, Lmm;->洹:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_10

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v0, Lmm;->몃Ъ:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v0, Lmm;->먯껜蹂대떎:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmm;->뚮Ц:J

    goto :goto_4

    :cond_10
    iget-wide v2, v0, Lmm;->뚮Ц:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmm;->뚮Ц:J

    goto :goto_4

    :cond_11
    move v0, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v1, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-virtual {v0, p0}, Lmd;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_6

    const-wide/16 v0, 0x4b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lmh;->癤욱븳援:Lmd;

    invoke-virtual {v2, p0, v0, v1}, Lmd;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm;

    invoke-virtual {v0, p1, v2, v3}, Lmm;->癤욱븳援(Landroid/graphics/Canvas;J)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lmm;->癤욱븳援()Z

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-virtual {v0, p0}, Lmd;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lmh;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->癤욱븳援(Lmd;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmh;->癤욱븳援:Lmd;

    invoke-static {v1}, Lmd;->궗(Lmd;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmh;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    iget-object v1, p0, Lmh;->癤욱븳援:Lmd;

    invoke-interface {v0, v1, p1}, Lmj;->癤욱븳援(Lmd;Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lmh;->invalidate()V

    return-void
.end method

.method public 癤욱븳援()V
    .locals 1

    iget-object v0, p0, Lmh;->궗:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmh;->궗:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    :cond_0
    return-void
.end method
