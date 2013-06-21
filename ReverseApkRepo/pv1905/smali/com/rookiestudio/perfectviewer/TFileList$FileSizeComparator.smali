.class public Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;
.super Ljava/lang/Object;
.source "TFileList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/rookiestudio/baseclass/TFileData;",
        ">;"
    }
.end annotation


# instance fields
.field private SortDirection:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "Direction"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;->SortDirection:I

    .line 266
    return-void
.end method


# virtual methods
.method public compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I
    .locals 9
    .parameter "FileData1"
    .parameter "FileData2"

    .prologue
    .line 268
    iget-wide v3, p1, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 269
    .local v3, value1:J
    iget-wide v5, p2, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 270
    .local v5, value2:J
    iget-boolean v0, p1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 271
    .local v0, IsDirectory1:Z
    iget-boolean v1, p2, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 272
    .local v1, IsDirectory2:Z
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->SortFolderFirst:Z

    if-nez v7, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 274
    const/4 v1, 0x0

    .line 277
    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 278
    iget-object v7, p1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 286
    .local v2, Result:I
    :goto_0
    iget v7, p0, Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;->SortDirection:I

    if-eqz v7, :cond_1

    .line 287
    neg-int v2, v2

    .line 289
    :cond_1
    return v2

    .line 279
    .end local v2           #Result:I
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 280
    const/4 v2, -0x1

    .restart local v2       #Result:I
    goto :goto_0

    .line 281
    .end local v2           #Result:I
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 282
    const/4 v2, 0x1

    .restart local v2       #Result:I
    goto :goto_0

    .line 284
    .end local v2           #Result:I
    :cond_4
    sub-long v7, v3, v5

    long-to-int v2, v7

    .restart local v2       #Result:I
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/rookiestudio/baseclass/TFileData;

    check-cast p2, Lcom/rookiestudio/baseclass/TFileData;

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;->compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I

    move-result v0

    return v0
.end method
