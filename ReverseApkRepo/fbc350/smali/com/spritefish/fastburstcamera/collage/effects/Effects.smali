.class public Lcom/spritefish/fastburstcamera/collage/effects/Effects;
.super Ljava/lang/Object;
.source "Effects.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/collage/effects/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .local v0, r:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/collage/effects/Effect;>;"
    new-instance v1, Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;

    invoke-direct {v1}, Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/spritefish/fastburstcamera/collage/effects/LightEdgesEffect;

    invoke-direct {v1}, Lcom/spritefish/fastburstcamera/collage/effects/LightEdgesEffect;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;

    invoke-direct {v1}, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/spritefish/fastburstcamera/collage/effects/NoneEffect;

    invoke-direct {v1}, Lcom/spritefish/fastburstcamera/collage/effects/NoneEffect;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object v0
.end method
