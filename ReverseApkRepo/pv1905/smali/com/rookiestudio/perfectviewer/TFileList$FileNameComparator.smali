.class public Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;
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
    name = "FileNameComparator"
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
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;->SortDirection:I

    .line 298
    return-void
.end method


# virtual methods
.method public compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I
    .locals 6
    .parameter "FileData1"
    .parameter "FileData2"

    .prologue
    .line 300
    iget-object v3, p1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 301
    .local v3, value1:Ljava/lang/String;
    iget-object v4, p2, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 302
    .local v4, value2:Ljava/lang/String;
    iget-boolean v0, p1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 303
    .local v0, IsDirectory1:Z
    iget-boolean v1, p2, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 304
    .local v1, IsDirectory2:Z
    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Config;->SortNoCase:Z

    if-eqz v5, :cond_0

    .line 305
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 308
    :cond_0
    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Config;->SortFolderFirst:Z

    if-nez v5, :cond_1

    .line 309
    const/4 v0, 0x0

    .line 310
    const/4 v1, 0x0

    .line 313
    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 314
    const/4 v2, -0x1

    .line 320
    .local v2, Result:I
    :goto_0
    iget v5, p0, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;->SortDirection:I

    if-eqz v5, :cond_2

    .line 321
    neg-int v2, v2

    .line 323
    :cond_2
    return v2

    .line 315
    .end local v2           #Result:I
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 316
    const/4 v2, 0x1

    .restart local v2       #Result:I
    goto :goto_0

    .line 318
    .end local v2           #Result:I
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

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

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;->compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I

    move-result v0

    return v0
.end method
