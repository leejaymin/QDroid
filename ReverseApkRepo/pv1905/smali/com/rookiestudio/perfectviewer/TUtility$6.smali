.class Lcom/rookiestudio/perfectviewer/TUtility$6;
.super Ljava/lang/Object;
.source "TUtility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TUtility;->DoClearData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$DataType:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TUtility$6;->val$DataType:I

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 270
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TUtility$6;->val$DataType:I

    if-nez v0, :cond_1

    .line 271
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    invoke-static {}, Lcom/rookiestudio/perfectviewer/Config;->SaveHistories()V

    .line 273
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/THistoryManager;->ClearHistory()V

    .line 274
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TUtility$6;->val$DataType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 276
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->BookmarkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    invoke-static {}, Lcom/rookiestudio/perfectviewer/Config;->SaveBookmarks()V

    .line 278
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 279
    :cond_2
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TUtility$6;->val$DataType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 280
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->ClearAllBookmark()Z

    .line 281
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
