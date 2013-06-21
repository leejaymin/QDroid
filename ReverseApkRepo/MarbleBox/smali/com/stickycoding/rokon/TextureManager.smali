.class public Lcom/stickycoding/rokon/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field public static final MAX_TEXTURE_COUNT:I = 0x100

.field protected static activeTexture:[Lcom/stickycoding/rokon/Texture;

.field protected static activeTextureCount:I

.field protected static refreshLock:Ljava/lang/Object;

.field protected static refreshTexture:[Lcom/stickycoding/rokon/Texture;

.field protected static refreshTextureCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 19
    new-array v0, v2, [Lcom/stickycoding/rokon/Texture;

    sput-object v0, Lcom/stickycoding/rokon/TextureManager;->refreshTexture:[Lcom/stickycoding/rokon/Texture;

    .line 20
    sput v1, Lcom/stickycoding/rokon/TextureManager;->refreshTextureCount:I

    .line 22
    new-array v0, v2, [Lcom/stickycoding/rokon/Texture;

    sput-object v0, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    .line 23
    sput v1, Lcom/stickycoding/rokon/TextureManager;->activeTextureCount:I

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/TextureManager;->refreshLock:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addToActive(Lcom/stickycoding/rokon/Texture;)V
    .locals 2
    .parameter "textureId"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->isActive(Lcom/stickycoding/rokon/Texture;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 87
    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 88
    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aput-object p0, v1, v0

    .line 89
    sget v1, Lcom/stickycoding/rokon/TextureManager;->activeTextureCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/stickycoding/rokon/TextureManager;->activeTextureCount:I

    goto :goto_0

    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static checkRefreshTextures()V
    .locals 4

    .prologue
    .line 40
    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->refreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget v2, Lcom/stickycoding/rokon/TextureManager;->refreshTextureCount:I

    if-lez v2, :cond_0

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-lt v0, v2, :cond_1

    .line 40
    .end local v0           #i:I
    :cond_0
    monitor-exit v1

    .line 51
    return-void

    .line 43
    .restart local v0       #i:I
    :cond_1
    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->refreshTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 44
    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->refreshTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/stickycoding/rokon/GLHelper;->refreshTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 45
    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->refreshTexture:[Lcom/stickycoding/rokon/Texture;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 46
    sget v2, Lcom/stickycoding/rokon/TextureManager;->refreshTextureCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/stickycoding/rokon/TextureManager;->refreshTextureCount:I

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static isActive(Lcom/stickycoding/rokon/Texture;)Z
    .locals 2
    .parameter "texture"

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 101
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 97
    :cond_0
    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_1

    .line 98
    const/4 v1, 0x1

    goto :goto_1

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static refreshTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 3
    .parameter "texture"

    .prologue
    .line 28
    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->refreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 28
    :try_start_0
    monitor-exit v1

    .line 37
    :goto_1
    return-void

    .line 30
    :cond_0
    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->refreshTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 31
    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->refreshTexture:[Lcom/stickycoding/rokon/Texture;

    aput-object p0, v2, v0

    .line 32
    sget v2, Lcom/stickycoding/rokon/TextureManager;->refreshTextureCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/stickycoding/rokon/TextureManager;->refreshTextureCount:I

    .line 33
    monitor-exit v1

    goto :goto_1

    .line 28
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reloadActiveTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 54
    const-string v1, "reloadTextures()"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 63
    return-void

    .line 56
    :cond_0
    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 57
    sget-object v1, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/stickycoding/rokon/Texture;->onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " - Loading ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeTextures()V
    .locals 4

    .prologue
    .line 69
    const-string v2, "removeTextures()"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 79
    return-void

    .line 71
    :cond_0
    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - Unloaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 73
    sget-object v2, Lcom/stickycoding/rokon/TextureManager;->activeTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v2, v0

    .line 74
    .local v1, texture:Lcom/stickycoding/rokon/Texture;
    invoke-virtual {v1}, Lcom/stickycoding/rokon/Texture;->setUnloaded()V

    .line 70
    .end local v1           #texture:Lcom/stickycoding/rokon/Texture;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
