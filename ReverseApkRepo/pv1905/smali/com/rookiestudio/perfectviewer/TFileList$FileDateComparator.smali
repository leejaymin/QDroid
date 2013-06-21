.class public Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;
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
    name = "FileDateComparator"
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
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;->SortDirection:I

    .line 233
    return-void
.end method


# virtual methods
.method public compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I
    .locals 7
    .parameter "FileData1"
    .parameter "FileData2"

    .prologue
    .line 235
    iget-object v3, p1, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    .line 236
    .local v3, value1:Ljava/util/Date;
    iget-object v4, p2, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    .line 237
    .local v4, value2:Ljava/util/Date;
    iget-boolean v0, p1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 238
    .local v0, IsDirectory1:Z
    iget-boolean v1, p2, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 239
    .local v1, IsDirectory2:Z
    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Config;->SortFolderFirst:Z

    if-nez v5, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 241
    const/4 v1, 0x0

    .line 244
    :cond_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 245
    const/4 v2, -0x1

    .line 254
    .local v2, Result:I
    :cond_1
    :goto_0
    iget v5, p0, Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;->SortDirection:I

    if-eqz v5, :cond_2

    .line 255
    neg-int v2, v2

    .line 257
    :cond_2
    return v2

    .line 246
    .end local v2           #Result:I
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 247
    const/4 v2, 0x1

    .restart local v2       #Result:I
    goto :goto_0

    .line 249
    .end local v2           #Result:I
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    .line 250
    .restart local v2       #Result:I
    if-nez v2, :cond_1

    .line 251
    iget-object v5, p1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    iget-object v6, p2, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

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

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;->compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I

    move-result v0

    return v0
.end method
