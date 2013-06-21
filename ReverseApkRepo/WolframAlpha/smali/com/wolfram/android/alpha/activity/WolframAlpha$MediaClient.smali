.class Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaClient"
.end annotation


# instance fields
.field fileToScan:Ljava/lang/String;

.field mediaScanner:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;->mediaScanner:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;->fileToScan:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 3399
    return-void
.end method
