.class public Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;
.super Ljava/lang/Object;
.source "TBookshelf.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TBookshelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenBookListerer"
.end annotation


# instance fields
.field private BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TBookshelf;Landroid/content/Context;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "Data"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    .line 433
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 437
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    iget-boolean v3, v3, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    if-eqz v3, :cond_3

    .line 438
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    iget-object v2, v3, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    .line 439
    .local v2, TmpFilter:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, Posi:I
    if-ltz v0, :cond_0

    .line 441
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_0
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$1(Lcom/rookiestudio/perfectviewer/TBookshelf;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$1(Lcom/rookiestudio/perfectviewer/TBookshelf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 444
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #setter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$2(Lcom/rookiestudio/perfectviewer/TBookshelf;Ljava/lang/String;)V

    .line 448
    :goto_0
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$3(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;
    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$4(Lcom/rookiestudio/perfectviewer/TBookshelf;)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->UpdateBookshelfFilter()V

    .line 451
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$3(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$4(Lcom/rookiestudio/perfectviewer/TBookshelf;)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 452
    const-string v3, "BookshelfFilter"

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$1(Lcom/rookiestudio/perfectviewer/TBookshelf;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->UpdateTitle()V

    .line 459
    .end local v0           #Posi:I
    .end local v2           #TmpFilter:Ljava/lang/String;
    :goto_1
    return-void

    .line 446
    .restart local v0       #Posi:I
    .restart local v2       #TmpFilter:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$1(Lcom/rookiestudio/perfectviewer/TBookshelf;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$2(Lcom/rookiestudio/perfectviewer/TBookshelf;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    .end local v0           #Posi:I
    .end local v2           #TmpFilter:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    iget-object v1, v3, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    .line 456
    .local v1, SelectFileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v1, v4, v5}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 457
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->finish()V

    goto :goto_1
.end method
