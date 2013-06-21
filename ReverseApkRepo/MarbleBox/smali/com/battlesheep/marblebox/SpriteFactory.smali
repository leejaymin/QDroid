.class public Lcom/battlesheep/marblebox/SpriteFactory;
.super Ljava/lang/Object;
.source "SpriteFactory.java"


# static fields
.field private static final HEIGHT:F = 0.6f

.field private static final SIDE_MARGIN:F = 0.05f

.field private static final SURPRISE_CHANCE:F = 0.02f

.field private static final TOP_MARGIN:F = 0.35f


# instance fields
.field private mDropRangeLength:F

.field private mDropRangeStart:F

.field private mFloor:Lcom/stickycoding/rokon/PhysicalSprite;

.field private mMarbleSize:F

.field mRandom:Ljava/util/Random;

.field private mSceneHeight:F

.field private mSceneWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeStart:F

    .line 54
    iput v0, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeLength:F

    .line 57
    iput v0, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mRandom:Ljava/util/Random;

    .line 70
    invoke-static {}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameWidth()F

    move-result v0

    iput v0, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneWidth:F

    .line 71
    invoke-static {}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameHeight()F

    move-result v0

    iput v0, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    .line 72
    return-void
.end method

.method private createSurpriseMarble(FF)Lcom/stickycoding/rokon/GameObject;
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    iget-object v1, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mRandom:Ljava/util/Random;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 188
    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    new-instance v0, Lcom/battlesheep/marblebox/entities/ExtraLifeMarble;

    .end local v0           #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    iget v1, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    invoke-direct {v0, p1, p2, v1}, Lcom/battlesheep/marblebox/entities/ExtraLifeMarble;-><init>(FFF)V

    .line 175
    .restart local v0       #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    goto :goto_0

    .line 177
    :pswitch_1
    new-instance v0, Lcom/battlesheep/marblebox/entities/ScoreBonusMarble;

    .end local v0           #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    iget v1, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    invoke-direct {v0, p1, p2, v1}, Lcom/battlesheep/marblebox/entities/ScoreBonusMarble;-><init>(FFF)V

    .line 178
    .restart local v0       #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    goto :goto_0

    .line 180
    :pswitch_2
    new-instance v0, Lcom/battlesheep/marblebox/entities/ShakeMarble;

    .end local v0           #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    iget v1, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    invoke-direct {v0, p1, p2, v1}, Lcom/battlesheep/marblebox/entities/ShakeMarble;-><init>(FFF)V

    .line 181
    .restart local v0       #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    goto :goto_0

    .line 183
    :pswitch_3
    new-instance v0, Lcom/battlesheep/marblebox/entities/ExplosiveMarble;

    .end local v0           #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    iget v1, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    invoke-direct {v0, p1, p2, v1}, Lcom/battlesheep/marblebox/entities/ExplosiveMarble;-><init>(FFF)V

    .line 184
    .restart local v0       #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    goto :goto_0

    .line 186
    :pswitch_4
    new-instance v0, Lcom/battlesheep/marblebox/entities/ExtraDropMarble;

    .end local v0           #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    iget v1, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    invoke-direct {v0, p1, p2, v1}, Lcom/battlesheep/marblebox/entities/ExtraDropMarble;-><init>(FFF)V

    .restart local v0       #result:Lcom/battlesheep/marblebox/entities/SurpriseMarble;
    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public createBox()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/stickycoding/rokon/GameObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneWidth:F

    move/from16 v18, v0

    const v19, 0x3d4ccccd

    mul-float v14, v18, v19

    .line 88
    .local v14, sideMargin:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    move/from16 v18, v0

    const v19, 0x3eb33333

    mul-float v15, v18, v19

    .line 89
    .local v15, topMargin:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneWidth:F

    move/from16 v18, v0

    const v19, 0x3ccccccd

    mul-float v16, v18, v19

    .line 90
    .local v16, wallWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    move/from16 v18, v0

    const v19, 0x3f19999a

    mul-float v18, v18, v19

    sub-float v8, v18, v16

    .line 91
    .local v8, height:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x4000

    mul-float v19, v19, v14

    sub-float v17, v18, v19

    .line 92
    .local v17, width:F
    const v5, 0x3f19999a

    .line 94
    .local v5, alpha:F
    new-instance v11, Lcom/stickycoding/rokon/PhysicalSprite;

    move-object v0, v11

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stickycoding/rokon/PhysicalSprite;-><init>(FFFF)V

    .line 95
    .local v11, leftWall:Lcom/stickycoding/rokon/PhysicalSprite;
    new-instance v13, Lcom/stickycoding/rokon/PhysicalSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneWidth:F

    move/from16 v18, v0

    sub-float v18, v18, v14

    sub-float v18, v18, v16

    move-object v0, v13

    move/from16 v1, v18

    move v2, v15

    move/from16 v3, v16

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stickycoding/rokon/PhysicalSprite;-><init>(FFFF)V

    .line 97
    .local v13, rightWall:Lcom/stickycoding/rokon/PhysicalSprite;
    new-instance v18, Lcom/stickycoding/rokon/PhysicalSprite;

    add-float v19, v15, v8

    move-object/from16 v0, v18

    move v1, v14

    move/from16 v2, v19

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stickycoding/rokon/PhysicalSprite;-><init>(FFFF)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/battlesheep/marblebox/SpriteFactory;->mFloor:Lcom/stickycoding/rokon/PhysicalSprite;

    .line 99
    invoke-virtual {v11, v5}, Lcom/stickycoding/rokon/PhysicalSprite;->setAlpha(F)V

    .line 100
    invoke-virtual {v13, v5}, Lcom/stickycoding/rokon/PhysicalSprite;->setAlpha(F)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mFloor:Lcom/stickycoding/rokon/PhysicalSprite;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/PhysicalSprite;->setAlpha(F)V

    .line 103
    invoke-virtual {v11}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBox()V

    .line 104
    invoke-virtual {v13}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBox()V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mFloor:Lcom/stickycoding/rokon/PhysicalSprite;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBox()V

    .line 107
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v12, result:Ljava/util/List;,"Ljava/util/List<Lcom/stickycoding/rokon/GameObject;>;"
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mFloor:Lcom/stickycoding/rokon/PhysicalSprite;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-float v9, v14, v16

    .line 114
    .local v9, inLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneWidth:F

    move/from16 v18, v0

    sub-float v18, v18, v14

    sub-float v10, v18, v16

    .line 115
    .local v10, inRight:F
    sub-float v18, v10, v9

    const/high16 v19, 0x40e0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    move/from16 v19, v0

    const/high16 v20, 0x4000

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeStart:F

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    move/from16 v18, v0

    const/high16 v19, 0x4040

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeLength:F

    .line 121
    new-instance v6, Lcom/stickycoding/rokon/PhysicalSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeStart:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    move/from16 v20, v0

    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stickycoding/rokon/PhysicalSprite;-><init>(FFFF)V

    .line 123
    .local v6, dropZoneLeftWall:Lcom/stickycoding/rokon/PhysicalSprite;
    new-instance v7, Lcom/stickycoding/rokon/PhysicalSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeStart:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeLength:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    move/from16 v20, v0

    .line 123
    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stickycoding/rokon/PhysicalSprite;-><init>(FFFF)V

    .line 125
    .local v7, dropZoneRightWall:Lcom/stickycoding/rokon/PhysicalSprite;
    invoke-virtual {v6}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBox()V

    .line 126
    invoke-virtual {v7}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBox()V

    .line 128
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-object v12
.end method

