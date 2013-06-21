.class public Lexam/Network/DownImage;
.super Landroid/app/Activity;
.source "DownImage.java"


# instance fields
.field img:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method DownloadImage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "Url"
    .parameter "FileName"

    .prologue
    const/4 v8, 0x0

    .line 59
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    .local v4, imageurl:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 61
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 62
    .local v6, len:I
    new-array v7, v6, [B

    .line 63
    .local v7, raster:[B
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 64
    .local v5, is:Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-virtual {p0, p2, v9}, Lexam/Network/DownImage;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 67
    .local v3, fos:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 68
    .local v0, Read:I
    if-gtz v0, :cond_0

    .line 74
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 75
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 76
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    const/4 v8, 0x1

    .end local v0           #Read:I
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #imageurl:Ljava/net/URL;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v7           #raster:[B
    :goto_1
    return v8

    .line 71
    .restart local v0       #Read:I
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #imageurl:Ljava/net/URL;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v7       #raster:[B
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0           #Read:I
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #imageurl:Ljava/net/URL;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v7           #raster:[B
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v2, 0x7f030048

    invoke-virtual {p0, v2}, Lexam/Network/DownImage;->setContentView(I)V

    .line 21
    const v2, 0x7f0c0050

    invoke-virtual {p0, v2}, Lexam/Network/DownImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lexam/Network/DownImage;->img:Landroid/widget/ImageView;

    .line 23
    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Lexam/Network/DownImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 24
    .local v1, btndraw:Landroid/widget/Button;
    new-instance v2, Lexam/Network/DownImage$1;

    invoke-direct {v2, p0}, Lexam/Network/DownImage$1;-><init>(Lexam/Network/DownImage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v2, 0x7f0c0052

    invoke-virtual {p0, v2}, Lexam/Network/DownImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    .local v0, btndown:Landroid/widget/Button;
    new-instance v2, Lexam/Network/DownImage$2;

    invoke-direct {v2, p0}, Lexam/Network/DownImage$2;-><init>(Lexam/Network/DownImage;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
