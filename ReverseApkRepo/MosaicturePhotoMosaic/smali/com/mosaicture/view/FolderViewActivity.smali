.class public Lcom/mosaicture/view/FolderViewActivity;
.super Lcom/mosaicture/view/StandardLeakSafeActivity;

# interfaces
.implements Lcom/mosaicture/view/m;


# static fields
.field private static b:I

.field private static c:Lcom/mosaicture/view/i;

.field private static d:Lcom/mosaicture/view/a/a;

.field private static e:Lcom/markupartist/android/widget/ActionBar;

.field private static f:I


# instance fields
.field a:Landroid/widget/GridView;

.field private g:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mosaicture/view/FolderViewActivity;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/mosaicture/view/FolderViewActivity;->b:I

    return v0
.end method

.method private a(Z)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/FolderViewActivity;->findViewById(I)Landroid/view/View;

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

.method static synthetic a(Lcom/mosaicture/view/FolderViewActivity;)[Z
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/FolderViewActivity;->g:[Z

    return-object v0
.end method

.method static synthetic b()Lcom/mosaicture/view/a/a;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->d:Lcom/mosaicture/view/a/a;

    return-object v0
.end method

.method static synthetic d()Lcom/mosaicture/view/i;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->c:Lcom/mosaicture/view/i;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/mosaicture/view/FolderViewActivity;->f:I

    return v0
.end method


# virtual methods
.method public final c()[Lcom/markupartist/android/widget/b;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/markupartist/android/widget/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/mosaicture/view/f;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/f;-><init>(Lcom/mosaicture/view/FolderViewActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mosaicture/view/g;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/g;-><init>(Lcom/mosaicture/view/FolderViewActivity;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v3, 0x7f0a0015

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/FolderViewActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/FolderViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/FolderViewActivity;->setContentView(I)V

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/mosaicture/view/FolderViewActivity;->a:Landroid/widget/GridView;

    new-instance v0, Lcom/mosaicture/view/i;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/i;-><init>(Lcom/mosaicture/view/FolderViewActivity;)V

    sput-object v0, Lcom/mosaicture/view/FolderViewActivity;->c:Lcom/mosaicture/view/i;

    iget-object v0, p0, Lcom/mosaicture/view/FolderViewActivity;->a:Landroid/widget/GridView;

    sget-object v2, Lcom/mosaicture/view/FolderViewActivity;->c:Lcom/mosaicture/view/i;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v3}, Lcom/mosaicture/view/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/markupartist/android/widget/ActionBar;

    sput-object v0, Lcom/mosaicture/view/FolderViewActivity;->e:Lcom/markupartist/android/widget/ActionBar;

    new-instance v2, Lcom/mosaicture/view/h;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/h;-><init>(Lcom/mosaicture/view/FolderViewActivity;)V

    invoke-virtual {v0, v2}, Lcom/markupartist/android/widget/ActionBar;->a(Lcom/markupartist/android/widget/b;)V

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->e:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->c()V

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->e:Lcom/markupartist/android/widget/ActionBar;

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/mosaicture/view/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/markupartist/android/widget/ActionBar;

    sput-object v0, Lcom/mosaicture/view/FolderViewActivity;->e:Lcom/markupartist/android/widget/ActionBar;

    :cond_0
    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->e:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->d()V

    invoke-virtual {p0}, Lcom/mosaicture/view/FolderViewActivity;->c()[Lcom/markupartist/android/widget/b;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/mosaicture/view/FolderViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    sput-object v2, Lcom/mosaicture/view/FolderViewActivity;->d:Lcom/mosaicture/view/a/a;

    if-eqz v0, :cond_2

    const-string v2, "folderPos"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mosaicture/view/FolderViewActivity;->f:I

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    sget v2, Lcom/mosaicture/view/FolderViewActivity;->f:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/a;

    sput-object v0, Lcom/mosaicture/view/FolderViewActivity;->d:Lcom/mosaicture/view/a/a;

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->d:Lcom/mosaicture/view/a/a;

    iget-object v0, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mosaicture/view/FolderViewActivity;->g:[Z

    :goto_1
    iget-object v0, p0, Lcom/mosaicture/view/FolderViewActivity;->g:[Z

    array-length v0, v0

    if-lt v1, v0, :cond_4

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->d:Lcom/mosaicture/view/a/a;

    iget-object v0, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/mosaicture/view/FolderViewActivity;->b:I

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->c:Lcom/mosaicture/view/i;

    invoke-virtual {v0}, Lcom/mosaicture/view/i;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    aget-object v4, v2, v0

    sget-object v5, Lcom/mosaicture/view/FolderViewActivity;->e:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v5, v4}, Lcom/markupartist/android/widget/ActionBar;->b(Lcom/markupartist/android/widget/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/mosaicture/view/FolderViewActivity;->g:[Z

    sget-object v0, Lcom/mosaicture/view/FolderViewActivity;->d:Lcom/mosaicture/view/a/a;

    iget-object v0, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/b;

    iget-boolean v0, v0, Lcom/mosaicture/view/a/b;->b:Z

    aput-boolean v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mosaicture/view/FolderViewActivity;->a(Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mosaicture/view/FolderViewActivity;->d:Lcom/mosaicture/view/a/a;

    invoke-super {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mosaicture/view/FolderViewActivity;->a(Z)V

    invoke-super {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onPause()V

    return-void
.end method
