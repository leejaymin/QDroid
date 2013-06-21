.class Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$2;
.super Ljava/util/LinkedHashMap;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x14b804a1654e84c2L


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;IFZ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$2;->this$0:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 443
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v2, 0x1

    .line 450
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$2;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 451
    invoke-static {}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->access$1()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/SoftReference;

    .line 452
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
