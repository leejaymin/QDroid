.class Lcom/jjcgames/android/airhockey/Game$Texture;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjcgames/android/airhockey/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Texture"
.end annotation


# static fields
.field private static textures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jjcgames/android/airhockey/Game$Texture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public coordScaleX:F

.field public coordScaleY:F

.field public height:I

.field public name:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jjcgames/android/airhockey/Game$Texture;->textures:Ljava/util/ArrayList;

    .line 864
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    invoke-direct {p0, p1}, Lcom/jjcgames/android/airhockey/Game$Texture;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 889
    const/16 v0, 0xde1

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 890
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "gl"
    .parameter "b"

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    invoke-direct {p0, p1}, Lcom/jjcgames/android/airhockey/Game$Texture;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 894
    invoke-virtual {p0, p1, p2}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 895
    return-void
.end method

.method private delete(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 4
    .parameter "gl"
    .parameter "removeFromList"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 937
    new-array v0, v3, [I

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 938
    if-eqz p2, :cond_0

    .line 939
    sget-object v0, Lcom/jjcgames/android/airhockey/Game$Texture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 941
    :cond_0
    iput v2, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    .line 942
    return-void
.end method

.method public static deleteAll(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 874
    sget-object v1, Lcom/jjcgames/android/airhockey/Game$Texture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    sget-object v1, Lcom/jjcgames/android/airhockey/Game$Texture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 878
    return-void

    .line 874
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjcgames/android/airhockey/Game$Texture;

    .line 875
    .local v0, i:Lcom/jjcgames/android/airhockey/Game$Texture;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/jjcgames/android/airhockey/Game$Texture;->delete(Ljavax/microedition/khronos/opengles/GL10;Z)V

    goto :goto_0
.end method

.method private init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 881
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 882
    .local v0, names:[I
    array-length v1, v0

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 883
    aget v1, v0, v2

    iput v1, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    .line 884
    sget-object v1, Lcom/jjcgames/android/airhockey/Game$Texture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    return-void
.end method


# virtual methods
.method public delete(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 933
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jjcgames/android/airhockey/Game$Texture;->delete(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 934
    return-void
.end method

.method public loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "gl"
    .parameter "b"

    .prologue
    .line 898
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    .line 899
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    .line 900
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 901
    .local v5, flipper:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 902
    const/4 v0, 0x0

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 904
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    iget v4, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    const/4 v6, 0x0

    move-object v0, p2

    .line 903
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 907
    iget v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    #calls: Lcom/jjcgames/android/airhockey/Game;->nextPowerOfTwo(I)I
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/Game;->access$0(I)I

    move-result v11

    .line 908
    .local v11, nWidth:I
    iget v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    #calls: Lcom/jjcgames/android/airhockey/Game;->nextPowerOfTwo(I)I
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/Game;->access$0(I)I

    move-result v10

    .line 910
    .local v10, nHeight:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 911
    .local v9, n:Landroid/graphics/Bitmap;
    #calls: Lcom/jjcgames/android/airhockey/Game;->setDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v9, p2}, Lcom/jjcgames/android/airhockey/Game;->access$1(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 912
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 913
    .local v7, c:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 914
    .local v8, clearPaint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 915
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 916
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 917
    move-object p2, v9

    .line 918
    iget v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v0, v0

    int-to-float v1, v11

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleX:F

    .line 919
    iget v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v0, v0

    int-to-float v1, v10

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleY:F

    .line 923
    const/16 v0, 0xde1

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 924
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 925
    invoke-static {}, Lcom/jjcgames/android/airhockey/Game;->access$2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1
    const/16 v0, 0xde1

    .line 927
    const v1, 0x8b9d

    .line 928
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x2

    iget v4, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    aput v4, v2, v3

    const/4 v3, 0x0

    .line 926
    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 930
    :cond_0
    return-void
.end method
