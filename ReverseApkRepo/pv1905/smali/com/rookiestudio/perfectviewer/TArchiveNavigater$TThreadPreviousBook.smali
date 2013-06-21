.class Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;
.super Landroid/os/AsyncTask;
.source "TArchiveNavigater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TArchiveNavigater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TThreadPreviousBook"
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
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;


# direct methods
.method private constructor <init>(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;-><init>(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 14
    .parameter "params"

    .prologue
    .line 277
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    if-nez v8, :cond_0

    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-nez v8, :cond_1

    .line 278
    :cond_0
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 318
    :goto_0
    return-object v8

    .line 281
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentFolderName:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 282
    .local v6, Pos:I
    if-gtz v6, :cond_2

    .line 283
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    .line 285
    :cond_2
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentFolderName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, ParentFolder:Ljava/lang/String;
    new-instance v5, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v8, 0x0

    const/4 v9, 0x3

    sget v10, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v11, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    .line 287
    .local v5, ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-virtual {v5, v4}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 288
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/rookiestudio/perfectviewer/TFileList;->FindFile(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 289
    .local v0, CurrentIndex:I
    :goto_1
    if-gez v0, :cond_3

    .line 318
    .end local v0           #CurrentIndex:I
    .end local v4           #ParentFolder:Ljava/lang/String;
    .end local v5           #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    .end local v6           #Pos:I
    :goto_2
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    .line 290
    .restart local v0       #CurrentIndex:I
    .restart local v4       #ParentFolder:Ljava/lang/String;
    .restart local v5       #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    .restart local v6       #Pos:I
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    invoke-virtual {v5, v0}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v9

    iget-object v9, v9, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    #setter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolder:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$0(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Ljava/lang/String;)V

    .line 291
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    new-instance v9, Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    const/4 v10, 0x0

    sget v11, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v12, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;-><init>(Landroid/content/Context;IIZ)V

    #setter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$1(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Lcom/rookiestudio/perfectviewer/TArchiveFiles;)V

    .line 292
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    #getter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$2(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v8

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    #getter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$3(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SetFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    #getter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$2(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v8

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getCount()I

    move-result v8

    if-lez v8, :cond_6

    .line 294
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 295
    .local v3, OldPageTransition:I
    const/4 v8, 0x0

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 296
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v8, :cond_4

    .line 297
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v11, 0x7f0a0008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    #getter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolder:Ljava/lang/String;
    invoke-static {v10}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$3(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V

    .line 299
    :cond_4
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    #getter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v9}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$2(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v9

    #setter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$4(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Lcom/rookiestudio/perfectviewer/TArchiveFiles;)V

    .line 300
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    #getter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$3(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/Config;->FindHistoryFile(Ljava/lang/String;)I

    move-result v2

    .line 301
    .local v2, HistoryIndex:I
    const/4 v1, 0x0

    .line 302
    .local v1, FO:I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_5

    .line 303
    sget-object v8, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rookiestudio/baseclass/THistoryItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    .local v7, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :try_start_2
    iget-object v8, v7, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 309
    .end local v7           #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_5
    :goto_3
    :try_start_3
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->this$0:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    #getter for: Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->access$3(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->SetFolder(Ljava/lang/String;I)Z

    .line 310
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage2()V

    .line 311
    sput v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 312
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 314
    .end local v1           #FO:I
    .end local v2           #HistoryIndex:I
    .end local v3           #OldPageTransition:I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 316
    .end local v0           #CurrentIndex:I
    .end local v4           #ParentFolder:Ljava/lang/String;
    .end local v5           #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    .end local v6           #Pos:I
    :catch_0
    move-exception v8

    goto/16 :goto_2

    .line 306
    .restart local v0       #CurrentIndex:I
    .restart local v1       #FO:I
    .restart local v2       #HistoryIndex:I
    .restart local v3       #OldPageTransition:I
    .restart local v4       #ParentFolder:Ljava/lang/String;
    .restart local v5       #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    .restart local v6       #Pos:I
    .restart local v7       #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const v1, 0x7f0a0007

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 266
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
