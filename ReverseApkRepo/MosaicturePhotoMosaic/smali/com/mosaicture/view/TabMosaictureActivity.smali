.class public Lcom/mosaicture/view/TabMosaictureActivity;
.super Lcom/mosaicture/view/StandardLeakSafeActivity;

# interfaces
.implements Lcom/mosaicture/view/m;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/mosaicture/c/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    invoke-static {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->b(I)I

    move-result v0

    return v0
.end method

.method private a()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/mosaicture/view/BaseApp;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/mosaicture/g/k;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/view/TabMosaictureActivity;->d:Lcom/mosaicture/c/f;

    invoke-virtual {v0}, Lcom/mosaicture/c/f;->a()J

    move-result-wide v0

    const-wide/16 v2, 0xc

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/TabMosaictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mosaicture/view/TabMosaictureActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic a(Lcom/mosaicture/view/TabMosaictureActivity;I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mosaicture/g/k;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/mosaicture/view/TabMosaictureActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    sput-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/mosaicture/view/TabMosaictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/mosaicture/view/TabMosaictureActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/TabMosaictureActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabMosaictureActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0a0034

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a0035

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a0036

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a0037

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/mosaicture/view/TabMosaictureActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabMosaictureActivity;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 4

    sget-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mosaicture/crop/CropImage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "maxImageSize"

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mosaicture/view/TabMosaictureActivity;)V
    .locals 6

    const/4 v2, 0x0

    sget v0, Lcom/mosaicture/view/LayoutMessure;->a:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mosaicture/g/q;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/mosaicture/view/LayoutMessure;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mosaicture/g/q;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v0, v0, -0x18

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v3, 0x3f19999a

    mul-float/2addr v0, v3

    float-to-int v0, v0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit16 v3, v3, 0x12c

    if-le v3, v1, :cond_2

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    add-int/lit16 v0, v1, -0x12c

    int-to-double v0, v0

    const-wide v3, 0x3fdeb851eb851eb8L

    mul-double/2addr v0, v3

    double-to-int v0, v0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    invoke-static {v2}, Lcom/mosaicture/view/TabMosaictureActivity;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x4320

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/mosaicture/view/TabMosaictureActivity;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()[Lcom/markupartist/android/widget/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->b()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->b()V

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/mosaicture/view/MosaicViewerProgressActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "imagePath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/TabMosaictureActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->setContentView(I)V

    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0031

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/TabMosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    move-result-object v1

    iput-object v1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->d:Lcom/mosaicture/c/f;

    iget-object v1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/mosaicture/view/ad;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/ad;-><init>(Lcom/mosaicture/view/TabMosaictureActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Lcom/mosaicture/view/ae;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/ae;-><init>(Lcom/mosaicture/view/TabMosaictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/mosaicture/view/af;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/af;-><init>(Lcom/mosaicture/view/TabMosaictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/mosaicture/view/ag;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/ag;-><init>(Lcom/mosaicture/view/TabMosaictureActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onLastPhotoClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0034

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/mosaicture/view/TabMosaictureActivity;->b:[Ljava/lang/String;

    aget-object v0, v1, v0

    sput-object v0, Lcom/mosaicture/view/TabMosaictureActivity;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mosaicture/view/TabMosaictureActivity;->b()V

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f0a0035

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const v2, 0x7f0a0036

    if-ne v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const v2, 0x7f0a0037

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onResume()V

    return-void
.end method
