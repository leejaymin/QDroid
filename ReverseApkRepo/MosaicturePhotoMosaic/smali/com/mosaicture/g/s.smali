.class final Lcom/mosaicture/g/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field a:Landroid/media/MediaScannerConnection;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mosaicture/g/s;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mosaicture/g/s;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/mosaicture/g/s;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onMediaScannerConnected()V
    .locals 3

    iget-object v0, p0, Lcom/mosaicture/g/s;->a:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/mosaicture/g/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mosaicture/g/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/g/s;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/g/s;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/g/s;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method
