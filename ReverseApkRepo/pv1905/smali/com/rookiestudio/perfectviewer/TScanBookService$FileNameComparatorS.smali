.class Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;
.super Ljava/lang/Object;
.source "TScanBookService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TScanBookService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileNameComparatorS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;",
        ">;"
    }
.end annotation


# instance fields
.field private SortDirection:I

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TScanBookService;I)V
    .locals 0
    .parameter
    .parameter "Direction"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;->SortDirection:I

    .line 172
    return-void
.end method


# virtual methods
.method public compare(Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)I
    .locals 7
    .parameter "FileData1"
    .parameter "FileData2"

    .prologue
    .line 175
    iget-object v3, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    .line 176
    .local v3, value1:Ljava/lang/String;
    iget-object v4, p2, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    .line 177
    .local v4, value2:Ljava/lang/String;
    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Config;->SortNoCase:Z

    if-eqz v5, :cond_0

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 181
    :cond_0
    iget-boolean v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    .line 182
    .local v0, IsDirectory1:Z
    iget-boolean v1, p2, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    .line 183
    .local v1, IsDirectory2:Z
    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Config;->SortFolderFirst:Z

    if-nez v5, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 185
    const/4 v1, 0x0

    .line 188
    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 189
    const/4 v2, -0x1

    .line 198
    .local v2, Result:I
    :cond_2
    :goto_0
    return v2

    .line 190
    .end local v2           #Result:I
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 191
    const/4 v2, 0x1

    .restart local v2       #Result:I
    goto :goto_0

    .line 193
    .end local v2           #Result:I
    :cond_4
    const/4 v5, 0x1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;->compareNatural(Ljava/lang/String;Ljava/lang/String;ZLjava/text/Collator;)I

    move-result v2

    .line 194
    .restart local v2       #Result:I
    iget v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;->SortDirection:I

    if-eqz v5, :cond_2

    .line 195
    neg-int v2, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    check-cast p2, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;->compare(Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)I

    move-result v0

    return v0
.end method
