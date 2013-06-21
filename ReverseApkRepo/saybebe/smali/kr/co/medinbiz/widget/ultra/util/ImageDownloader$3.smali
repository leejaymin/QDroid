.class Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$3;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$3;->this$0:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$3;->this$0:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->clearCache()V

    .line 469
    return-void
.end method
