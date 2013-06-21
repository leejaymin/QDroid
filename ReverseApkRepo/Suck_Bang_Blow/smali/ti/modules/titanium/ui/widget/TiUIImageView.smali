.class public Lti/modules/titanium/ui/widget/TiUIImageView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIImageView$Animator;,
        Lti/modules/titanium/ui/widget/TiUIImageView$Loader;,
        Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;,
        Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final FRAME_QUEUE_SIZE:I = 0x5

.field public static final INFINITE:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "TiUIImageView"

.field private static final SET_IMAGE:I = 0x2711

.field private static final imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private animating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

.field private defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

.field private downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

.field private firedLoad:Z

.field private handler:Landroid/os/Handler;

.field private imageSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;"
        }
    .end annotation
.end field

.field private imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

.field private images:[Ljava/lang/Object;

.field private loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

.field private loaderThread:Ljava/lang/Thread;

.field private paused:Z

.field private requestedHeight:Lorg/appcelerator/titanium/TiDimension;

.field private requestedWidth:Lorg/appcelerator/titanium/TiDimension;

.field private reverse:Z

.field private timer:Ljava/util/Timer;

.field private token:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 67
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 69
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 192
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->handler:Landroid/os/Handler;

    .line 114
    move-object v0, p1

    check-cast v0, Lti/modules/titanium/ui/ImageViewProxy;

    move-object v2, v0

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 116
    sget-boolean v2, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "TiUIImageView"

    const-string v3, "Creating an ImageView"

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    new-instance v1, Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, view:Lti/modules/titanium/ui/widget/TiImageView;
    new-instance v2, Lti/modules/titanium/ui/widget/TiUIImageView$1;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$1;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/TiImageView;->setOnSizeChangeListener(Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;)V

    .line 129
    new-instance v2, Lti/modules/titanium/ui/widget/TiUIImageView$2;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$2;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    .line 145
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setNativeView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiContext;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method static synthetic access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return v0
.end method

.method static synthetic access$1202(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return p1
.end method

.method static synthetic access$1300(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    return v0
.end method

.method static synthetic access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    return-object v0
.end method

.method static synthetic access$1600(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1700(Lti/modules/titanium/ui/widget/TiUIImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireChange(I)V

    return-void
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIImageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiUIImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    return v0
.end method

.method static synthetic access$602(Lti/modules/titanium/ui/widget/TiUIImageView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    return p1
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method private fireChange(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 384
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 385
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "change"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 387
    return-void
.end method

.method private fireLoad(Ljava/lang/String;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 371
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 372
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "load"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 374
    return-void
.end method

.method private fireStart()V
    .locals 3

    .prologue
    .line 378
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 379
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 380
    return-void
.end method

.method private fireStop()V
    .locals 3

    .prologue
    .line 391
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 392
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "stop"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 393
    return-void
.end method

.method private getView()Lti/modules/titanium/ui/widget/TiImageView;
    .locals 0

    .prologue
    .line 158
    iget-object p0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/TiImageView;

    return-object p0
.end method

.method private makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "object"

    .prologue
    .line 526
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Lorg/appcelerator/titanium/TiContext;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method private setDefaultImage()V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setDefaultImageSource(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 535
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 540
    :goto_0
    return-void

    .line 538
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Lorg/appcelerator/titanium/TiContext;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    goto :goto_0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 211
    if-eqz p1, :cond_1

    .line 212
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    new-instance v0, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>(Ljava/lang/Object;)V

    .line 214
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->handler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;

    .line 221
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :cond_0
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v2, p0, p1}, Lti/modules/titanium/ui/ImageViewProxy;->onBitmapChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 223
    :cond_1
    return-void

    .line 216
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v1

    .line 217
    .local v1, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/widget/TiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setImage(Z)V
    .locals 10
    .parameter "recycle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 544
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 545
    :cond_0
    invoke-direct {p0, v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 585
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_8

    .line 549
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v6}, Lti/modules/titanium/ui/ImageViewProxy;->inTableView()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 550
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v6}, Lti/modules/titanium/ui/ImageViewProxy;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 551
    .local v0, currentBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 552
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 556
    .end local v0           #currentBitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 557
    .local v3, imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 558
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v6, :cond_4

    .line 559
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    .line 566
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 568
    .local v2, getAsync:Z
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 569
    .local v4, uri:Ljava/net/URI;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_5

    move v2, v8

    .line 574
    .end local v4           #uri:Ljava/net/URI;
    :goto_2
    if-eqz v2, :cond_6

    .line 575
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmapAsync(Lorg/appcelerator/titanium/util/TiDownloadListener;)V

    goto :goto_0

    .line 561
    .end local v2           #getAsync:Z
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v5

    .line 562
    .local v5, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v5, :cond_3

    .line 563
    invoke-virtual {v5, v9, p1}, Lti/modules/titanium/ui/widget/TiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .end local v5           #view:Lti/modules/titanium/ui/widget/TiImageView;
    .restart local v2       #getAsync:Z
    .restart local v4       #uri:Ljava/net/URI;
    :cond_5
    move v2, v7

    .line 569
    goto :goto_2

    .line 570
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 571
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v6, "TiUIImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URISyntaxException for url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    const/4 v2, 0x0

    goto :goto_2

    .line 577
    .end local v1           #e:Ljava/net/URISyntaxException;
    :cond_6
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, v6, v7, v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 580
    .end local v2           #getAsync:Z
    :cond_7
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, v6, v7, v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 583
    .end local v3           #imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_8
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto/16 :goto_0
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "d"
    .parameter "token"

    .prologue
    .line 182
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 183
    .local v0, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_1

    .line 184
    sget-object v1, Lti/modules/titanium/ui/widget/TiUIImageView;->imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 185
    :try_start_0
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    if-ne v2, p2, :cond_0

    .line 186
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lti/modules/titanium/ui/widget/TiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 187
    const/4 v2, -0x1

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    .line 189
    :cond_0
    monitor-exit v1

    .line 191
    :cond_1
    return-void

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setImageSource(Ljava/lang/Object;)V
    .locals 8
    .parameter "object"

    .prologue
    .line 499
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v6}, Lti/modules/titanium/ui/ImageViewProxy;->inTableView()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v6}, Lti/modules/titanium/ui/ImageViewProxy;->getImageSources()Ljava/util/ArrayList;

    move-result-object v2

    .line 501
    .local v2, currentSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    if-eqz v2, :cond_0

    .line 502
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 516
    .end local v2           #currentSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    .end local p1
    :goto_0
    return-void

    .line 507
    .restart local p1
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 508
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 509
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 510
    .local v5, o:Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 513
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #o:Ljava/lang/Object;
    .restart local p1
    :cond_1
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .end local p1
    :cond_2
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v6, p0, v7}, Lti/modules/titanium/ui/ImageViewProxy;->onImageSourcesChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 521
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method private setImages()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v1, :cond_0

    .line 339
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 340
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 341
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 342
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    .local v0, loaderThread:Ljava/lang/Thread;
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    if-eqz v1, :cond_2

    .line 344
    const-string v1, "TiUIImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STARTING LOADER THREAD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public clearOpacity(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 756
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 757
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 758
    .local v0, iview:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 759
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 761
    :cond_0
    return-void
.end method

.method public getDuration()D
    .locals 3

    .prologue
    const-string v2, "duration"

    .line 352
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "duration"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "duration"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 359
    :goto_0
    return-wide v0

    .line 356
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->images:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->images:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x21

    int-to-double v0, v0

    goto :goto_0

    .line 359
    :cond_1
    const-wide/high16 v0, 0x4059

    goto :goto_0
.end method

.method protected getParentView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 177
    :goto_0
    return-object v3

    .line 164
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 165
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 166
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object v3, v0

    goto :goto_0

    .line 168
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    if-nez v0, :cond_2

    .line 169
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    .line 170
    .local v1, parentProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 172
    .local v2, parentTiUi:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v2, :cond_2

    .line 173
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .end local v1           #parentProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2           #parentTiUi:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    move-object v3, v4

    .line 177
    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 3

    .prologue
    const-string v2, "repeatCount"

    .line 363
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 198
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2711

    if-ne v2, v3, :cond_0

    .line 199
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 200
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v1

    .line 201
    .local v1, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/widget/TiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 206
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    .end local v1           #view:Lti/modules/titanium/ui/widget/TiImageView;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public handleStart()V
    .locals 7

    .prologue
    .line 434
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    if-nez v0, :cond_2

    .line 435
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 437
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 439
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 440
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STARTING LOADER THREAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lti/modules/titanium/ui/widget/TiUIImageView$Loader;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 446
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 450
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getDuration()D

    move-result-wide v0

    double-to-int v6, v0

    .line 451
    .local v6, duration:I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStart()V

    .line 452
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    int-to-long v2, v6

    int-to-long v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 456
    .end local v6           #duration:I
    :goto_0
    return-void

    .line 454
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 694
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 698
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->pause()V

    .line 699
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 703
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    .line 704
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 708
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 712
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->stop()V

    .line 713
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 461
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .parameter "d"

    .prologue
    const/4 v10, 0x0

    const-string v11, "canScale"

    const-string v9, "images"

    const-string v8, "defaultImage"

    const-string v7, "image"

    .line 599
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v4

    .line 600
    .local v4, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v4, :cond_0

    .line 661
    :goto_0
    return-void

    .line 604
    :cond_0
    const-string v5, "width"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 605
    const-string v5, "width"

    const/4 v6, 0x6

    invoke-static {p1, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 607
    :cond_1
    const-string v5, "height"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 608
    const-string v5, "height"

    const/4 v6, 0x7

    invoke-static {p1, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 611
    :cond_2
    const-string v5, "images"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 612
    const-string v5, "images"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 613
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    .line 621
    :cond_3
    :goto_1
    const-string v5, "canScale"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 622
    const-string v5, "canScale"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiImageView;->setCanScaleImage(Z)V

    .line 624
    :cond_4
    const-string v5, "enableZoomControls"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 625
    const-string v5, "enableZoomControls"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    .line 627
    :cond_5
    const-string v5, "defaultImage"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 629
    :try_start_0
    const-string v5, "image"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "image"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/net/URI;

    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 632
    :cond_6
    const-string v5, "defaultImage"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImageSource(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_7
    :goto_2
    const-string v5, "image"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 639
    const/4 v0, 0x1

    .line 640
    .local v0, changeImage:Z
    const-string v5, "image"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 641
    .local v2, newImage:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v3

    .line 642
    .local v3, source:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 643
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v5, v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 644
    const/4 v0, 0x0

    .line 647
    :cond_8
    if-eqz v0, :cond_9

    .line 648
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    .line 649
    invoke-direct {p0, v10}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    .line 660
    .end local v0           #changeImage:Z
    .end local v2           #newImage:Ljava/lang/Object;
    .end local v3           #source:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 615
    :cond_a
    const-string v5, "url"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 616
    const-string v5, "TiUIImageView"

    const-string v6, "The url property of ImageView is deprecated, use image instead."

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v5, "image"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 618
    const-string v5, "image"

    const-string v5, "url"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 633
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 634
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v5, "defaultImage"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImageSource(Ljava/lang/Object;)V

    goto :goto_2

    .line 652
    .end local v1           #e:Ljava/net/URISyntaxException;
    :cond_b
    const-string v5, "images"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 653
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    const-string v6, "image"

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v5, :cond_9

    .line 655
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    goto :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v2, 0x1

    .line 668
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 669
    .local v0, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v0, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const-string v1, "canScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setCanScaleImage(Z)V

    goto :goto_0

    .line 674
    :cond_2
    const-string v1, "enableZoomControls"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    goto :goto_0

    .line 676
    :cond_3
    const-string v1, "url"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 677
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 678
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    goto :goto_0

    .line 679
    :cond_4
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 680
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 681
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    goto :goto_0

    .line 682
    :cond_5
    const-string v1, "images"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 683
    instance-of v1, p3, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 684
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 685
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto :goto_0

    .line 688
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 766
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 767
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 770
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 773
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 776
    :cond_1
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 777
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 778
    return-void

    .line 770
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 466
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 469
    monitor-exit v0

    .line 471
    :cond_0
    return-void

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOpacity(F)V
    .locals 2
    .parameter "opacity"

    .prologue
    .line 746
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 747
    .local v0, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 748
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 749
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 751
    :cond_0
    return-void
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 153
    check-cast p1, Lti/modules/titanium/ui/ImageViewProxy;

    .end local p1
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 154
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .parameter "reverse"

    .prologue
    .line 726
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 727
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$3;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$3;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 478
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 480
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 482
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 484
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 487
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :cond_2
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 490
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 491
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 492
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 494
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStop()V

    .line 495
    return-void

    .line 487
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 4

    .prologue
    .line 731
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v2

    .line 732
    .local v2, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v2, :cond_0

    .line 733
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 734
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 735
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Lorg/appcelerator/titanium/TiContext;Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    .line 740
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
