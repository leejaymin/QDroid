.class public Lcom/stickycoding/rokon/FontTexture;
.super Lcom/stickycoding/rokon/Texture;
.source "FontTexture.java"


# instance fields
.field protected chars:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "characters"

    .prologue
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/stickycoding/rokon/FontTexture;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "filename"
    .parameter "characters"
    .parameter "columns"
    .parameter "rows"

    .prologue
    .line 22
    invoke-direct {p0, p1, p3, p4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;II)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/stickycoding/rokon/FontTexture;->chars:[C

    .line 24
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 27
    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/FontTexture;->chars:[C

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public charPos(C)I
    .locals 3
    .parameter "ch"

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/stickycoding/rokon/FontTexture;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pacman not found! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 72
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/FontTexture;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    .line 68
    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCol(C)I
    .locals 2
    .parameter "ch"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/FontTexture;->charPos(C)I

    move-result v0

    iget v1, p0, Lcom/stickycoding/rokon/FontTexture;->columns:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public getRow(C)I
    .locals 3
    .parameter "ch"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/FontTexture;->charPos(C)I

    move-result v0

    .line 56
    .local v0, charPos:I
    iget v1, p0, Lcom/stickycoding/rokon/FontTexture;->columns:I

    rem-int v1, v0, v1

    iget v2, p0, Lcom/stickycoding/rokon/FontTexture;->columns:I

    div-int/2addr v1, v2

    sub-int v1, v0, v1

    return v1
.end method
