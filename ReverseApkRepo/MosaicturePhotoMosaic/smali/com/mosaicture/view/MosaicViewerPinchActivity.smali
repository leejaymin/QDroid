.class public Lcom/mosaicture/view/MosaicViewerPinchActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Lcom/markupartist/android/widget/ActionBar;


# instance fields
.field private b:Lcom/mosaicture/zoom/ImageZoomViewTouch;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->d:I

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerPinchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->b:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerPinchActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerPinchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerPinchActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerPinchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->c:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerPinchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/markupartist/android/widget/ActionBar;

    sput-object v0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    new-instance v1, Lcom/markupartist/android/widget/c;

    invoke-static {p0}, Lcom/mosaicture/view/MosaictureActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-direct {v1, p0, v2, v3}, Lcom/markupartist/android/widget/c;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/markupartist/android/widget/ActionBar;->a(Lcom/markupartist/android/widget/b;)V

    sget-object v0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->c()V

    sget-object v0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    new-instance v1, Lcom/markupartist/android/widget/c;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/mosaicture/view/MosaicViewerPinchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f020017

    invoke-direct {v1, p0, v2, v3}, Lcom/markupartist/android/widget/c;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/markupartist/android/widget/ActionBar;->b(Lcom/markupartist/android/widget/b;)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mosaicture/g/d;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->d:I

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->c:Ljava/lang/String;

    const/16 v2, 0x7d0

    const/16 v3, 0x7d0

    sget-object v4, Lcom/mosaicture/g/e;->b:Lcom/mosaicture/g/e;

    invoke-static {v1, v2, v3, v4}, Lcom/mosaicture/g/d;->a(Ljava/lang/String;IILcom/mosaicture/g/e;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->e:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->b:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->d:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a(Landroid/graphics/Bitmap;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Image Viewer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v1, p0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-object v0, Lcom/mosaicture/view/MosaicViewerPinchActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/mosaicture/view/MosaicViewerPinchActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
