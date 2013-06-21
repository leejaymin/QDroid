.class public final Lcom/rubycell/moregame/a/a/b;
.super Lcom/rubycell/moregame/a/a/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rubycell/moregame/a/a/a;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/rubycell/moregame/a/a/b;->a:I

    return-void
.end method

.method private static b(Lorg/apache/http/HttpResponse;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/rubycell/moregame/a/a/b;->b(Lorg/apache/http/HttpResponse;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
