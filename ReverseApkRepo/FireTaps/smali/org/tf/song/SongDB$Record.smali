.class public interface abstract Lorg/tf/song/SongDB$Record;
.super Ljava/lang/Object;
.source "SongDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/song/SongDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Record"
.end annotation


# virtual methods
.method public abstract getFirstPlayedTime()J
.end method

.method public abstract getLastPlayedTime()J
.end method

.method public abstract getScore(I)Lorg/tf/song/SongDB$Score;
.end method
