.class public Lcom/rookiestudio/perfectviewer/TScanBookService;
.super Landroid/app/Service;
.source "TScanBookService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;,
        Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;,
        Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;
    }
.end annotation


# static fields
.field public static BookArray:Ljava/util/Stack; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FINISHED:I = 0x4

.field public static final STATUS_RUNNING1:I = 0x1

.field public static final STATUS_RUNNING2:I = 0x2

.field public static final STATUS_RUNNING3:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TScanBookService"


# instance fields
.field private LoadBooksThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;

.field private MainReceiver:Landroid/os/ResultReceiver;

.field private ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

.field public ScanCompleted:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->MainReceiver:Landroid/os/ResultReceiver;

    .line 35
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

    .line 36
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->LoadBooksThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanCompleted:I

    .line 26
    return-void
.end method

.method public static ClearBookData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "DB"

    .prologue
    .line 140
    :try_start_0
    const-string v0, "delete from bookfolder"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static GetBookName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "FileName"
    .parameter "isFolder"

    .prologue
    .line 148
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    :cond_0
    const-string v0, ""

    .line 164
    :cond_1
    :goto_0
    return-object v0

    .line 152
    :cond_2
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, posi:I
    if-ltz v1, :cond_3

    .line 154
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, BookName:Ljava/lang/String;
    :goto_1
    if-nez p1, :cond_1

    .line 159
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 160
    if-ltz v1, :cond_1

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    .end local v0           #BookName:Ljava/lang/String;
    :cond_3
    move-object v0, p0

    .restart local v0       #BookName:Ljava/lang/String;
    goto :goto_1
.end method

.method public static LoadBookData(Landroid/database/sqlite/SQLiteDatabase;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)I
    .locals 14
    .parameter "DB"
    .parameter "aBookData"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 111
    const/4 v8, 0x0

    .line 113
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "bookfolder"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "book_cate"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "isdirectory"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "isfolder"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "book_cover"

    aput-object v3, v2, v0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "book_path=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 113
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 121
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 135
    :goto_0
    return v10

    .line 115
    :catch_0
    move-exception v9

    .line 116
    .local v9, e:Landroid/database/SQLException;
    goto :goto_0

    .line 117
    .end local v9           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v9

    .line 118
    .local v9, e:Ljava/lang/Exception;
    goto :goto_0

    .line 124
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    .line 126
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_1

    move v0, v10

    :goto_1
    iput-boolean v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    .line 127
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    :goto_2
    iput-boolean v10, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsFolder:Z

    .line 128
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v10, v11

    .line 135
    goto :goto_0

    :cond_1
    move v0, v11

    .line 126
    goto :goto_1

    :cond_2
    move v10, v11

    .line 127
    goto :goto_2
.end method

.method public static SaveBookData(Landroid/database/sqlite/SQLiteDatabase;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V
    .locals 5
    .parameter "DB"
    .parameter "aBookData"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v0, cv:Landroid/content/ContentValues;
    :try_start_0
    const-string v3, "book_cate"

    iget-object v4, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v4, "isdirectory"

    iget-boolean v3, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v3, "isfolder"

    iget-boolean v4, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsFolder:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "book_path"

    iget-object v2, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "book_cover"

    iget-object v2, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    const-string v1, "bookfolder"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 100
    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    goto :goto_2

    .line 105
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/TScanBookService;Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

    return-void
.end method


# virtual methods
.method public FindCateThumb(Ljava/util/Stack;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, BookArrayList:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v4

    .line 510
    .local v4, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 529
    .end local v2           #i:I
    .end local v4           #l:I
    :goto_1
    return-void

    .line 511
    .restart local v2       #i:I
    .restart local v4       #l:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    .line 512
    .local v1, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    iget-boolean v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    if-nez v5, :cond_2

    .line 510
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_2
    add-int/lit8 v3, v4, -0x1

    .local v3, j:I
    :goto_3
    if-ltz v3, :cond_1

    .line 516
    invoke-virtual {p1, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    .line 517
    .local v0, TmpBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    iget-boolean v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    if-eqz v5, :cond_4

    .line 515
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 520
    :cond_4
    iget-object v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    iget-object v6, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    if-eqz v5, :cond_3

    .line 521
    iget-object v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    iput-object v5, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 526
    .end local v0           #TmpBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .end local v1           #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #l:I
    :catch_0
    move-exception v5

    goto :goto_1

    .line 527
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public handleStart(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v6, 0x1

    .line 56
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->MainReceiver:Landroid/os/ResultReceiver;

    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "perfectviewer.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, DatabaseFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->MainReceiver:Landroid/os/ResultReceiver;

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v3, "quick"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 70
    .local v2, Quick:Z
    const-string v3, "loadonly"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    .local v1, LoadOnly:Z
    if-eqz v1, :cond_2

    .line 72
    new-instance v3, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->MainReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v3, p0, v4, v5}, Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;-><init>(Lcom/rookiestudio/perfectviewer/TScanBookService;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/ResultReceiver;)V

    iput-object v3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->LoadBooksThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;

    .line 73
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->LoadBooksThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TLoadBooks;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

    if-nez v3, :cond_3

    .line 76
    new-instance v3, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->MainReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;-><init>(Lcom/rookiestudio/perfectviewer/TScanBookService;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/ResultReceiver;Z)V

    iput-object v3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

    .line 77
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

    invoke-virtual {v3, v6}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->setPriority(I)V

    .line 78
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService;->MainReceiver:Landroid/os/ResultReceiver;

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 88
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TScanBookService;->handleStart(Landroid/content/Intent;I)V

    .line 47
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p3}, Lcom/rookiestudio/perfectviewer/TScanBookService;->handleStart(Landroid/content/Intent;I)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method
