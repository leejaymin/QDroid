.class final Lcom/mobclix/android/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/mobclix/android/sdk/i;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobclix/android/sdk/j;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobclix/android/sdk/j;->a:Lcom/mobclix/android/sdk/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mobclix/android/sdk/l;

    iget-object v1, p0, Lcom/mobclix/android/sdk/j;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/l;->a()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/j;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/j;->a:Lcom/mobclix/android/sdk/i;

    iget-object v1, p0, Lcom/mobclix/android/sdk/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/i;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/j;->a:Lcom/mobclix/android/sdk/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/i;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
