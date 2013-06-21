.class Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;
.super Landroid/os/AsyncTask;
.source "TFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TRefreshFolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;


# direct methods
.method private constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1216
    invoke-direct {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    return-void
.end method

.method private DoEnd()V
    .locals 6

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TextStatusBar:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$4(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->StatusBarFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$5(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$6(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$7(Lcom/rookiestudio/perfectviewer/TFileBrowser;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$8(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$8(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1226
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .parameter "params"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 1306
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 1307
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    new-instance v3, Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;-><init>(Landroid/content/Context;IIZ)V

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$20(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TArchiveFiles;)V

    .line 1308
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v2

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ArchivePasswordList:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v5, v5, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->Find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SetFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1309
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v2

    iget-boolean v2, v2, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->NeedPassword:Z

    if-eqz v2, :cond_0

    .line 1310
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1344
    :goto_0
    return-object v2

    .line 1312
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 1344
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 1313
    :cond_2
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v4, v4, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindCacheList(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1314
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Add(Ljava/lang/String;I)Z

    .line 1312
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1317
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1318
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPDFList;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-direct {v3, v4}, Lcom/rookiestudio/perfectviewer/TPDFList;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$21(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TPDFList;)V

    .line 1319
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;

    move-result-object v2

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TPDFList;->SetFolder(Ljava/lang/String;)V

    .line 1320
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TPDFList;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1321
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v4, v4, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getIndex(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindCacheList(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1322
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getIndex(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Add(Ljava/lang/String;I)Z

    .line 1320
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1326
    .end local v1           #i:I
    :cond_6
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$15(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v2

    if-ne v2, v7, :cond_7

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1327
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 1329
    :cond_7
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFileList;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v3, v4, v7, v5, v6}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$22(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TFileList;)V

    .line 1330
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v2

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    iput v3, v2, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    .line 1331
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v2

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    iput v3, v2, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    .line 1332
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v2

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1333
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 1335
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1336
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v2

    iget-object v0, v2, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 1337
    .local v0, FileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1338
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindCacheList(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1339
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Add(Ljava/lang/String;I)Z

    .line 1335
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1231
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->DoEnd()V

    .line 1232
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->DoRequirePassword(Ljava/lang/String;)V

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1236
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getCount()I

    move-result v1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$11(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    .line 1237
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v1

    iget-wide v1, v1, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J
    invoke-static {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$12(Lcom/rookiestudio/perfectviewer/TFileBrowser;J)V

    .line 1238
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1255
    :goto_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$19(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 1256
    sget-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1257
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$17(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1273
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$19(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 1278
    :cond_3
    :goto_3
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-eqz v0, :cond_4

    .line 1279
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CreateThumbStart()V

    .line 1281
    :cond_4
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->DoEnd()V

    .line 1282
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1239
    :cond_5
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 1240
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getCount()I

    move-result v1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$11(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    .line 1241
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J
    invoke-static {v0, v6, v7}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$12(Lcom/rookiestudio/perfectviewer/TFileBrowser;J)V

    .line 1242
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 1244
    :cond_6
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$15(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1245
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TServerList;->getCount()I

    move-result v1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$11(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    .line 1246
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J
    invoke-static {v0, v6, v7}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$12(Lcom/rookiestudio/perfectviewer/TFileBrowser;J)V

    .line 1247
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1248
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v0, v5}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$17(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    goto/16 :goto_1

    .line 1250
    :cond_7
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$11(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    .line 1251
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v1

    iget-wide v1, v1, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J
    invoke-static {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$12(Lcom/rookiestudio/perfectviewer/TFileBrowser;J)V

    .line 1252
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 1262
    :cond_8
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 1264
    :try_start_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$17(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1265
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 1268
    :cond_9
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v1

    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList;->FindFile(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$17(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    .line 1269
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$19(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1270
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I
    invoke-static {v0, v5}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$17(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    goto/16 :goto_2

    .line 1276
    :cond_a
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setSelection(I)V

    goto/16 :goto_3

    .line 1260
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 1219
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
