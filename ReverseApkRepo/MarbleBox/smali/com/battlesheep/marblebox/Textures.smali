.class public Lcom/battlesheep/marblebox/Textures;
.super Ljava/lang/Object;
.source "Textures.java"


# static fields
.field private static final NUM_BACKGROUNDS:I = 0x3

.field public static marblesAtlas:Lcom/stickycoding/rokon/TextureAtlas;

.field private static smCurrentBackground:I

.field private static smMarbleTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/stickycoding/rokon/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput v0, Lcom/battlesheep/marblebox/Textures;->smCurrentBackground:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarbleTexture(I)Lcom/stickycoding/rokon/Texture;
    .locals 2
    .parameter "color"

    .prologue
    .line 73
    sget-object v0, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/stickycoding/rokon/Texture;

    return-object p0
.end method

.method public static getNextBackground()Lcom/stickycoding/rokon/Texture;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/stickycoding/rokon/DynamicTexture;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "background"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/battlesheep/marblebox/Textures;->smCurrentBackground:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/battlesheep/marblebox/Textures;->smCurrentBackground:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/DynamicTexture;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, texture:Lcom/stickycoding/rokon/Texture;
    sget v1, Lcom/battlesheep/marblebox/Textures;->smCurrentBackground:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 62
    const/4 v1, 0x1

    sput v1, Lcom/battlesheep/marblebox/Textures;->smCurrentBackground:I

    .line 64
    :cond_0
    return-object v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 34
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/battlesheep/marblebox/Textures;->smCurrentBackground:I

    .line 37
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 38
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const/high16 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_red.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const v2, -0xff0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_green.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_blue.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_yellow.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const v2, -0xff0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_cyan.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_magenta.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_orange.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/stickycoding/rokon/Texture;

    const-string v4, "marble_surprise.png"

    invoke-direct {v3, v4}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lcom/stickycoding/rokon/TextureAtlas;

    const/16 v2, 0xa

    const/16 v3, 0x400

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/stickycoding/rokon/TextureAtlas;-><init>(III)V

    sput-object v1, Lcom/battlesheep/marblebox/Textures;->marblesAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    .line 49
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->smMarbleTextures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    sget-object v1, Lcom/battlesheep/marblebox/Textures;->marblesAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/TextureAtlas;->complete()V

    .line 53
    return-void

    .line 49
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stickycoding/rokon/Texture;

    .line 50
    .local v0, texture:Lcom/stickycoding/rokon/Texture;
    sget-object v2, Lcom/battlesheep/marblebox/Textures;->marblesAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    invoke-virtual {v2, v0}, Lcom/stickycoding/rokon/TextureAtlas;->insert(Lcom/stickycoding/rokon/Texture;)V

    goto :goto_0
.end method
