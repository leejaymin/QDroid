.class public Lcom/mosaicture/view/TabGalleryActivity;
.super Lcom/mosaicture/view/StandardLeakSafeActivity;

# interfaces
.implements Lcom/mosaicture/view/m;


# instance fields
.field private a:Lcom/mosaicture/c/f;

.field private b:Landroid/widget/ViewSwitcher;

.field private c:[J

.field private d:[Ljava/lang/String;

.field private e:[Z

.field private f:Lcom/mosaicture/view/aa;

.field private g:Landroid/app/ProgressDialog;

.field private h:I

.field private final i:I

.field private final j:I

.field private k:I

.field private l:Z

.field private m:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;-><init>()V

    iput v1, p0, Lcom/mosaicture/view/TabGalleryActivity;->h:I

    iput v1, p0, Lcom/mosaicture/view/TabGalleryActivity;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->j:I

    iput v1, p0, Lcom/mosaicture/view/TabGalleryActivity;->k:I

    iput-boolean v1, p0, Lcom/mosaicture/view/TabGalleryActivity;->l:Z

    new-instance v0, Lcom/mosaicture/view/u;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/u;-><init>(Lcom/mosaicture/view/TabGalleryActivity;)V

    iput-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/mosaicture/view/ac;

    invoke-direct {v0, p0, p0}, Lcom/mosaicture/view/ac;-><init>(Lcom/mosaicture/view/TabGalleryActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/TabGalleryActivity;I)V
    .locals 0

    iput p1, p0, Lcom/mosaicture/view/TabGalleryActivity;->h:I

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/TabGalleryActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mosaicture/view/TabGalleryActivity;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/TabGalleryActivity;[J)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/TabGalleryActivity;->c:[J

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/TabGalleryActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/TabGalleryActivity;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/TabGalleryActivity;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/TabGalleryActivity;->e:[Z

    return-void
.end method

.method private a(Z)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v5

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/mosaicture/view/TabGalleryActivity;)[Z
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->e:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/mosaicture/view/TabGalleryActivity;)I
    .locals 1

    iget v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->h:I

    return v0
.end method

.method static synthetic b(Lcom/mosaicture/view/TabGalleryActivity;I)V
    .locals 0

    iput p1, p0, Lcom/mosaicture/view/TabGalleryActivity;->k:I

    return-void
.end method

.method static synthetic c(Lcom/mosaicture/view/TabGalleryActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mosaicture/view/TabGalleryActivity;)[J
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->c:[J

    return-object v0
.end method

.method static synthetic e(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/widget/ViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->b:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_0

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->b:Landroid/widget/ViewSwitcher;

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->b:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic f(Lcom/mosaicture/view/TabGalleryActivity;)Lcom/mosaicture/view/aa;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->f:Lcom/mosaicture/view/aa;

    return-object v0
.end method

.method static synthetic g(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/mosaicture/view/TabGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/view/TabGalleryActivity;->a()V

    return-void
.end method

.method static synthetic i(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic j(Lcom/mosaicture/view/TabGalleryActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/mosaicture/view/TabGalleryActivity;)I
    .locals 1

    iget v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->k:I

    return v0
.end method


# virtual methods
.method public final c()[Lcom/markupartist/android/widget/b;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->k:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/markupartist/android/widget/b;

    new-instance v1, Lcom/mosaicture/view/x;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/x;-><init>(Lcom/mosaicture/view/TabGalleryActivity;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/mosaicture/view/z;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/z;-><init>(Lcom/mosaicture/view/TabGalleryActivity;)V

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-instance v2, Lcom/mosaicture/view/y;

    invoke-direct {v2, p0, p0}, Lcom/mosaicture/view/y;-><init>(Lcom/mosaicture/view/TabGalleryActivity;Landroid/content/Context;)V

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Lcom/markupartist/android/widget/b;

    new-instance v1, Lcom/mosaicture/view/w;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/w;-><init>(Lcom/mosaicture/view/TabGalleryActivity;)V

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabGalleryActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/TabGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabGalleryActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->a:Lcom/mosaicture/c/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mosaicture/view/TabGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->a:Lcom/mosaicture/c/f;

    :cond_0
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/mosaicture/view/aa;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/aa;-><init>(Lcom/mosaicture/view/TabGalleryActivity;)V

    iput-object v1, p0, Lcom/mosaicture/view/TabGalleryActivity;->f:Lcom/mosaicture/view/aa;

    iget-object v1, p0, Lcom/mosaicture/view/TabGalleryActivity;->f:Lcom/mosaicture/view/aa;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->g:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->g:Landroid/app/ProgressDialog;

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/TabGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/mosaicture/view/TabGalleryActivity;->g:Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Z)V

    invoke-super {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Z)V

    invoke-super {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onResume()V

    invoke-direct {p0}, Lcom/mosaicture/view/TabGalleryActivity;->a()V

    return-void
.end method
