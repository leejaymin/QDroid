.class public abstract Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;
.super Landroid/os/AsyncTask;
.source "TiBackgroundImageLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiBackgroundImageLoadTask"


# instance fields
.field protected imageHeight:Lorg/appcelerator/titanium/TiDimension;

.field protected imageWidth:Lorg/appcelerator/titanium/TiDimension;

.field protected parent:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected softTiContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/titanium/TiContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)V
    .locals 1
    .parameter "tiContext"
    .parameter "parent"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->softTiContext:Ljava/lang/ref/SoftReference;

    .line 43
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->parent:Ljava/lang/ref/SoftReference;

    .line 44
    iput-object p3, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 45
    iput-object p4, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 46
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "arg"

    .prologue
    const/4 v11, 0x0

    const-string v10, "TiBackgroundImageLoadTask"

    .line 51
    array-length v7, p1

    if-nez v7, :cond_0

    .line 52
    const-string v7, "TiBackgroundImageLoadTask"

    const-string v7, "url argument is missing.  Returning null drawable"

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v11

    .line 100
    :goto_0
    return-object v7

    .line 56
    :cond_0
    const/4 v7, 0x0

    aget-object v6, p1, v7

    .line 57
    .local v6, url:Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, d:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->softTiContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiContext;

    .line 59
    .local v1, context:Lorg/appcelerator/titanium/TiContext;
    if-eqz v1, :cond_1

    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->parent:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 60
    :cond_1
    sget-boolean v7, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->DBG:Z

    if-eqz v7, :cond_2

    .line 61
    const-string v7, "TiBackgroundImageLoadTask"

    const-string v7, "doInBackground exiting early because context already gc\'d"

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v7, v11

    .line 63
    goto :goto_0

    .line 66
    :cond_3
    invoke-static {v1, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v3

    .line 68
    .local v3, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    const/4 v4, 0x1

    .line 69
    .local v4, retry:Z
    const/4 v5, 0x3

    .line 71
    .local v5, retryCount:I
    :cond_4
    :goto_1
    if-eqz v4, :cond_8

    .line 72
    const/4 v4, 0x0

    .line 74
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->parent:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v9, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, v7, v8, v9}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 76
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 77
    :cond_5
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->outOfMemoryOccurred()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 78
    const-string v7, "TiBackgroundImageLoadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not enough memory left to load image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    add-int/lit8 v5, v5, -0x1

    .line 80
    if-lez v5, :cond_4

    .line 81
    const/4 v4, 0x1

    .line 82
    const-string v7, "TiBackgroundImageLoadTask"

    const-string v7, "Signalling a GC, will retry load."

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 85
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_2
    const-string v7, "TiBackgroundImageLoadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :cond_6
    sget-boolean v7, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->DBG:Z

    if-eqz v7, :cond_7

    .line 94
    const-string v7, "TiBackgroundImageLoadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TiDrawableReference.getBitmap() (url \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') returned null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v7, v11

    .line 96
    goto/16 :goto_0

    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_8
    move-object v7, v2

    .line 100
    goto/16 :goto_0

    .line 86
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const-string v3, "TiBackgroundImageLoadTask"

    .line 105
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 107
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "TiBackgroundImageLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread pool rejected attempt to load image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "TiBackgroundImageLoadTask"

    const-string v1, "ADD Handler for retry"

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
