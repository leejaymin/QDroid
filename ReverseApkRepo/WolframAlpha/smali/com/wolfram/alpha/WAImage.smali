.class public interface abstract Lcom/wolfram/alpha/WAImage;
.super Ljava/lang/Object;
.source "WAImage.java"

# interfaces
.implements Lcom/wolfram/alpha/visitor/Visitable;


# static fields
.field public static final FORMAT_GIF:I = 0x1

.field public static final FORMAT_PNG:I = 0x2

.field public static final FORMAT_UNKNOWN:I


# virtual methods
.method public abstract acquireImage()V
.end method

.method public abstract getAlt()Ljava/lang/String;
.end method

.method public abstract getDimensions()[I
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getFormat()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method
