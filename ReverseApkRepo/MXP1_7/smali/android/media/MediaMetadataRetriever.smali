.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native captureFrame()Landroid/graphics/Bitmap;
.end method

.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method native getFrameAtTime()Landroid/graphics/Bitmap;
.end method

.method public native getFrameAtTime(JI)Landroid/graphics/Bitmap;
.end method

.method public native release()V
.end method

.method public native setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;)V
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
.end method

.method public native setDataSource(Ljava/lang/String;)V
.end method

.method protected native setMode(I)V
.end method
