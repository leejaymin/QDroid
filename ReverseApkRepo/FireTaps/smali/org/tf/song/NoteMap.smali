.class public Lorg/tf/song/NoteMap;
.super Ljava/lang/Object;
.source "NoteMap.java"


# static fields
.field private static final GROUP_SIZE:I = 0x5

.field public static final SIZE:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indexOf(I)I
    .locals 5
    .parameter "note"

    .prologue
    const/16 v4, 0x60

    const/16 v3, 0x54

    const/16 v2, 0x48

    const/16 v1, 0x3c

    .line 25
    if-lt p0, v4, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    .line 26
    sub-int v0, p0, v4

    add-int/lit8 v0, v0, 0x0

    .line 34
    :goto_0
    return v0

    .line 27
    :cond_0
    if-lt p0, v3, :cond_1

    const/16 v0, 0x58

    if-gt p0, v0, :cond_1

    .line 28
    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 29
    :cond_1
    if-lt p0, v2, :cond_2

    const/16 v0, 0x4c

    if-gt p0, v0, :cond_2

    .line 30
    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 31
    :cond_2
    if-lt p0, v1, :cond_3

    const/16 v0, 0x40

    if-gt p0, v0, :cond_3

    .line 32
    sub-int v0, p0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 34
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static indexToSkill(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 39
    if-ltz p0, :cond_0

    const/16 v0, 0x14

    if-lt p0, v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, -0x1

    .line 42
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    div-int/lit8 v1, p0, 0x5

    shl-int/2addr v0, v1

    goto :goto_0
.end method

.method public static indexToString(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    if-ltz p0, :cond_0

    const/16 v0, 0x14

    if-lt p0, v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, -0x1

    .line 49
    :goto_0
    return v0

    :cond_1
    rem-int/lit8 v0, p0, 0x5

    goto :goto_0
.end method

.method public static skillOf(I)I
    .locals 1
    .parameter "note"

    .prologue
    .line 53
    invoke-static {p0}, Lorg/tf/song/NoteMap;->indexOf(I)I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/NoteMap;->indexToSkill(I)I

    move-result v0

    return v0
.end method

.method public static stringOf(I)I
    .locals 1
    .parameter "note"

    .prologue
    .line 57
    invoke-static {p0}, Lorg/tf/song/NoteMap;->indexOf(I)I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/NoteMap;->indexToString(I)I

    move-result v0

    return v0
.end method
