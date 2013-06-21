.class public Lcom/superdroid/imagelazyload/ImageReceiver;
.super Ljava/lang/Thread;
.source "ImageReceiver.java"


# static fields
.field protected static DRAW_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _callback:Lcom/superdroid/imagelazyload/ImageReceivedCallback;

.field protected _imageView:Landroid/widget/ImageView;

.field protected _url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/superdroid/imagelazyload/ImageReceiver;->DRAW_MAP:Ljava/util/HashMap;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/superdroid/imagelazyload/ImageReceivedCallback;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "url"
    .parameter "callback"
    .parameter "view"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_url:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_callback:Lcom/superdroid/imagelazyload/ImageReceivedCallback;

    .line 24
    iput-object p3, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_imageView:Landroid/widget/ImageView;

    .line 25
    sget-object v2, Lcom/superdroid/imagelazyload/ImageReceiver;->DRAW_MAP:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    sget-object v2, Lcom/superdroid/imagelazyload/ImageReceiver;->DRAW_MAP:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 27
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/superdroid/imagelazyload/ImageDisplayer;

    iget-object v2, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_imageView:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v0}, Lcom/superdroid/imagelazyload/ImageDisplayer;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 28
    .local v1, displayer:Lcom/superdroid/imagelazyload/ImageDisplayer;
    iget-object v2, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_callback:Lcom/superdroid/imagelazyload/ImageReceivedCallback;

    invoke-interface {v2, v1}, Lcom/superdroid/imagelazyload/ImageReceivedCallback;->onImageReceived(Lcom/superdroid/imagelazyload/ImageDisplayer;)V

    .line 33
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #displayer:Lcom/superdroid/imagelazyload/ImageDisplayer;
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_callback:Lcom/superdroid/imagelazyload/ImageReceivedCallback;

    iget-object v3, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_imageView:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Lcom/superdroid/imagelazyload/ImageReceivedCallback;->onDownloading(Landroid/widget/ImageView;)V

    .line 31
    invoke-virtual {p0}, Lcom/superdroid/imagelazyload/ImageReceiver;->start()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 44
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, content:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .line 47
    .local v5, is:Ljava/io/InputStream;
    const-string v7, "src"

    invoke-static {v5, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v7, Lcom/superdroid/imagelazyload/ImageReceiver;->DRAW_MAP:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_url:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v3, Lcom/superdroid/imagelazyload/ImageDisplayer;

    iget-object v7, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_imageView:Landroid/widget/ImageView;

    invoke-direct {v3, v7, v2}, Lcom/superdroid/imagelazyload/ImageDisplayer;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 51
    .local v3, displayer:Lcom/superdroid/imagelazyload/ImageDisplayer;
    iget-object v7, p0, Lcom/superdroid/imagelazyload/ImageReceiver;->_callback:Lcom/superdroid/imagelazyload/ImageReceivedCallback;

    invoke-interface {v7, v3}, Lcom/superdroid/imagelazyload/ImageReceivedCallback;->onImageReceived(Lcom/superdroid/imagelazyload/ImageDisplayer;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    .end local v1           #content:Ljava/lang/Object;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #displayer:Lcom/superdroid/imagelazyload/ImageDisplayer;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #url:Ljava/net/URL;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 53
    .local v4, e:Ljava/net/MalformedURLException;
    sget-object v7, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "MalformedURLException"

    aput-object v10, v9, v11

    invoke-interface {v7, v8, v9}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    .end local v4           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 55
    .local v4, e:Ljava/io/IOException;
    sget-object v7, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "IOException"

    aput-object v10, v9, v11

    invoke-interface {v7, v8, v9}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 57
    .local v4, e:Ljava/lang/NullPointerException;
    sget-object v7, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "NullPointerException"

    aput-object v10, v9, v11

    invoke-interface {v7, v8, v9}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0
.end method
