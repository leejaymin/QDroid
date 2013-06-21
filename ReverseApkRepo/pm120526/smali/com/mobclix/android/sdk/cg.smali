.class final Lcom/mobclix/android/sdk/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/cf;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/cf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/cg;->a:Lcom/mobclix/android/sdk/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/mobclix/android/sdk/cg;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobclix/android/sdk/cg;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cg;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cg;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/cg;->a:Lcom/mobclix/android/sdk/cf;

    invoke-static {v0}, Lcom/mobclix/android/sdk/cf;->a(Lcom/mobclix/android/sdk/cf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cg;->a:Lcom/mobclix/android/sdk/cf;

    invoke-static {v0}, Lcom/mobclix/android/sdk/cf;->b(Lcom/mobclix/android/sdk/cf;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cg;->a:Lcom/mobclix/android/sdk/cf;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cg;->a:Lcom/mobclix/android/sdk/cf;

    invoke-static {v1}, Lcom/mobclix/android/sdk/cf;->a(Lcom/mobclix/android/sdk/cf;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cg;->a:Lcom/mobclix/android/sdk/cf;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/cf;->j:Ljava/lang/Thread;

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error processing photo."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