.method public createMarble()Lcom/stickycoding/rokon/GameObject;
    .locals 5

    .prologue
    .line 150
    iget v2, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeStart:F

    iget-object v3, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mDropRangeLength:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 151
    .local v0, positionX:F
    iget-object v2, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget v3, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mSceneHeight:F

    mul-float/2addr v2, v3

    neg-float v1, v2

    .line 154
    .local v1, positionY:F
    iget-object v2, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3ca3d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/battlesheep/marblebox/SpriteFactory;->createSurpriseMarble(FF)Lcom/stickycoding/rokon/GameObject;

    move-result-object v2

    .line 158
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/battlesheep/marblebox/entities/RandomColorMarble;

    iget v3, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    invoke-direct {v2, v0, v1, v3}, Lcom/battlesheep/marblebox/entities/RandomColorMarble;-><init>(FFF)V

    goto :goto_0
.end method

.method public createMarbles(I)Ljava/util/List;
    .locals 2
    .parameter "marblesToCreate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/stickycoding/rokon/GameObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/stickycoding/rokon/GameObject;>;"
    :goto_0
    if-gtz p1, :cond_0

    .line 143
    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/SpriteFactory;->createMarble()Lcom/stickycoding/rokon/GameObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public getMarbleSize()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/battlesheep/marblebox/SpriteFactory;->mMarbleSize:F

    return v0
.end method
