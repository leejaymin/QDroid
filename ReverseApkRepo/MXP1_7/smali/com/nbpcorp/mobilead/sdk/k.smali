.class public final Lcom/nbpcorp/mobilead/sdk/k;
.super Landroid/widget/ImageButton;


# instance fields
.field private 癤욱븳援:Landroid/graphics/Bitmap;

.field private 궗:Landroid/graphics/Bitmap;

.field private 먯꽌:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/k;->궗:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->먯꽌:Z

    invoke-direct {p0, p2, p4, p5}, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    invoke-direct {p0, p3, p4, p5}, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->궗:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/k;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/k;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private 癤욱븳援(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lsa;->癤욱븳援(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x1

    invoke-static {v2, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->먯꽌:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/k;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->궗:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/k;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public 癤욱븳援(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->궗:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/k;->먯꽌:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
