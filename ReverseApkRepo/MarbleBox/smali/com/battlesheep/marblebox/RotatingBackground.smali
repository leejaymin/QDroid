.class public Lcom/battlesheep/marblebox/RotatingBackground;
.super Lcom/stickycoding/rokon/background/DrawTexBackground;
.source "RotatingBackground.java"


# static fields
.field private static final FADE_ALPHA_STEP:F = 0.05f


# instance fields
.field private mNext:Lcom/stickycoding/rokon/Sprite;

.field private mSprite:Lcom/stickycoding/rokon/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {}, Lcom/battlesheep/marblebox/Textures;->getNextBackground()Lcom/stickycoding/rokon/Texture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stickycoding/rokon/background/DrawTexBackground;-><init>(Lcom/stickycoding/rokon/Texture;)V

    .line 15
    iput-object v1, p0, Lcom/battlesheep/marblebox/RotatingBackground;->mSprite:Lcom/stickycoding/rokon/Sprite;

    .line 16
    iput-object v1, p0, Lcom/battlesheep/marblebox/RotatingBackground;->mNext:Lcom/stickycoding/rokon/Sprite;

    .line 20
    return-void
.end method

.method private nextSprite()Lcom/stickycoding/rokon/Sprite;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/stickycoding/rokon/Sprite;

    invoke-static {}, Lcom/stickycoding/rokon/RokonActivity;->getGameWidth()F

    move-result v1

    invoke-static {}, Lcom/stickycoding/rokon/RokonActivity;->getGameHeight()F

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/stickycoding/rokon/Sprite;-><init>(FFFF)V

    .line 51
    .local v0, result:Lcom/stickycoding/rokon/Sprite;
    invoke-static {}, Lcom/battlesheep/marblebox/Textures;->getNextBackground()Lcom/stickycoding/rokon/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/Sprite;->setTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 52
    return-object v0
.end method


# virtual methods
.method public rotate()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
