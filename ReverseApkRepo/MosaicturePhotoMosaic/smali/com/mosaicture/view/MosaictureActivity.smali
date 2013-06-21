.class public Lcom/mosaicture/view/MosaictureActivity;
.super Landroid/app/TabActivity;


# static fields
.field public static b:Lcom/mosaicture/view/MosaictureActivity;

.field public static c:Lcom/markupartist/android/widget/ActionBar;


# instance fields
.field a:Landroid/view/View$OnTouchListener;

.field d:I

.field e:I

.field f:I

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/widget/ViewFlipper;

.field private l:Landroid/view/GestureDetector;

.field private m:Landroid/widget/TabHost;

.field private n:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    iput v0, p0, Lcom/mosaicture/view/MosaictureActivity;->d:I

    iput v0, p0, Lcom/mosaicture/view/MosaictureActivity;->e:I

    iput v0, p0, Lcom/mosaicture/view/MosaictureActivity;->f:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mosaicture/view/MosaictureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v0, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method static synthetic b(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->k:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic d(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic f(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->i:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic g(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->j:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic h(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->l:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    sget-object v0, Lcom/mosaicture/view/MosaictureActivity;->c:Lcom/markupartist/android/widget/ActionBar;

    if-nez v0, :cond_0

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/markupartist/android/widget/ActionBar;

    sput-object v0, Lcom/mosaicture/view/MosaictureActivity;->c:Lcom/markupartist/android/widget/ActionBar;

    :cond_0
    sget-object v0, Lcom/mosaicture/view/MosaictureActivity;->c:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->d()V

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/m;

    invoke-interface {v0}, Lcom/mosaicture/view/m;->c()[Lcom/markupartist/android/widget/b;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v3, v1, v0

    sget-object v4, Lcom/mosaicture/view/MosaictureActivity;->c:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v4, v3}, Lcom/markupartist/android/widget/ActionBar;->b(Lcom/markupartist/android/widget/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/mosaicture/view/MosaictureActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaictureActivity;->setContentView(I)V

    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/DCIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/MosaictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->b:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mosaicture/a/a;->b:Lcom/mosaicture/g/a;

    invoke-virtual {v0}, Lcom/mosaicture/g/a;->a()I

    move-result v0

    iput v0, p0, Lcom/mosaicture/view/MosaictureActivity;->f:I

    iget v0, p0, Lcom/mosaicture/view/MosaictureActivity;->f:I

    if-ne v0, v4, :cond_6

    new-instance v0, Lcom/mosaicture/view/s;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/s;-><init>(Lcom/mosaicture/view/MosaictureActivity;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/mosaicture/view/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_2
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/markupartist/android/widget/ActionBar;

    sput-object v0, Lcom/mosaicture/view/MosaictureActivity;->c:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->b()V

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mBottomLeftStrip"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mBottomRightStrip"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_4
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/MosaictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/view/MosaictureActivity;->a(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/mosaicture/view/TabGalleryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/MosaictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/view/MosaictureActivity;->a(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/MosaictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/view/MosaictureActivity;->a(Landroid/content/Intent;Ljava/lang/String;)V

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->k:Landroid/widget/ViewFlipper;

    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->g:Landroid/view/animation/Animation;

    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->h:Landroid/view/animation/Animation;

    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->i:Landroid/view/animation/Animation;

    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->j:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->m:Landroid/widget/TabHost;

    new-instance v1, Lcom/mosaicture/view/q;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/q;-><init>(Lcom/mosaicture/view/MosaictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/mosaicture/view/t;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/t;-><init>(Lcom/mosaicture/view/MosaictureActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->l:Landroid/view/GestureDetector;

    new-instance v0, Lcom/mosaicture/view/r;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/r;-><init>(Lcom/mosaicture/view/MosaictureActivity;)V

    iput-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->a:Landroid/view/View$OnTouchListener;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mosaicture/view/MosaictureActivity;->n:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStripEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mosaicture/view/HelpActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaictureActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0046
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    sget-object v0, Lcom/mosaicture/view/MosaictureActivity;->b:Lcom/mosaicture/view/MosaictureActivity;

    if-nez v0, :cond_0

    sput-object p0, Lcom/mosaicture/view/MosaictureActivity;->b:Lcom/mosaicture/view/MosaictureActivity;

    :cond_0
    invoke-virtual {p0}, Lcom/mosaicture/view/MosaictureActivity;->a()V

    return-void
.end method
