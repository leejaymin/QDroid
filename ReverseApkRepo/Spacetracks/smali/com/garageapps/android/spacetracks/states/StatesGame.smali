.class public Lcom/garageapps/android/spacetracks/states/StatesGame;
.super Ljava/lang/Object;
.source "StatesGame.java"


# instance fields
.field final CTL_1024_768_HEIGHT:I

.field final CTL_1024_768_WIDTH:I

.field final CTL_480_320_HEIGHT:I

.field final CTL_480_320_WIDTH:I

.field final CTL_854_480_HEIGHT:I

.field final CTL_854_480_WIDTH:I

.field private FLY_BY_MODE:Z

.field final FPS_LIMITER:I

.field final HUD_1024_768_HEIGHT:I

.field final HUD_480_320_HEIGHT:I

.field final HUD_854_480_HEIGHT:I

.field final TIME_FADER:I

.field final TIME_SEQ:I

.field final VIBRATE_BOUNCING:I

.field final VIBRATE_FALLING:I

.field private billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

.field private bonuses:[Z

.field private bonusesLimit:[I

.field private bonusesTimers:[J

.field private controls:[Z

.field private effectsFog:Lcom/garageapps/android/spacetracks/game/EffectsFog;

.field private effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

.field private fader:F

.field private faderTimer:J

.field private fallingInitiated:Z

.field private finishInitiated:Z

.field private finishTime:J

.field private finishZ:F

.field private game:Lcom/garageapps/android/spacetracks/game/Game;

.field private hud:Lcom/garageapps/android/spacetracks/game/GameHud;

.field private itemColor:F

.field private itemColorInc:F

.field private levelAngle:F

.field private levelDensity:F

.field private levelMaxSpeed:I

.field private levelMaxTime:I

.field private levelX:F

.field private levelZ:F

.field private mGameState:I

.field private mGameStateFinished:Z

.field private mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

.field private menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

.field private menuActive:Z

.field private musicInitiated:Z

.field private nebulaAngle:F

.field private noBonusInitiated:Z

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsSphere:Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;

.field private objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

.field private raceLevel:I

.field private raceTimer:J

.field private recordInitiated:Z

.field private score:I

.field private sekvenca:J

.field private stani:Z

.field private svirajTimer:J

.field private timer:J

.field private updateTimer:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x32

    const/16 v1, 0x64

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->FLY_BY_MODE:Z

    .line 36
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->HUD_480_320_HEIGHT:I

    .line 37
    const/16 v0, 0x3c

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->CTL_480_320_WIDTH:I

    .line 38
    const/16 v0, 0x46

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->CTL_480_320_HEIGHT:I

    .line 40
    const/16 v0, 0x4b

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->HUD_854_480_HEIGHT:I

    .line 41
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->CTL_854_480_WIDTH:I

    .line 42
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->CTL_854_480_HEIGHT:I

    .line 44
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->HUD_1024_768_HEIGHT:I

    .line 45
    const/16 v0, 0xa0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->CTL_1024_768_WIDTH:I

    .line 46
    const/16 v0, 0x8c

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->CTL_1024_768_HEIGHT:I

    .line 49
    const/16 v0, 0x19

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->FPS_LIMITER:I

    .line 50
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->TIME_FADER:I

    .line 51
    const/16 v0, 0x13ec

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->TIME_SEQ:I

    .line 52
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->VIBRATE_FALLING:I

    .line 53
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->VIBRATE_BOUNCING:I

    .line 98
    iput-wide v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->svirajTimer:J

    .line 99
    iput-wide v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 28
    return-void
.end method

.method private drawUpdateControls(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x3f20

    const v4, -0x3feccccd

    const/high16 v3, 0x3f80

    const/16 v2, 0xde1

    .line 722
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 723
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 724
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 725
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 727
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 728
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 731
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 732
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x1f

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 735
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 736
    const v0, -0x3f933333

    invoke-interface {p1, v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 737
    const/high16 v0, 0x4334

    invoke-interface {p1, v0, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 738
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 741
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 742
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x1f

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 745
    :goto_1
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 746
    const/high16 v0, -0x3fe0

    invoke-interface {p1, v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 747
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 750
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 751
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x21

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 754
    :goto_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 755
    const/high16 v0, 0x4020

    invoke-interface {p1, v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 756
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 759
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    .line 760
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x21

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 763
    :goto_3
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 764
    const v0, 0x406ccccd

    invoke-interface {p1, v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 765
    const/high16 v0, 0x4334

    invoke-interface {p1, v0, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 766
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 768
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 769
    return-void

    .line 734
    :cond_0
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x1e

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_0

    .line 744
    :cond_1
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x1e

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1

    .line 753
    :cond_2
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_2

    .line 762
    :cond_3
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_3
.end method

.method private drawUpdateFader(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 805
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->faderTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 807
    .local v0, elapsedTime:J
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 808
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 809
    const v2, 0x3a03126f

    long-to-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fader:F

    .line 810
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->stopAll()V

    .line 811
    iput-boolean v6, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->stani:Z

    .line 818
    :goto_0
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 819
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 820
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 822
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 823
    const v2, -0x3fe66666

    invoke-interface {p1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 824
    const/high16 v2, 0x3fc0

    invoke-interface {p1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 825
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fader:F

    invoke-interface {p1, v4, v4, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 826
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 828
    :cond_0
    return-void

    .line 814
    :cond_1
    iput-boolean v6, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameStateFinished:Z

    goto :goto_0
.end method

.method private drawUpdateMenu(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 789
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 790
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    iget v0, v0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->switchResult:I

    if-nez v0, :cond_1

    .line 791
    iput-boolean v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    iget v0, v0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->switchResult:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 794
    iput-boolean v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    .line 795
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->faderTimer:J

    .line 796
    const/16 v0, 0xa

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    goto :goto_0

    .line 798
    :cond_2
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    iget v0, v0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->switchResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 799
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/main;->finish()V

    goto :goto_0
.end method

.method private drawUpdatePlayer(Ljavax/microedition/khronos/opengles/GL10;FFFFF)V
    .locals 7
    .parameter "gl"
    .parameter "x"
    .parameter "y"
    .parameter "rollangle"
    .parameter "angle"
    .parameter "x2"

    .prologue
    const/16 v6, 0xb60

    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 706
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 707
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 708
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 709
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 710
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 712
    invoke-interface {p1, p5, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 713
    const v0, -0x40a66666

    add-float/2addr v0, p3

    const/high16 v1, -0x3f80

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishZ:F

    sub-float/2addr v1, v2

    invoke-interface {p1, v3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 714
    invoke-interface {p1, p4, v4, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 715
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsSphere:Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v5, v5, v1}, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->draw(Ljavax/microedition/khronos/opengles/GL10;ZZI)V

    .line 716
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 717
    return-void
.end method

.method private drawUpdateStartup(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 15
    .parameter "gl"

    .prologue
    .line 773
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColor:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColorInc:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColor:F

    .line 774
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 775
    :cond_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColorInc:F

    neg-float v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColorInc:F

    .line 778
    :cond_1
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 779
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/levels/LevelNames;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    .line 780
    .local v14, length:I
    const/high16 v0, 0x3f00

    int-to-float v1, v14

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 782
    .local v3, x:F
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    invoke-static {v1}, Lcom/garageapps/android/spacetracks/levels/LevelNames;->get(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x4080

    const/high16 v5, -0x3e70

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColor:F

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    .line 783
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    aget-wide v0, v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->timerToString(JZ)Ljava/lang/String;

    move-result-object v6

    const v7, -0x3ff33333

    const/high16 v8, 0x4040

    const/high16 v9, -0x3e70

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColor:F

    sub-float v13, v0, v1

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v13}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    .line 785
    .end local v3           #x:F
    .end local v14           #length:I
    :cond_2
    return-void
.end method

.method private init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v1, 0xf

    const/4 v7, 0x1

    const v6, 0x3e19999a

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-static {p1}, Lcom/garageapps/android/spacetracks/glSpec;->setPerspectiveProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 117
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->clearControls()V

    .line 119
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;

    invoke-direct {v0, v6, v1, v1}, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;-><init>(FII)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsSphere:Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;

    .line 124
    :cond_0
    :goto_0
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 125
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    .line 127
    new-instance v0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    .line 128
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    .line 130
    new-instance v0, Lcom/garageapps/android/spacetracks/game/EffectsFog;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/game/EffectsFog;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsFog:Lcom/garageapps/android/spacetracks/game/EffectsFog;

    .line 131
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsFog:Lcom/garageapps/android/spacetracks/game/EffectsFog;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/EffectsFog;->init()V

    .line 132
    new-instance v0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    .line 133
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->init()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->nebulaAngle:F

    .line 136
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColor:F

    .line 137
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->itemColorInc:F

    .line 138
    iput-wide v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->timer:J

    .line 139
    iput-wide v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->svirajTimer:J

    .line 140
    iput-wide v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 141
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->musicInitiated:Z

    .line 142
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->stani:Z

    .line 144
    new-instance v0, Lcom/garageapps/android/spacetracks/game/Game;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/game/Game;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    .line 145
    new-instance v0, Lcom/garageapps/android/spacetracks/game/GameHud;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/game/GameHud;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->hud:Lcom/garageapps/android/spacetracks/game/GameHud;

    .line 146
    new-instance v0, Lcom/garageapps/android/spacetracks/game/GameBillboard;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/game/GameBillboard;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

    .line 148
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->gameMode:I

    if-ne v0, v7, :cond_3

    .line 149
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v3, v0, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    .line 150
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v3, v0, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    .line 151
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    .line 162
    :cond_1
    :goto_1
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    invoke-virtual {p0, p1, v0}, Lcom/garageapps/android/spacetracks/states/StatesGame;->initLevel(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 163
    return-void

    .line 121
    :cond_2
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    if-ne v0, v7, :cond_0

    .line 122
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;

    const/16 v1, 0x19

    const/16 v2, 0x19

    invoke-direct {v0, v6, v1, v2}, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;-><init>(FII)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->objectsSphere:Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;

    goto/16 :goto_0

    .line 154
    :cond_3
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->gameMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 155
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    goto :goto_1

    .line 158
    :cond_4
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->gameMode:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 159
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->gameMode:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    goto :goto_1
.end method

.method private input(IIFF)V
    .locals 11
    .parameter "key"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4000

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 573
    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    if-ne v3, v7, :cond_6

    .line 574
    if-eq p2, v7, :cond_0

    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    .line 577
    :cond_0
    const/16 v0, 0x32

    .line 580
    .local v0, height:I
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    if-ne v3, v10, :cond_1

    .line 581
    const/16 v0, 0x4b

    .line 585
    :cond_1
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 586
    const/16 v0, 0x64

    .line 589
    :cond_2
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenWidth:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-static {v6, v6, v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->inBounds(FFFF)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 590
    iget-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    if-nez v3, :cond_3

    .line 591
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->init()V

    .line 592
    iput-boolean v7, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    .line 603
    .end local v0           #height:I
    :cond_3
    :goto_0
    const/16 v3, 0x52

    if-ne p1, v3, :cond_4

    .line 604
    iget-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    if-nez v3, :cond_4

    .line 605
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menu:Lcom/garageapps/android/spacetracks/states/StatesGameMenu;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->init()V

    .line 606
    iput-boolean v7, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    .line 701
    :cond_4
    :goto_1
    return-void

    .line 597
    .restart local v0       #height:I
    :cond_5
    iput v9, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    .line 598
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

    invoke-virtual {v3, v7, v8}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->set(II)V

    .line 599
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->timer:J

    goto :goto_0

    .line 612
    .end local v0           #height:I
    :cond_6
    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    if-ne v3, v10, :cond_4

    iget-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-nez v3, :cond_4

    .line 613
    sparse-switch p1, :sswitch_data_0

    .line 640
    :goto_2
    if-eqz p2, :cond_7

    if-ne p2, v9, :cond_11

    .line 643
    :cond_7
    const/16 v2, 0x3c

    .line 644
    .local v2, width:I
    const/16 v0, 0x46

    .line 647
    .restart local v0       #height:I
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    if-ne v3, v10, :cond_8

    .line 648
    const/16 v2, 0x6e

    .line 649
    const/16 v0, 0x64

    .line 653
    :cond_8
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    .line 654
    const/16 v2, 0xa0

    .line 655
    const/16 v0, 0x8c

    .line 658
    :cond_9
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v2

    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    invoke-static {v6, v3, v4, v5}, Lcom/garageapps/android/spacetracks/glSpec;->inBounds(FFFF)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 659
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v7, v3, v8

    .line 660
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->moveLeft()V

    .line 665
    :goto_3
    const/high16 v3, 0x428c

    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    sget-object v6, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v6, v6, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v6, v6, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-static {v3, v4, v5, v6}, Lcom/garageapps/android/spacetracks/glSpec;->inBounds(FFFF)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 666
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v7, v3, v7

    .line 667
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->moveRight()V

    .line 672
    :goto_4
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenWidth:I

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->screenWidth:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    sget-object v6, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v6, v6, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v6, v6, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-static {v3, v4, v5, v6}, Lcom/garageapps/android/spacetracks/glSpec;->inBounds(FFFF)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 673
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v7, v3, v9

    .line 674
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_e

    .line 675
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxSpeed:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveForward(I)V

    .line 682
    :goto_5
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->screenWidth:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->screenWidth:I

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    sget-object v6, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v6, v6, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v6, v6, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-static {v3, v4, v5, v6}, Lcom/garageapps/android/spacetracks/glSpec;->inBounds(FFFF)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 683
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v7, v3, v10

    .line 684
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->moveBackward()V

    .line 696
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_a
    :goto_6
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    if-ne v3, v7, :cond_4

    .line 697
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3, p3}, Lcom/garageapps/android/spacetracks/game/Game;->moveSensorX(F)V

    .line 698
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxSpeed:I

    invoke-virtual {v3, p4, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveSensorY(FI)V

    goto/16 :goto_1

    .line 617
    :sswitch_0
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_b

    .line 618
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxSpeed:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveForward(I)V

    goto/16 :goto_2

    .line 620
    :cond_b
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxSpeed:I

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveForward(I)V

    goto/16 :goto_2

    .line 625
    :sswitch_1
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->moveBackward()V

    goto/16 :goto_2

    .line 630
    :sswitch_2
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->moveLeft()V

    goto/16 :goto_2

    .line 635
    :sswitch_3
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->moveRight()V

    goto/16 :goto_2

    .line 663
    .restart local v0       #height:I
    .restart local v2       #width:I
    :cond_c
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v8, v3, v8

    goto/16 :goto_3

    .line 670
    :cond_d
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v8, v3, v7

    goto/16 :goto_4

    .line 677
    :cond_e
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxSpeed:I

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveForward(I)V

    goto/16 :goto_5

    .line 680
    :cond_f
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v8, v3, v9

    goto/16 :goto_5

    .line 687
    :cond_10
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v8, v3, v10

    goto :goto_6

    .line 691
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_11
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    const/4 v3, 0x4

    if-ge v1, v3, :cond_a

    .line 692
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    aput-boolean v8, v3, v1

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 613
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x1d -> :sswitch_2
        0x20 -> :sswitch_3
        0x2f -> :sswitch_1
        0x33 -> :sswitch_0
    .end sparse-switch
.end method

.method private play()V
    .locals 13

    .prologue
    const-wide/32 v11, 0xdb24

    const-wide/16 v9, 0xb

    const/16 v8, 0x9

    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 832
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->svirajTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 834
    .local v0, elapsedTime:J
    iget-boolean v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->stani:Z

    if-eqz v2, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-boolean v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->musicInitiated:Z

    if-eqz v2, :cond_0

    .line 841
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->svirajTimer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 842
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->svirajTimer:J

    .line 843
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 844
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v7}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 847
    :cond_2
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/16 v2, 0x13ec

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    const-wide/16 v2, 0x27d8

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 848
    const-wide/16 v2, 0x2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 849
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v7}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 852
    :cond_3
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-wide/16 v2, 0x27d8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    const-wide/16 v2, 0x3bc4

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 853
    const-wide/16 v2, 0x3

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 854
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v7}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 857
    :cond_4
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const-wide/16 v2, 0x3bc4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    const-wide/16 v2, 0x4fb0

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 858
    const-wide/16 v2, 0x4

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 859
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v7}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 862
    :cond_5
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    const-wide/16 v2, 0x4fb0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x639c

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 863
    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 864
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 867
    :cond_6
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    const-wide/16 v2, 0x639c

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    const-wide/16 v2, 0x7788

    cmp-long v2, v0, v2

    if-gez v2, :cond_7

    .line 868
    const-wide/16 v2, 0x6

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 869
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v7}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 872
    :cond_7
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x6

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    const-wide/16 v2, 0x7788

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    const-wide/32 v2, 0x8b74

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    .line 873
    const-wide/16 v2, 0x7

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 874
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v8}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 877
    :cond_8
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x7

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    const-wide/32 v2, 0x8b74

    cmp-long v2, v0, v2

    if-ltz v2, :cond_9

    const-wide/32 v2, 0x9f60

    cmp-long v2, v0, v2

    if-gez v2, :cond_9

    .line 878
    const-wide/16 v2, 0x8

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 879
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v8}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 882
    :cond_9
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    const-wide/32 v2, 0x9f60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_a

    const-wide/32 v2, 0xb34c

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 883
    const-wide/16 v2, 0x9

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 884
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v8}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 887
    :cond_a
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide/32 v2, 0xb34c

    cmp-long v2, v0, v2

    if-ltz v2, :cond_b

    const-wide/32 v2, 0xc738

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    .line 888
    const-wide/16 v2, 0xa

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 889
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v8}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 892
    :cond_b
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    const-wide/32 v2, 0xc738

    cmp-long v2, v0, v2

    if-ltz v2, :cond_c

    cmp-long v2, v0, v11

    if-gez v2, :cond_c

    .line 893
    iput-wide v9, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 894
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 897
    :cond_c
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_d

    cmp-long v2, v0, v11

    if-ltz v2, :cond_d

    const-wide/32 v2, 0xef10

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 898
    const-wide/16 v2, 0xc

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 899
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0xb

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 902
    :cond_d
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0xc

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    const-wide/32 v2, 0xef10

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e

    const-wide/32 v2, 0x102fc

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    .line 903
    const-wide/16 v2, 0xd

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 904
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0xb

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 907
    :cond_e
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0xd

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    const-wide/32 v2, 0x102fc

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    const-wide/32 v2, 0x116e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 908
    const-wide/16 v2, 0xe

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 909
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0xc

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 912
    :cond_f
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0xe

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    const-wide/32 v2, 0x116e8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    const-wide/32 v2, 0x12ad4

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 913
    const-wide/16 v2, 0xf

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 914
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0xc

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 917
    :cond_10
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    const-wide/16 v4, 0xf

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/32 v2, 0x12ad4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 918
    iput-wide v9, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->sekvenca:J

    .line 919
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    sub-long/2addr v2, v11

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->svirajTimer:J

    goto/16 :goto_0
.end method

.method private update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 27
    .parameter "gl"

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->nebulaAngle:F

    const v4, 0x3e4ccccd

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->nebulaAngle:F

    .line 266
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->timer:J

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v20

    .line 268
    .local v20, elapsedTime:J
    const-wide/16 v3, 0xfa0

    cmp-long v3, v20, v3

    if-lez v3, :cond_0

    .line 269
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    .line 270
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    .line 271
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->musicInitiated:Z

    .line 568
    .end local v20           #elapsedTime:J
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1f

    .line 277
    const/16 v22, 0x0

    .line 284
    .local v22, increment:F
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v20

    .line 285
    .restart local v20       #elapsedTime:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxTime:I

    int-to-long v3, v3

    cmp-long v3, v20, v3

    if-gez v3, :cond_a

    .line 286
    const v3, 0x47c35000

    move-object/from16 v0, p0

    iget v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxTime:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-wide/from16 v0, v20

    long-to-float v4, v0

    mul-float v22, v3, v4

    .line 293
    :cond_2
    :goto_1
    const/high16 v3, 0x447a

    div-float v22, v22, v3

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->hud:Lcom/garageapps/android/spacetracks/game/GameHud;

    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v5, v5, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    div-int/lit8 v5, v5, 0xa

    const/high16 v6, 0x42c8

    sub-float v6, v6, v22

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v9, 0x1

    aget-boolean v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v10, 0x2

    aget-boolean v9, v9, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    invoke-virtual/range {v3 .. v11}, Lcom/garageapps/android/spacetracks/game/GameHud;->set(IIIZZZJ)V

    .line 298
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->updateTimer:J

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v3

    const-wide/16 v5, 0x28

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    .line 299
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->updateTimer:J

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v3, v3, Lcom/garageapps/android/spacetracks/game/Game;->directionX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelX:F

    .line 302
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelZ:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/game/Game;->getZspeed()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelZ:F

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelAngle:F

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveAngle(F)V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->updateX()V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelCenter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapCrashX(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapCrashZ()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->collideLevel(II)I

    move-result v24

    .line 308
    .local v24, tile:I
    shr-int/lit8 v26, v24, 0x18

    .line 309
    .local v26, tileId:I
    shl-int/lit8 v3, v24, 0x8

    shr-int/lit8 v25, v3, 0x18

    .line 310
    .local v25, tileHeight:I
    if-lez v26, :cond_3

    if-lez v25, :cond_3

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->reverseX()V

    .line 312
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    const-wide/16 v4, 0x19

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->vibrate(J)V

    .line 316
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->updateZ()V

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelCenter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapX(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapCrashZ()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->collideLevel(II)I

    move-result v24

    .line 318
    shr-int/lit8 v26, v24, 0x18

    .line 319
    shl-int/lit8 v3, v24, 0x8

    shr-int/lit8 v25, v3, 0x18

    .line 320
    if-lez v26, :cond_4

    if-lez v25, :cond_4

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->reverseZ()V

    .line 322
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->vibrate(J)V

    .line 326
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelCenter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapX(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapZ()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->collideLevel(II)I

    move-result v24

    .line 327
    shr-int/lit8 v26, v24, 0x18

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->getMapZ()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelSizeY()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    if-lt v3, v4, :cond_5

    .line 331
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/garageapps/android/spacetracks/states/StatesGame;->initLevel(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 335
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v3

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelCenter()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelCenter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapX(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v18, v3, v4

    .line 338
    .local v18, cornerX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v3, v3, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    const/high16 v4, 0x3fc0

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/game/Game;->getMapZ()I

    move-result v4

    int-to-float v4, v4

    sub-float v19, v3, v4

    .line 340
    .local v19, cornerY:F
    if-nez v26, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishInitiated:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-nez v3, :cond_6

    .line 342
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->FLY_BY_MODE:Z

    if-nez v3, :cond_6

    .line 343
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    .line 344
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->vibrate(J)V

    .line 394
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishInitiated:Z

    if-nez v3, :cond_7

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->updateScore(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    .line 398
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-eqz v3, :cond_8

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v4, v3, Lcom/garageapps/android/spacetracks/game/Game;->directionY:F

    const v5, 0x3d4ccccd

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/garageapps/android/spacetracks/game/Game;->directionY:F

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->moveBackward()V

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v3, v3, Lcom/garageapps/android/spacetracks/game/Game;->directionY:F

    const/high16 v4, -0x4000

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    .line 403
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/garageapps/android/spacetracks/states/StatesGame;->initLevel(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 408
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelCenter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapX(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/game/Game;->getMapZ()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->collideObjects(II)I

    move-result v23

    .line 409
    .local v23, object:I
    const/16 v3, 0x10

    move/from16 v0, v23

    if-ne v0, v3, :cond_10

    .line 410
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x13

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 411
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    .line 496
    .end local v18           #cornerX:F
    .end local v19           #cornerY:F
    .end local v23           #object:I
    .end local v24           #tile:I
    .end local v25           #tileHeight:I
    .end local v26           #tileId:I
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v12

    .line 498
    .local v12, b1_elapsed:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-long v3, v3

    cmp-long v3, v12, v3

    if-gez v3, :cond_1c

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 503
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v14

    .line 505
    .local v14, b2_elapsed:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-long v3, v3

    cmp-long v3, v14, v3

    if-gez v3, :cond_1d

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 510
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x2

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v16

    .line 512
    .local v16, b3_elapsed:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-long v3, v3

    cmp-long v3, v16, v3

    if-gez v3, :cond_1e

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxSpeed:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveForward(I)V

    goto/16 :goto_0

    .line 288
    .end local v12           #b1_elapsed:J
    .end local v14           #b2_elapsed:J
    .end local v16           #b3_elapsed:J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->noBonusInitiated:Z

    if-nez v3, :cond_2

    .line 289
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->noBonusInitiated:Z

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

    const/4 v4, 0x5

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->set(II)V

    goto/16 :goto_1

    .line 349
    .restart local v18       #cornerX:F
    .restart local v19       #cornerY:F
    .restart local v24       #tile:I
    .restart local v25       #tileHeight:I
    .restart local v26       #tileId:I
    :cond_b
    const/16 v3, 0xa

    move/from16 v0, v26

    if-ne v0, v3, :cond_c

    .line 350
    const v3, 0x3e19999a

    sub-float v3, v18, v3

    cmpg-float v3, v19, v3

    if-gez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-nez v3, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->FLY_BY_MODE:Z

    if-nez v3, :cond_6

    .line 352
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    .line 353
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->vibrate(J)V

    goto/16 :goto_2

    .line 358
    :cond_c
    const/16 v3, 0xb

    move/from16 v0, v26

    if-ne v0, v3, :cond_d

    .line 359
    const/high16 v3, 0x3f80

    sub-float v3, v3, v19

    const v4, 0x3d4ccccd

    add-float v4, v4, v18

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-nez v3, :cond_6

    .line 360
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->FLY_BY_MODE:Z

    if-nez v3, :cond_6

    .line 361
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    .line 362
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->vibrate(J)V

    goto/16 :goto_2

    .line 367
    :cond_d
    const/16 v3, 0xc

    move/from16 v0, v26

    if-ne v0, v3, :cond_e

    .line 368
    const/high16 v3, 0x3f80

    sub-float v3, v3, v19

    const v4, 0x3e19999a

    sub-float v4, v18, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-nez v3, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->FLY_BY_MODE:Z

    if-nez v3, :cond_6

    .line 370
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    .line 371
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->vibrate(J)V

    goto/16 :goto_2

    .line 376
    :cond_e
    const/16 v3, 0xd

    move/from16 v0, v26

    if-ne v0, v3, :cond_f

    .line 377
    const v3, 0x3d4ccccd

    add-float v3, v3, v18

    cmpl-float v3, v19, v3

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    if-nez v3, :cond_6

    .line 378
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->FLY_BY_MODE:Z

    if-nez v3, :cond_6

    .line 379
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    .line 380
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->vibrate(J)V

    goto/16 :goto_2

    .line 385
    :cond_f
    const/16 v3, 0x62

    move/from16 v0, v26

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishInitiated:Z

    if-nez v3, :cond_6

    .line 386
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishInitiated:Z

    .line 387
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishTime:J

    .line 388
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    .line 389
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->timer:J

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

    const/4 v4, 0x3

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->set(II)V

    goto/16 :goto_2

    .line 414
    .restart local v23       #object:I
    :cond_10
    const/16 v3, 0x11

    move/from16 v0, v23

    if-ne v0, v3, :cond_11

    .line 415
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x13

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 416
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    add-int/lit16 v3, v3, 0xc8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    goto/16 :goto_3

    .line 419
    :cond_11
    const/16 v3, 0x12

    move/from16 v0, v23

    if-ne v0, v3, :cond_12

    .line 420
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x13

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 421
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    add-int/lit16 v3, v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    goto/16 :goto_3

    .line 424
    :cond_12
    const/16 v3, 0x13

    move/from16 v0, v23

    if-ne v0, v3, :cond_13

    .line 425
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x13

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 426
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    add-int/lit16 v3, v3, 0x190

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    goto/16 :goto_3

    .line 429
    :cond_13
    const/16 v3, 0x20

    move/from16 v0, v23

    if-ne v0, v3, :cond_14

    .line 430
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x0

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x0

    const/16 v5, 0x2710

    aput v5, v3, v4

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    const/4 v4, 0x1

    const-wide/16 v5, 0x2710

    const/high16 v7, 0x4170

    const v8, 0x3ccccccd

    invoke-virtual/range {v3 .. v8}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->start(IJFF)V

    goto/16 :goto_3

    .line 436
    :cond_14
    const/16 v3, 0x21

    move/from16 v0, v23

    if-ne v0, v3, :cond_15

    .line 437
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x0

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x0

    const/16 v5, 0x3a98

    aput v5, v3, v4

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    const/4 v4, 0x1

    const-wide/16 v5, 0x3a98

    const/high16 v7, 0x41f0

    const v8, 0x3ccccccd

    invoke-virtual/range {v3 .. v8}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->start(IJFF)V

    goto/16 :goto_3

    .line 443
    :cond_15
    const/16 v3, 0x22

    move/from16 v0, v23

    if-ne v0, v3, :cond_16

    .line 444
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x0

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x0

    const/16 v5, 0x4e20

    aput v5, v3, v4

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    const/4 v4, 0x1

    const-wide/16 v5, 0x4e20

    const/high16 v7, 0x4234

    const v8, 0x3ccccccd

    invoke-virtual/range {v3 .. v8}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->start(IJFF)V

    goto/16 :goto_3

    .line 450
    :cond_16
    const/16 v3, 0x23

    move/from16 v0, v23

    if-ne v0, v3, :cond_17

    .line 451
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x0

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x0

    const/16 v5, 0x61a8

    aput v5, v3, v4

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    const/4 v4, 0x1

    const-wide/16 v5, 0x61a8

    const/high16 v7, 0x4270

    const v8, 0x3ccccccd

    invoke-virtual/range {v3 .. v8}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->start(IJFF)V

    goto/16 :goto_3

    .line 458
    :cond_17
    const/16 v3, 0x30

    move/from16 v0, v23

    if-ne v0, v3, :cond_18

    .line 459
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x1

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x1

    const/16 v5, 0x7d0

    aput v5, v3, v4

    .line 462
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    goto/16 :goto_3

    .line 465
    :cond_18
    const/16 v3, 0x31

    move/from16 v0, v23

    if-ne v0, v3, :cond_19

    .line 466
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x1

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x1

    const/16 v5, 0xfa0

    aput v5, v3, v4

    .line 469
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    const-wide/16 v5, 0xfa0

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    goto/16 :goto_3

    .line 472
    :cond_19
    const/16 v3, 0x32

    move/from16 v0, v23

    if-ne v0, v3, :cond_1a

    .line 473
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x1

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x1

    const/16 v5, 0x1770

    aput v5, v3, v4

    .line 476
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    const-wide/16 v5, 0x1770

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    goto/16 :goto_3

    .line 479
    :cond_1a
    const/16 v3, 0x33

    move/from16 v0, v23

    if-ne v0, v3, :cond_1b

    .line 480
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x1

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x1

    const/16 v5, 0x1f40

    aput v5, v3, v4

    .line 483
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    const-wide/16 v5, 0x1f40

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    goto/16 :goto_3

    .line 486
    :cond_1b
    const/16 v3, 0x40

    move/from16 v0, v23

    if-ne v0, v3, :cond_9

    .line 487
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v4, 0x2

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    const/4 v4, 0x2

    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    const/4 v4, 0x2

    const/16 v5, 0x1388

    aput v5, v3, v4

    goto/16 :goto_3

    .line 501
    .end local v18           #cornerX:F
    .end local v19           #cornerY:F
    .end local v23           #object:I
    .end local v24           #tile:I
    .end local v25           #tileHeight:I
    .end local v26           #tileId:I
    .restart local v12       #b1_elapsed:J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    goto/16 :goto_4

    .line 508
    .restart local v14       #b2_elapsed:J
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    goto/16 :goto_5

    .line 517
    .restart local v16       #b3_elapsed:J
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    goto/16 :goto_0

    .line 520
    .end local v12           #b1_elapsed:J
    .end local v14           #b2_elapsed:J
    .end local v16           #b3_elapsed:J
    .end local v20           #elapsedTime:J
    .end local v22           #increment:F
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->timer:J

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v20

    .line 524
    .restart local v20       #elapsedTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->hud:Lcom/garageapps/android/spacetracks/game/GameHud;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/GameHud;->disable()V

    .line 526
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelZ:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/game/Game;->getZspeed()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelZ:F

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelAngle:F

    invoke-virtual {v3, v4}, Lcom/garageapps/android/spacetracks/game/Game;->moveAngle(F)V

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->updateX()V

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->updateZ()V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->hud:Lcom/garageapps/android/spacetracks/game/GameHud;

    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v5, v5, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    div-int/lit8 v5, v5, 0xa

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v9, 0x1

    aget-boolean v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    const/4 v10, 0x2

    aget-boolean v9, v9, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    invoke-virtual/range {v3 .. v11}, Lcom/garageapps/android/spacetracks/game/GameHud;->set(IIIZZZJ)V

    .line 531
    move-object/from16 v0, p0

    iget v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishZ:F

    const v4, 0x3ca3d70a

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishZ:F

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v3}, Lcom/garageapps/android/spacetracks/game/Game;->stopZ()V

    .line 537
    const-wide/16 v3, 0xbb8

    cmp-long v3, v20, v3

    if-lez v3, :cond_20

    .line 538
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->recordInitiated:Z

    if-nez v3, :cond_20

    .line 539
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->recordInitiated:Z

    .line 540
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishTime:J

    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    aget-wide v5, v5, v6

    cmp-long v3, v3, v5

    if-gez v3, :cond_20

    .line 541
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishTime:J

    aput-wide v5, v3, v4

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

    const/4 v4, 0x6

    const/16 v5, 0x12

    invoke-virtual {v3, v4, v5}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->set(II)V

    .line 547
    :cond_20
    const-wide/16 v3, 0x1770

    cmp-long v3, v20, v3

    if-lez v3, :cond_0

    .line 548
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->gameMode:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_21

    .line 549
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    .line 550
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->faderTimer:J

    goto/16 :goto_0

    .line 553
    :cond_21
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    .line 554
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    .line 556
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->lockLevel:I

    if-le v3, v4, :cond_22

    .line 557
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    iput v4, v3, Lcom/garageapps/android/spacetracks/mainApplication;->lockLevel:I

    .line 558
    :cond_22
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    const/16 v4, 0x28

    if-ne v3, v4, :cond_23

    .line 559
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v4, 0x0

    iput v4, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    .line 560
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iput v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    .line 561
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/garageapps/android/spacetracks/states/StatesGame;->faderTimer:J

    goto/16 :goto_0

    .line 564
    :cond_23
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/garageapps/android/spacetracks/states/StatesGame;->initLevel(Ljavax/microedition/khronos/opengles/GL10;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 206
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGame;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 210
    :cond_0
    const/high16 v0, 0x3f80

    invoke-static {p1, v1, v1, v1, v0}, Lcom/garageapps/android/spacetracks/glSpec;->clearScreen(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 212
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsFog:Lcom/garageapps/android/spacetracks/game/EffectsFog;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/EffectsFog;->update()F

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelDensity:F

    .line 213
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->update()F

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelAngle:F

    .line 216
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->nebulaAngle:F

    invoke-virtual {v0, p1, v1}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawNebula(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 219
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelX:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelZ:F

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishZ:F

    sub-float v3, v1, v3

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelAngle:F

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelDensity:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawLevel(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 220
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelX:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelZ:F

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishZ:F

    sub-float v3, v1, v3

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelAngle:F

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelDensity:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawObjects(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 223
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    iget v3, v0, Lcom/garageapps/android/spacetracks/game/Game;->directionY:F

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/Game;->getZangle()F

    move-result v4

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelAngle:F

    iget v6, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelX:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/garageapps/android/spacetracks/states/StatesGame;->drawUpdatePlayer(Ljavax/microedition/khronos/opengles/GL10;FFFFF)V

    .line 226
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->hud:Lcom/garageapps/android/spacetracks/game/GameHud;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/game/GameHud;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 229
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGame;->drawUpdateStartup(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 235
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGame;->drawUpdateControls(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->menuActive:Z

    if-eqz v0, :cond_2

    .line 241
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGame;->drawUpdateMenu(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 244
    :cond_2
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGame;->drawUpdateFader(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 247
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesGame;->play()V

    .line 250
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGame;->update(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 253
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentKey:I

    .line 254
    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v1, v1, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchEvent:I

    .line 255
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSensor:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget v2, v2, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorY:F

    .line 256
    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mSensor:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorX:F

    .line 253
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/garageapps/android/spacetracks/states/StatesGame;->input(IIFF)V

    .line 257
    return-void
.end method

.method public initLevel(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "level"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    .line 169
    iput p2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    .line 171
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->game:Lcom/garageapps/android/spacetracks/game/Game;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/Game;->initVars()V

    .line 172
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->hud:Lcom/garageapps/android/spacetracks/game/GameHud;

    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v1, v1, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    invoke-virtual {v0, v1}, Lcom/garageapps/android/spacetracks/game/GameHud;->initVars(I)V

    .line 173
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->billboard:Lcom/garageapps/android/spacetracks/game/GameBillboard;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->initVars()V

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->controls:[Z

    .line 175
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonuses:[Z

    .line 176
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesLimit:[I

    .line 177
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->bonusesTimers:[J

    .line 178
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-direct {v0, p1}, Lcom/garageapps/android/spacetracks/levels/LevelManager;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    .line 179
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v0, p2}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->loadLevel(I)V

    .line 180
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceLevel:I

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxTime:I

    .line 181
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mLevelManager:Lcom/garageapps/android/spacetracks/levels/LevelManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->getLevelMaxZSpeed()I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelMaxSpeed:I

    .line 182
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsFog:Lcom/garageapps/android/spacetracks/game/EffectsFog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/garageapps/android/spacetracks/game/EffectsFog;->start(I)V

    .line 183
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->effectsRotate:Lcom/garageapps/android/spacetracks/game/EffectsRotate;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->init()V

    .line 184
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishZ:F

    .line 186
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->noBonusInitiated:Z

    .line 187
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->fallingInitiated:Z

    .line 188
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->finishInitiated:Z

    .line 189
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->recordInitiated:Z

    .line 191
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelX:F

    .line 192
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelZ:F

    .line 193
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelDensity:F

    .line 194
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->levelAngle:F

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->raceTimer:J

    .line 196
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->score:I

    .line 198
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->timer:J

    .line 199
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->updateTimer:J

    .line 200
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->clearControls()V

    .line 201
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameStateFinished:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameState:I

    .line 106
    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGame;->mGameStateFinished:Z

    .line 107
    return-void
.end method
