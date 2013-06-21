.class public final Lmd;
.super Landroid/os/Handler;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final 癤욱븳援:Ljava/lang/String;

.field private static final 뚮Ц:F

.field private static final 뚮젮議뚮떎怨:Ljava/util/Random;

.field private static final 먮:F

.field private static final 붿슧:[Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:Landroid/view/WindowManager;

.field private 弱밧:Landroid/view/View;

.field private 洹:I

.field private 궗:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private 꾨뱾:I

.field private 대쫫:Landroid/view/animation/Animation;

.field private 먯껜蹂대떎:I

.field private 먯꽌:Lmj;

.field private 몃Ъ:Landroid/widget/Toast;

.field private 쇰뒗:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd;->癤욱븳援:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "trace_car"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "trace_airplane"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "trace_butterfly"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trace_clover"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trace_bird"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "trace_rabbit"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "trace_snail"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "trace_dog"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "trace_fish"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "trace_cat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "trace_dog_footprint"

    aput-object v2, v0, v1

    sput-object v0, Lmd;->붿슧:[Ljava/lang/String;

    const/high16 v0, 0x428c

    invoke-static {v0}, Lee;->먯꽌(F)F

    move-result v0

    sput v0, Lmd;->뚮Ц:F

    const/high16 v0, 0x43c8

    invoke-static {v0}, Lee;->먯꽌(F)F

    move-result v0

    sput v0, Lmd;->먮:F

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lmd;->뚮젮議뚮떎怨:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic 洹()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd;->붿슧:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Lmd;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    return-object v0
.end method

.method static synthetic 궗(Lmd;)I
    .locals 1

    iget v0, p0, Lmd;->먯껜蹂대떎:I

    return v0
.end method

.method static synthetic 대쫫()F
    .locals 1

    sget v0, Lmd;->먮:F

    return v0
.end method

.method static synthetic 먯꽌(Lmd;)Lmj;
    .locals 1

    iget-object v0, p0, Lmd;->먯꽌:Lmj;

    return-object v0
.end method

.method static synthetic 몃Ъ()F
    .locals 1

    sget v0, Lmd;->뚮Ц:F

    return v0
.end method

.method static synthetic 쇰뒗()Ljava/util/Random;
    .locals 1

    sget-object v0, Lmd;->뚮젮議뚮떎怨:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmd;->대쫫:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmd;->대쫫:Landroid/view/animation/Animation;

    iget-object v0, p0, Lmd;->대쫫:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    iget-object v1, p0, Lmd;->대쫫:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    iget v1, p0, Lmd;->먯껜蹂대떎:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lmd;->ㅼ꽑嫄()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmd;->癤욱븳援(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmd;->ㅼ꽑嫄:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd;->ㅼ꽑嫄:Landroid/view/WindowManager;

    iget-object v1, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lmd;->궗:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lmd;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public ㅼ꽑嫄()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmd;->癤욱븳援()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmd;->ㅼ꽑嫄:Landroid/view/WindowManager;

    iget-object v1, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lmd;->궗:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    instance-of v0, v0, Lmh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    check-cast v0, Lmh;

    invoke-virtual {v0}, Lmh;->癤욱븳援()V

    :cond_2
    invoke-virtual {p0}, Lmd;->弱밧()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmd;->removeMessages(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_3
    iput-object v2, p0, Lmd;->ㅼ꽑嫄:Landroid/view/WindowManager;

    iput-object v2, p0, Lmd;->弱밧:Landroid/view/View;

    iput-object v2, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    iput-object v2, p0, Lmd;->대쫫:Landroid/view/animation/Animation;

    iget-object v0, p0, Lmd;->먯꽌:Lmj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd;->먯꽌:Lmj;

    invoke-interface {v0, p0}, Lmj;->궗(Lmd;)V

    goto :goto_0
.end method

.method public 弱밧()V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(I)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    iget v1, p0, Lmd;->꾨뱾:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lmd;->궗()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmd;->몃Ъ:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lmd;->removeMessages(I)V

    sget v0, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lmd;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lmd;->먯꽌:Lmj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmd;->먯꽌:Lmj;

    invoke-interface {v0, p0}, Lmj;->癤욱븳援(Lmd;)V

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/app/Activity;ZIZZ)V
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmd;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmd;->ㅼ꽑嫄:Landroid/view/WindowManager;

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "lock_mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmd;->洹:I

    invoke-virtual {p0}, Lmd;->궗()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.mxtech.kidslock"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lmh;

    iget v0, p0, Lmd;->洹:I

    if-ne v0, v6, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {v4, p0, p1, v3, v0}, Lmh;-><init>(Lmd;Landroid/content/Context;Landroid/content/res/Resources;Z)V

    iput-object v4, p0, Lmd;->弱밧:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_2

    invoke-static {}, Lms;->ㅼ꽑嫄()Z

    move-result v4

    if-eqz v4, :cond_8

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7

    if-eqz p5, :cond_6

    const/16 v1, 0x600

    iput v1, p0, Lmd;->꾨뱾:I

    :goto_3
    const/4 v1, 0x6

    iput v1, p0, Lmd;->먯껜蹂대떎:I

    :goto_4
    iget v1, p0, Lmd;->꾨뱾:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    if-eqz p4, :cond_3

    const/4 v0, 0x0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    :cond_3
    invoke-virtual {p0}, Lmd;->궗()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lnt;->kids_lock_summary:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lmd;->몃Ъ:Landroid/widget/Toast;

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_5
    iget-object v0, p0, Lmd;->ㅼ꽑嫄:Landroid/view/WindowManager;

    iget-object v1, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-static {v0, v1, v3}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lmd;->궗:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_4

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    new-instance v1, Lme;

    invoke-direct {v1, p0}, Lme;-><init>(Lmd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_4
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lmd;->癤욱븳援(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iput v2, p0, Lmd;->洹:I

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x205

    iput v1, p0, Lmd;->꾨뱾:I

    goto :goto_3

    :cond_7
    iput v1, p0, Lmd;->꾨뱾:I

    iput v6, p0, Lmd;->먯껜蹂대떎:I

    goto :goto_4

    :cond_8
    sget-boolean v4, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v5, "status_bar_show_always"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    iput v2, p0, Lmd;->먯껜蹂대떎:I

    iput v2, p0, Lmd;->꾨뱾:I

    goto :goto_4

    :cond_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_b

    if-eqz p5, :cond_a

    const/16 v1, 0x400

    iput v1, p0, Lmd;->꾨뱾:I

    :goto_6
    iput v7, p0, Lmd;->먯껜蹂대떎:I

    goto/16 :goto_4

    :cond_a
    iput v7, p0, Lmd;->꾨뱾:I

    goto :goto_6

    :cond_b
    iput v1, p0, Lmd;->먯껜蹂대떎:I

    iput v1, p0, Lmd;->꾨뱾:I

    goto/16 :goto_4

    :cond_c
    new-instance v0, Lmi;

    invoke-direct {v0, p0, p1}, Lmi;-><init>(Lmd;Landroid/content/Context;)V

    iput-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lnp;->lock:I

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    if-eqz p2, :cond_d

    sget v0, Lnn;->lock_lock_plus:I

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lmd;->쇰뒗:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5

    :cond_d
    sget v0, Lnn;->lock_lock:I

    goto :goto_7
.end method

.method public 癤욱븳援(Lmj;)V
    .locals 0

    iput-object p1, p0, Lmd;->먯꽌:Lmj;

    return-void
.end method

.method public 癤욱븳援()Z
    .locals 1

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 궗()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lmd;->洹:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lmd;->洹:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public 먯꽌()Z
    .locals 1

    iget-object v0, p0, Lmd;->弱밧:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    return v0
.end method
