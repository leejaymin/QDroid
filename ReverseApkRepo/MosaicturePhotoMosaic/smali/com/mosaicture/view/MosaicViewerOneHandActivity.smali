.class public Lcom/mosaicture/view/MosaicViewerOneHandActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/mosaicture/zoom/ImageZoomView;

.field private b:Lcom/mosaicture/zoom/c;

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/mosaicture/zoom/l;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const/high16 v1, 0x3f00

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/c;->a()Lcom/mosaicture/zoom/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/p;->c(F)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/c;->a()Lcom/mosaicture/zoom/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/p;->d(F)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/c;->a()Lcom/mosaicture/zoom/p;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/p;->e(F)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/c;->a()Lcom/mosaicture/zoom/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/zoom/p;->notifyObservers()V

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/MosaicViewerOneHandActivity;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->setContentView(I)V

    new-instance v0, Lcom/mosaicture/zoom/c;

    invoke-direct {v0}, Lcom/mosaicture/zoom/c;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->e:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->e:Ljava/lang/String;

    const/16 v1, 0x7d0

    const/16 v2, 0x7d0

    sget-object v3, Lcom/mosaicture/g/e;->b:Lcom/mosaicture/g/e;

    invoke-static {v0, v1, v2, v3}, Lcom/mosaicture/g/d;->a(Ljava/lang/String;IILcom/mosaicture/g/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/mosaicture/zoom/l;

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaicture/zoom/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->d:Lcom/mosaicture/zoom/l;

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->d:Lcom/mosaicture/zoom/l;

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/l;->a(Lcom/mosaicture/zoom/c;)V

    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/zoom/ImageZoomView;

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a:Lcom/mosaicture/zoom/ImageZoomView;

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a:Lcom/mosaicture/zoom/ImageZoomView;

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v1}, Lcom/mosaicture/zoom/c;->a()Lcom/mosaicture/zoom/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/ImageZoomView;->a(Lcom/mosaicture/zoom/p;)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a:Lcom/mosaicture/zoom/ImageZoomView;

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/ImageZoomView;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a:Lcom/mosaicture/zoom/ImageZoomView;

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->d:Lcom/mosaicture/zoom/l;

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/ImageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a:Lcom/mosaicture/zoom/ImageZoomView;

    invoke-virtual {v1}, Lcom/mosaicture/zoom/ImageZoomView;->a()Lcom/mosaicture/zoom/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/c;->a(Lcom/mosaicture/zoom/a;)V

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/mosaicture/view/n;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/n;-><init>(Lcom/mosaicture/view/MosaicViewerOneHandActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Image Viewer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f070010

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a:Lcom/mosaicture/zoom/ImageZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/ImageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/c;->a()Lcom/mosaicture/zoom/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/zoom/p;->deleteObservers()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/mosaicture/view/MosaicViewerOneHandActivity;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
