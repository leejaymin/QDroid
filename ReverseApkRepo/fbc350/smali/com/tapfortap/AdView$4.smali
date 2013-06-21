.class Lcom/tapfortap/AdView$4;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView;->getImage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapfortap/AdView;

.field final synthetic val$index:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tapfortap/AdView$4;->this$0:Lcom/tapfortap/AdView;

    iput-object p2, p0, Lcom/tapfortap/AdView$4;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/tapfortap/AdView$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 239
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/tapfortap/AdView$4;->val$url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 240
    .local v1, connection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 241
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 242
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 243
    .local v3, input:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/tapfortap/AdView$4;->this$0:Lcom/tapfortap/AdView;

    #getter for: Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/tapfortap/AdView;->access$200(Lcom/tapfortap/AdView;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/tapfortap/AdView$4$1;

    invoke-direct {v5, p0, v0}, Lcom/tapfortap/AdView$4$1;-><init>(Lcom/tapfortap/AdView$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #input:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, e:Ljava/io/IOException;
    const-string v4, "com.tapfortap.AdView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to fetch image at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tapfortap/AdView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
