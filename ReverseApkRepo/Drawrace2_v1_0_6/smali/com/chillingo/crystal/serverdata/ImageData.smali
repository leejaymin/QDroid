.class public Lcom/chillingo/crystal/serverdata/ImageData;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/ImageData;->setUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/ImageData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    return-void
.end method


# virtual methods
.method public convertToImageIfPossible()V
    .locals 3

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/ImageData;->updatedDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/ImageData;->_receivedData:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/ImageData;->_receivedData:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/ImageData;->_image:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/ImageData;->_receivedData:[B

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "ImageData - Conversion failed"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public imageDataAsBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/ImageData;->_image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/ImageData;->convertToImageIfPossible()V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/ImageData;->_image:Landroid/graphics/Bitmap;

    return-object v0
.end method
