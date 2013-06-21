.class Lexam/Network/DownImage$1;
.super Ljava/lang/Object;
.source "DownImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/DownImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/DownImage;


# direct methods
.method constructor <init>(Lexam/Network/DownImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/DownImage$1;->this$0:Lexam/Network/DownImage;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 26
    const-string v1, "http://www.winapi.co.kr/data/child2.jpg"

    .line 28
    .local v1, imageurl:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 29
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, bit:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lexam/Network/DownImage$1;->this$0:Lexam/Network/DownImage;

    iget-object v3, v3, Lexam/Network/DownImage;->img:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0           #bit:Landroid/graphics/Bitmap;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v3

    goto :goto_0
.end method
