.class Lcom/sphericbox/syb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private final aJ:Z

.field private aK:Landroid/media/MediaScannerConnection;

.field final synthetic aL:Lcom/sphericbox/syb/h;

.field private final file:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/sphericbox/syb/h;Ljava/io/File;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sphericbox/syb/g;->aL:Lcom/sphericbox/syb/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/sphericbox/syb/g;->file:Ljava/io/File;

    .line 101
    iput-boolean p3, p0, Lcom/sphericbox/syb/g;->aJ:Z

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/h;Ljava/io/File;ZLcom/sphericbox/syb/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/sphericbox/syb/g;-><init>(Lcom/sphericbox/syb/h;Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sphericbox/syb/g;->aK:Landroid/media/MediaScannerConnection;

    .line 106
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sphericbox/syb/g;->aK:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/g;->aK:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/sphericbox/syb/g;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/sphericbox/syb/g;->aK:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 117
    :cond_0
    return-void

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sphericbox/syb/g;->aK:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    throw v0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/sphericbox/syb/g;->aJ:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sphericbox/syb/g;->aL:Lcom/sphericbox/syb/h;

    invoke-static {v0}, Lcom/sphericbox/syb/h;->a(Lcom/sphericbox/syb/h;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void
.end method
