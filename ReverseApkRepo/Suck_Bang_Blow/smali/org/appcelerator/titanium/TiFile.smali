.class public abstract Lorg/appcelerator/titanium/TiFile;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiFile.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 22
    return-void
.end method


# virtual methods
.method public abstract getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiFile;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "[object TiFile]"

    return-object v0
.end method
