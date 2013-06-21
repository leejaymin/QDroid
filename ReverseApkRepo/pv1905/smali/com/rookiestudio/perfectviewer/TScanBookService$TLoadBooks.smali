.class Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;
.super Ljava/lang/Thread;
.source "TScanBookService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TScanBookService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TLoadBooks"
.end annotation


# instance fields
.field public MainDB:Landroid/database/sqlite/SQLiteDatabase;

.field private MainReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TScanBookService;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/ResultReceiver;)V
    .locals 1
    .parameter
    .parameter "DB"
    .parameter "R"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 206
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->MainReceiver:Landroid/os/ResultReceiver;

    .line 207
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    sget-object v0, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 209
    return-void
.end method


# virtual methods
.method public LoadFromDB()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 211
    const/4 v3, 0x0

    .line 213
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "SELECT a.book_path,a.book_cate,a.isdirectory,a.isfolder,a.book_cover,b.read_page,b.total_page FROM bookfolder a LEFT JOIN bookhistory b ON a.book_path=b.full_path"

    .line 214
    const/4 v9, 0x0

    .line 213
    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 220
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 221
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, FileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, aFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    new-instance v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    invoke-direct {v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;-><init>()V

    .line 231
    .local v1, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    iput-object v0, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    .line 232
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    .line 233
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_0
    iput-boolean v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    .line 234
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_1
    iput-boolean v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsFolder:Z

    .line 235
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    iput-object v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    .line 236
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    .line 237
    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->TotalPage:I

    .line 238
    iget-object v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsFolder:Z

    invoke-static {v5, v8}, Lcom/rookiestudio/perfectviewer/TScanBookService;->GetBookName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->Title:Ljava/lang/String;

    .line 239
    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v1           #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    .line 226
    if-nez v5, :cond_0

    .line 248
    .end local v0           #FileName:Ljava/lang/String;
    .end local v2           #aFile:Ljava/io/File;
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_2
    :goto_3
    return-void

    .line 215
    :catch_0
    move-exception v4

    .line 216
    .local v4, e:Landroid/database/SQLException;
    goto :goto_3

    .line 217
    .end local v4           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v4

    .line 218
    .local v4, e:Ljava/lang/Exception;
    goto :goto_3

    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #FileName:Ljava/lang/String;
    .restart local v1       #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .restart local v2       #aFile:Ljava/io/File;
    :cond_3
    move v5, v7

    .line 233
    goto :goto_0

    :cond_4
    move v5, v7

    .line 234
    goto :goto_1

    .line 246
    .end local v0           #FileName:Ljava/lang/String;
    .end local v1           #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .end local v2           #aFile:Ljava/io/File;
    :catch_2
    move-exception v5

    goto :goto_2

    .line 245
    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 252
    sget-object v2, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    monitor-enter v2

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->LoadFromDB()V

    .line 254
    sget-object v1, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    new-instance v3, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;-><init>(Lcom/rookiestudio/perfectviewer/TScanBookService;I)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    sget-object v3, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v1, v3}, Lcom/rookiestudio/perfectviewer/TScanBookService;->FindCateThumb(Ljava/util/Stack;)V

    .line 252
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "showmessage"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;->MainReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 260
    return-void

    .line 252
    .end local v0           #b:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
