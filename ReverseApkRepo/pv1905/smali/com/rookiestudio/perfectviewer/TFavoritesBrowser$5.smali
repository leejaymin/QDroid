.class Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;
.super Ljava/lang/Object;
.source "TFavoritesBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->DeleteBook(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

.field private final synthetic val$BookIndex:J


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    iput-wide p2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;->val$BookIndex:J

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 225
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    iget-wide v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;->val$BookIndex:J

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->DeleteBook(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->ListBooks()V

    .line 229
    :cond_0
    return-void
.end method
