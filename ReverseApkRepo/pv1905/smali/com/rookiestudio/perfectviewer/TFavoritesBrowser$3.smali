.class Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;
.super Ljava/lang/Object;
.source "TFavoritesBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->EditBook(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

.field private final synthetic val$BookIndex:J

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/widget/EditText;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->val$input:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->val$BookIndex:J

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v6, 0x7f0a002f

    const/4 v5, 0x0

    .line 192
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, value:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    invoke-virtual {v3, v6}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 204
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    iget-wide v3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->val$BookIndex:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->UpdateBookName(JLjava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 199
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 203
    :goto_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->ListBooks()V

    goto :goto_0

    .line 201
    :cond_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    invoke-virtual {v3, v6}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
