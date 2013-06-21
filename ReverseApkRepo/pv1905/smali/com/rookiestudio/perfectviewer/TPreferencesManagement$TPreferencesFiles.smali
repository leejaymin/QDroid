.class Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;
.super Landroid/widget/BaseAdapter;
.source "TPreferencesManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TPreferencesManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TPreferencesFiles"
.end annotation


# instance fields
.field private PreferencesFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/baseclass/TFileData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    .line 323
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    .line 326
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->context:Landroid/content/Context;

    .line 327
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    return-void
.end method

.method public List()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 332
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->access$0(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, SavePathFile:Ljava/io/File;
    new-instance v4, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$XMLFileFilter;

    invoke-direct {v4}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$XMLFileFilter;-><init>()V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 335
    .local v0, AllFile:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 336
    array-length v6, v0

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 343
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    new-instance v6, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;

    invoke-direct {v6, v5}, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;-><init>(I)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 345
    :cond_0
    return-void

    .line 336
    :cond_1
    aget-object v3, v0, v4

    .line 337
    .local v3, aFile:Ljava/io/File;
    new-instance v1, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v1}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 338
    .local v1, NewPreferencesFile:Lcom/rookiestudio/baseclass/TFileData;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 339
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 340
    iget-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    iget-object v8, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 341
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCount2()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/TFileData;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 366
    new-instance v0, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 367
    .local v0, EmptyFileData:Lcom/rookiestudio/baseclass/TFileData;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    goto :goto_0

    .line 370
    .end local v0           #EmptyFileData:Lcom/rookiestudio/baseclass/TFileData;
    :cond_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/baseclass/TFileData;

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 381
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 387
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->context:Landroid/content/Context;

    if-nez v5, :cond_0

    move-object v3, p2

    .line 404
    .end local p2
    .local v3, convertView:Landroid/view/View;
    :goto_0
    return-object v3

    .line 390
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 391
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->context:Landroid/content/Context;

    .line 392
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 391
    check-cast v4, Landroid/view/LayoutInflater;

    .line 393
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03001d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 395
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v2

    .line 396
    .local v2, PreferencesFile:Lcom/rookiestudio/baseclass/TFileData;
    const v5, 0x7f0c0059

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 397
    .local v0, FileIcon:Landroid/widget/ImageView;
    const v5, 0x7f0c005a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 398
    .local v1, FileNameText:Landroid/widget/TextView;
    iget-object v5, v2, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->PreferencesFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 400
    const v5, 0x7f020034

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object v3, p2

    .line 404
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto :goto_0

    .line 402
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    const v5, 0x7f0200a9

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
