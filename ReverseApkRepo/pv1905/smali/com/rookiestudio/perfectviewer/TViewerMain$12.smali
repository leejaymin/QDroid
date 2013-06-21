.class Lcom/rookiestudio/perfectviewer/TViewerMain$12;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->AddFavorites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$12;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$12;->val$input:Landroid/widget/EditText;

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v9, 0x7f0a0025

    const/4 v8, 0x0

    .line 1360
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$12;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1361
    .local v3, value:Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1363
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$12;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v4, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1362
    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1388
    :goto_0
    return-void

    .line 1366
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1367
    .local v6, cv:Landroid/content/ContentValues;
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    .line 1368
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v4, v4, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 1367
    invoke-virtual {v0, v4, v6}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->FindBook(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    .line 1370
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v4, v4, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 1371
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v5, v5, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 1369
    invoke-virtual {v0, v4, v5, v6}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->AddBook(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1373
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$12;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v4, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1372
    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1377
    :cond_1
    const-string v0, "book_index"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1378
    .local v1, BookIndex:J
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    .line 1379
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v4, v4, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    .line 1380
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v5}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1378
    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->AddFavorites(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1381
    .local v7, result:Z
    if-eqz v7, :cond_2

    .line 1382
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1383
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$12;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const v5, 0x7f0a0024

    invoke-virtual {v4, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1382
    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1385
    :cond_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1386
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$12;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v4, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1385
    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1386
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
