.class public Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;
.super Ljava/lang/Object;
.source "TBookshelf.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TBookshelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenBookLongListerer"
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
    .line 464
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;->BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    .line 466
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;->BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    iget-boolean v1, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    if-nez v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;->BookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    iget-object v0, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    .line 473
    .local v0, SelectFileName:Ljava/lang/String;
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    invoke-static {v1, p1, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileOperation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 475
    .end local v0           #SelectFileName:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
