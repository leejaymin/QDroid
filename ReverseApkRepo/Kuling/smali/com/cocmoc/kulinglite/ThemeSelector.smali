.class public Lcom/cocmoc/kulinglite/ThemeSelector;
.super Landroid/app/ListActivity;
.source "ThemeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"

.field private static mIconArray:[Landroid/graphics/Bitmap;

.field private static themeArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/cocmoc/kulinglite/ThemeSelector;->themeArray:[Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/cocmoc/kulinglite/ThemeSelector;->mIconArray:[Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cocmoc/kulinglite/ThemeSelector;->themeArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cocmoc/kulinglite/ThemeSelector;->mIconArray:[Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public UpdateListView()V
    .locals 8

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 63
    const-string v7, "mounted"

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Kuling/skins/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, path:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/cocmoc/kulinglite/ThemeSelector;->themeArray:[Ljava/lang/String;

    .line 71
    sget-object v6, Lcom/cocmoc/kulinglite/ThemeSelector;->themeArray:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Landroid/graphics/Bitmap;

    sput-object v6, Lcom/cocmoc/kulinglite/ThemeSelector;->mIconArray:[Landroid/graphics/Bitmap;

    .line 73
    new-instance v4, Lcom/cocmoc/kulinglite/ZipHelper;

    invoke-direct {v4}, Lcom/cocmoc/kulinglite/ZipHelper;-><init>()V

    .line 74
    .local v4, myZipHelper:Lcom/cocmoc/kulinglite/ZipHelper;
    const-string v1, "northwest.png"

    .line 76
    .local v1, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v6, Lcom/cocmoc/kulinglite/ThemeSelector;->mIconArray:[Landroid/graphics/Bitmap;

    array-length v6, v6

    if-lt v2, v6, :cond_2

    .line 91
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #myZipHelper:Lcom/cocmoc/kulinglite/ZipHelper;
    :cond_0
    sget-object v6, Lcom/cocmoc/kulinglite/ThemeSelector;->themeArray:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 93
    new-instance v6, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter;

    invoke-direct {v6, p0}, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/cocmoc/kulinglite/ThemeSelector;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    .end local v5           #path:Ljava/io/File;
    :cond_1
    return-void

    .line 78
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #myZipHelper:Lcom/cocmoc/kulinglite/ZipHelper;
    .restart local v5       #path:Ljava/io/File;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/cocmoc/kulinglite/ThemeSelector;->themeArray:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, ZipName:Ljava/lang/String;
    invoke-virtual {v4, v0, v1}, Lcom/cocmoc/kulinglite/ZipHelper;->getBitmapInZip(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 81
    .local v3, mIcon:Landroid/graphics/Bitmap;
    sget-object v6, Lcom/cocmoc/kulinglite/ThemeSelector;->mIconArray:[Landroid/graphics/Bitmap;

    aput-object v3, v6, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 202
    const-string v0, "Kuling"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Themeselector: onActivityResult()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 211
    if-eqz p2, :cond_0

    .line 216
    if-eqz p3, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/ThemeSelector;->UpdateListView()V

    .line 223
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/cocmoc/kulinglite/ThemeSelector;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/ThemeSelector;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {p0, v2}, Lcom/cocmoc/kulinglite/ThemeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 44
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/cocmoc/kulinglite/ThemeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    .local v0, hentaTemanTextView:Landroid/widget/TextView;
    new-instance v1, Lcom/cocmoc/kulinglite/ThemeSelector$1;

    invoke-direct {v1, p0}, Lcom/cocmoc/kulinglite/ThemeSelector$1;-><init>(Lcom/cocmoc/kulinglite/ThemeSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/ThemeSelector;->UpdateListView()V

    .line 58
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 103
    sget-object v1, Lcom/cocmoc/kulinglite/ThemeSelector;->themeArray:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, resultat:Ljava/lang/String;
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 109
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cocmoc/kulinglite/ThemeSelector;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/ThemeSelector;->finish()V

    .line 111
    return-void
.end method
