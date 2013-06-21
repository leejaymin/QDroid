.class public Lcom/b2bstudio/digger/main;
.super Ljava/lang/Object;
.source "main.java"


# static fields
.field static MAX_RATE:I

.field static MIN_RATE:I


# instance fields
.field public bags:Lcom/b2bstudio/digger/bags;

.field bagspr:[Lcom/b2bstudio/graphics/Sprite;

.field bkgone:Z

.field blob:[Lcom/b2bstudio/graphics/Image;

.field public board:Lcom/b2bstudio/digger/board;

.field bonus:Lcom/b2bstudio/graphics/Image;

.field bonusmask:Lcom/b2bstudio/graphics/Image;

.field bonusmode:Z

.field bonustimeleft:I

.field bonusvisible:Z

.field border:Z

.field canvas:Landroid/graphics/Canvas;

.field colorindex:[[B

.field public construct:Lcom/b2bstudio/digger/construct;

.field control:Lcom/b2bstudio/graphics/Image;

.field data:[B

.field deathani:I

.field deatharc:[I

.field deathbag:I

.field deathstage:I

.field deathtime:I

.field density:F

.field dig:Lcom/b2bstudio/digger/gamer$loop;

.field digdir:I

.field digger:Lcom/b2bstudio/graphics/Sprite;

.field diggerFrame:I

.field diggerPos:I

.field diggerh:I

.field diggerrx:I

.field diggerry:I

.field diggerv:I

.field diggervisible:Z

.field diggerx:I

.field diggery:I

.field digmdir:I

.field digonscr:Z

.field digtime:I

.field public draw:Lcom/b2bstudio/digger/draw;

.field public dx:I

.field public dy:I

.field eatmsc:I

.field emask:Lcom/b2bstudio/graphics/Image;

.field embox:[I

.field emerald:Lcom/b2bstudio/graphics/Image;

.field emfield:[B

.field emmask:I

.field emocttime:I

.field expsn:I

.field fire:Lcom/b2bstudio/graphics/Sprite;

.field firedir:I

.field firex:I

.field firey:I

.field frametime:I

.field ftime:J

.field gold:[Lcom/b2bstudio/graphics/Sprite;

.field public h:I

.field hi1:I

.field ht:I

.field public input:Lcom/b2bstudio/digger/input;

.field keyParam:I

.field keypressed:I

.field l:I

.field layer:Lcom/b2bstudio/graphics/LayerManager;

.field life:Lcom/b2bstudio/graphics/Image;

.field lifemask:Lcom/b2bstudio/graphics/Image;

.field public mBackgroundImage:Landroid/graphics/Bitmap;

.field mons:[Lcom/b2bstudio/graphics/Sprite;

.field public monster:Lcom/b2bstudio/digger/monster;

.field notfiring:Z

.field numbers:[Lcom/b2bstudio/graphics/Image;

.field rechargetime:I

.field public score:Lcom/b2bstudio/digger/score;

.field public sprite:Lcom/b2bstudio/digger/sprite;

.field startbonustimeleft:I

.field time:J

.field timer:I

.field public w:I

.field wh:I

.field wi1:I

.field wt:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xc8

    sput v0, Lcom/b2bstudio/digger/main;->MAX_RATE:I

    const/16 v0, 0x28

    sput v0, Lcom/b2bstudio/digger/main;->MIN_RATE:I

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/b2bstudio/digger/gamer$loop;FLandroid/content/res/Resources;)V
    .locals 7
    .parameter "d"
    .parameter "de"
    .parameter "mResourceHandler"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x42

    iput v0, p0, Lcom/b2bstudio/digger/main;->frametime:I

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/b2bstudio/graphics/Sprite;

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    .line 25
    new-array v0, v6, [Lcom/b2bstudio/graphics/Sprite;

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    .line 26
    new-array v0, v6, [Lcom/b2bstudio/graphics/Sprite;

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    .line 27
    new-array v0, v6, [Lcom/b2bstudio/graphics/Image;

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/b2bstudio/graphics/Image;

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    .line 30
    iput v3, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    .line 31
    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerh:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerv:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerrx:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerry:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    .line 32
    iput v3, p0, Lcom/b2bstudio/digger/main;->digdir:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->digtime:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->firex:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->firey:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->firedir:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 33
    iput v3, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->deathbag:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->deathani:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->startbonustimeleft:I

    .line 34
    iput v3, p0, Lcom/b2bstudio/digger/main;->bonustimeleft:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->eatmsc:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->emocttime:I

    .line 36
    iput v3, p0, Lcom/b2bstudio/digger/main;->emmask:I

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [[B

    new-array v1, v5, [B

    aput-byte v4, v1, v3

    aput-object v1, v0, v3

    .line 39
    new-array v1, v5, [B

    aput-byte v4, v1, v3

    aput-byte v4, v1, v2

    aput-object v1, v0, v4

    .line 40
    new-array v1, v5, [B

    aput-byte v4, v1, v2

    aput-object v1, v0, v2

    .line 41
    new-array v1, v5, [B

    aput-byte v4, v1, v3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->colorindex:[[B

    .line 43
    const/16 v0, 0x96

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    .line 55
    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->digonscr:Z

    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->bonusvisible:Z

    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->diggervisible:Z

    iput-boolean v4, p0, Lcom/b2bstudio/digger/main;->bkgone:Z

    .line 57
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/b2bstudio/digger/main;->ftime:J

    .line 58
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->embox:[I

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [I

    aput v5, v0, v3

    const/4 v1, 0x5

    aput v1, v0, v4

    const/4 v1, 0x6

    aput v1, v0, v2

    const/4 v1, 0x6

    aput v1, v0, v5

    const/4 v1, 0x4

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v5, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->deatharc:[I

    .line 63
    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->border:Z

    .line 64
    iput v3, p0, Lcom/b2bstudio/digger/main;->wh:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->keypressed:I

    iput v4, p0, Lcom/b2bstudio/digger/main;->l:I

    .line 65
    iput v3, p0, Lcom/b2bstudio/digger/main;->wi1:I

    iput v3, p0, Lcom/b2bstudio/digger/main;->hi1:I

    .line 67
    iput v3, p0, Lcom/b2bstudio/digger/main;->timer:I

    .line 68
    const/16 v0, 0xc

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    .line 69
    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    .line 70
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/b2bstudio/digger/main;->density:F

    .line 85
    iput-object p1, p0, Lcom/b2bstudio/digger/main;->dig:Lcom/b2bstudio/digger/gamer$loop;

    .line 86
    iput p2, p0, Lcom/b2bstudio/digger/main;->density:F

    .line 87
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->initGraphic()V

    .line 88
    invoke-virtual {p0, p3}, Lcom/b2bstudio/digger/main;->generate(Landroid/content/res/Resources;)V

    .line 89
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->initgame()V

    .line 90
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->init()V

    .line 91
    return-void

    .line 58
    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method checkdiggerunderbag(II)Z
    .locals 3
    .parameter "h"
    .parameter "v"

    .prologue
    const/16 v2, 0x12

    .line 182
    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 183
    :cond_0
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x14

    if-ne v0, p1, :cond_2

    .line 184
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x12

    if-eq v0, p2, :cond_1

    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 185
    :cond_1
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method countem()I
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, n:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xf

    if-lt v1, v3, :cond_0

    .line 195
    return v0

    .line 192
    :cond_0
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v4, v2, 0xf

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    iget v4, p0, Lcom/b2bstudio/digger/main;->emmask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method createbonus()V
    .locals 3

    .prologue
    const/16 v2, 0x124

    const/16 v1, 0x12

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/main;->bonusvisible:Z

    .line 200
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v0, v2, v1}, Lcom/b2bstudio/digger/draw;->drawbonus(II)V

    .line 201
    invoke-virtual {p0, v2, v1}, Lcom/b2bstudio/digger/main;->drawbonus(II)V

    .line 202
    return-void
.end method

.method diggerdie()V
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 206
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    packed-switch v1, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    iget v2, p0, Lcom/b2bstudio/digger/main;->deathbag:I

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bags;->bagy(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    if-le v1, v2, :cond_1

    .line 209
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    iget v2, p0, Lcom/b2bstudio/digger/main;->deathbag:I

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bags;->bagy(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/16 v2, 0xf

    iget v3, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v4, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/b2bstudio/digger/draw;->drawdigger(IIIZ)I

    .line 212
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 213
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    iget v2, p0, Lcom/b2bstudio/digger/main;->deathbag:I

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bags;->getbagdir(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 214
    iput v9, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    .line 215
    iput v8, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    .line 216
    iput v7, p0, Lcom/b2bstudio/digger/main;->deathani:I

    .line 217
    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    goto :goto_0

    .line 221
    :pswitch_1
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    if-eqz v1, :cond_2

    .line 222
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    goto :goto_0

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/16 v2, 0xe

    iget v3, p0, Lcom/b2bstudio/digger/main;->deathani:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v4, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/b2bstudio/digger/draw;->drawdigger(IIIZ)I

    move-result v0

    .line 227
    .local v0, clbits:I
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 228
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    if-nez v1, :cond_3

    and-int/lit16 v1, v0, 0x3f00

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v1, v0}, Lcom/b2bstudio/digger/monster;->killmonsters(I)I

    .line 230
    :cond_3
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    if-ge v1, v5, :cond_4

    .line 231
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    .line 232
    iput v8, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    goto :goto_0

    .line 235
    :cond_4
    iput v5, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    .line 236
    const/16 v1, 0xa

    iput v1, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    goto/16 :goto_0

    .line 240
    .end local v0           #clbits:I
    :pswitch_2
    iput v9, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    .line 241
    iput v7, p0, Lcom/b2bstudio/digger/main;->deathani:I

    .line 242
    iput v7, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    goto/16 :goto_0

    .line 245
    :pswitch_3
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/16 v2, 0xf

    iget v3, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v4, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget-object v5, p0, Lcom/b2bstudio/digger/main;->deatharc:[I

    iget v6, p0, Lcom/b2bstudio/digger/main;->deathani:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/b2bstudio/digger/draw;->drawdigger(IIIZ)I

    .line 247
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 248
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    .line 249
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 250
    iput v9, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    .line 251
    iput v7, p0, Lcom/b2bstudio/digger/main;->deathani:I

    .line 252
    iput v8, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    goto/16 :goto_0

    .line 257
    :pswitch_4
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    if-eqz v1, :cond_5

    .line 258
    iget v1, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    goto/16 :goto_0

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->drawdigger()V

    .line 261
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/construct;->setdead(Z)V

    .line 262
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/input;->setnodirec()V

    goto/16 :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method diggerhide(Z)V
    .locals 2
    .parameter "t"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    invoke-virtual {v0, p1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 698
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 699
    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 798
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mBackgroundImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 799
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    invoke-virtual {v0, p1, v3, v3}, Lcom/b2bstudio/graphics/LayerManager;->onDraw(Landroid/graphics/Canvas;II)V

    .line 801
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->control:Lcom/b2bstudio/graphics/Image;

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->dig:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/gamer$loop;->getW()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->dig:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/gamer$loop;->getH()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 802
    return-void
.end method

.method dodigger()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 268
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->newframe()V

    .line 269
    iget v0, p0, Lcom/b2bstudio/digger/main;->expsn:I

    if-eqz v0, :cond_5

    .line 270
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->drawexplosion()V

    .line 273
    :goto_0
    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->diggervisible:Z

    if-eqz v0, :cond_0

    .line 274
    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v0, :cond_8

    .line 275
    iget v0, p0, Lcom/b2bstudio/digger/main;->digtime:I

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v3, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget-boolean v4, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    if-nez v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/b2bstudio/digger/draw;->drawdigger(IIIZ)I

    .line 277
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 278
    iget v0, p0, Lcom/b2bstudio/digger/main;->digtime:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/b2bstudio/digger/main;->digtime:I

    .line 284
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v0, :cond_2

    .line 285
    iget v0, p0, Lcom/b2bstudio/digger/main;->bonustimeleft:I

    if-eqz v0, :cond_a

    .line 286
    iget v0, p0, Lcom/b2bstudio/digger/main;->bonustimeleft:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/b2bstudio/digger/main;->bonustimeleft:I

    .line 287
    iget v0, p0, Lcom/b2bstudio/digger/main;->startbonustimeleft:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/b2bstudio/digger/main;->bonustimeleft:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 288
    :cond_1
    iget v0, p0, Lcom/b2bstudio/digger/main;->startbonustimeleft:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/b2bstudio/digger/main;->startbonustimeleft:I

    .line 289
    iget v0, p0, Lcom/b2bstudio/digger/main;->bonustimeleft:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v6}, Lcom/b2bstudio/digger/board;->ginten(I)V

    .line 295
    :goto_3
    iget v0, p0, Lcom/b2bstudio/digger/main;->startbonustimeleft:I

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v5}, Lcom/b2bstudio/digger/board;->ginten(I)V

    .line 304
    :cond_2
    :goto_4
    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-nez v0, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->endbonusmode()V

    .line 307
    :cond_3
    iget v0, p0, Lcom/b2bstudio/digger/main;->emocttime:I

    if-lez v0, :cond_4

    .line 308
    iget v0, p0, Lcom/b2bstudio/digger/main;->emocttime:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/b2bstudio/digger/main;->emocttime:I

    .line 309
    :cond_4
    return-void

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->updatefire()V

    goto :goto_0

    :cond_6
    move v4, v6

    .line 276
    goto :goto_1

    .line 281
    :cond_7
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->updatedigger()V

    goto :goto_2

    .line 283
    :cond_8
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->diggerdie()V

    goto :goto_2

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v5}, Lcom/b2bstudio/digger/board;->ginten(I)V

    goto :goto_3

    .line 301
    :cond_a
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->endbonusmode()V

    goto :goto_4
.end method

.method public drawScreen()V
    .locals 10

    .prologue
    .line 713
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    iget v5, p0, Lcom/b2bstudio/digger/main;->wi1:I

    if-lt v3, v5, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->drawfield()V

    .line 719
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v6}, Lcom/b2bstudio/digger/construct;->getcplayer()I

    move-result v6

    shl-int/2addr v5, v6

    iput v5, p0, Lcom/b2bstudio/digger/main;->emmask:I

    .line 720
    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0xf

    if-lt v3, v5, :cond_2

    .line 727
    iget v5, p0, Lcom/b2bstudio/digger/main;->wi1:I

    const/16 v6, 0x4e

    sub-int v2, v5, v6

    .line 728
    .local v2, t:I
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->gethighscorestr()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, sc:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_5

    .line 733
    return-void

    .line 714
    .end local v0           #i:I
    .end local v1           #sc:Ljava/lang/String;
    .end local v2           #t:I
    :cond_0
    const/4 v4, 0x0

    .local v4, y:I
    :goto_3
    iget v5, p0, Lcom/b2bstudio/digger/main;->hi1:I

    if-lt v4, v5, :cond_1

    .line 713
    add-int/lit8 v3, v3, 0x28

    goto :goto_0

    .line 715
    :cond_1
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    iget-object v6, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v6}, Lcom/b2bstudio/digger/construct;->levno()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x6

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v7, v4, 0xe

    invoke-virtual {v5, v6, v3, v7}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 714
    add-int/lit8 v4, v4, 0x28

    goto :goto_3

    .line 721
    .end local v4           #y:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #y:I
    :goto_4
    const/16 v5, 0xa

    if-lt v4, v5, :cond_3

    .line 720
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 722
    :cond_3
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v6, v4, 0xf

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    iget v6, p0, Lcom/b2bstudio/digger/main;->emmask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 723
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->emerald:Lcom/b2bstudio/graphics/Image;

    iget-object v6, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    mul-int/lit8 v7, v3, 0x14

    add-int/lit8 v7, v7, 0xc

    int-to-float v7, v7

    iget v8, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    mul-int/lit8 v8, v4, 0x12

    add-int/lit8 v8, v8, 0x15

    int-to-float v8, v8

    iget v9, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 721
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 730
    .end local v4           #y:I
    .restart local v0       #i:I
    .restart local v1       #sc:Ljava/lang/String;
    .restart local v2       #t:I
    :cond_5
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 731
    add-int/lit8 v2, v2, 0xd

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method drawbag(IIII)V
    .locals 4
    .parameter "i"
    .parameter "x"
    .parameter "y"
    .parameter "f"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 659
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 660
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    int-to-float v1, p2

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    .line 661
    return-void
.end method

.method drawbonus(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 884
    int-to-float v0, p1

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 885
    int-to-float v0, p2

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 886
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bonus:Lcom/b2bstudio/graphics/Image;

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 887
    return-void
.end method

.method drawbonusmask(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 889
    int-to-float v0, p1

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 890
    int-to-float v0, p2

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 891
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bonusmask:Lcom/b2bstudio/graphics/Image;

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 892
    return-void
.end method

.method drawbottomblob(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 899
    const/4 v0, 0x4

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 900
    add-int/lit8 v0, p2, 0xf

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 901
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 902
    return-void
.end method

.method drawdigger()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 929
    iget v0, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 931
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 932
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->deatharc:[I

    iget v4, p0, Lcom/b2bstudio/digger/main;->deathani:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget v0, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/b2bstudio/digger/main;->deathtime:I

    if-lez v0, :cond_3

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->deathani:I

    add-int/lit8 v1, v1, 0x19

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 937
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    int-to-float v2, v2

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    goto :goto_0

    .line 939
    :cond_3
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->getdead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget v0, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    if-eqz v0, :cond_5

    .line 942
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    .line 943
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    if-ne v0, v3, :cond_4

    iput v2, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    .line 944
    :cond_4
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 945
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    int-to-float v2, v2

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    goto :goto_0

    .line 947
    :cond_5
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    .line 948
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    if-ne v0, v3, :cond_6

    iput v2, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    .line 949
    :cond_6
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 950
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    int-to-float v2, v2

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    goto/16 :goto_0
.end method

.method drawemerald(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 879
    int-to-float v0, p1

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 880
    int-to-float v0, p2

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 881
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->emerald:Lcom/b2bstudio/graphics/Image;

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 882
    return-void
.end method

.method drawemeralds()V
    .locals 5

    .prologue
    .line 514
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->getcplayer()I

    move-result v3

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/b2bstudio/digger/main;->emmask:I

    .line 515
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    .line 519
    return-void

    .line 516
    :cond_0
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v3, v1, 0xf

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget v3, p0, Lcom/b2bstudio/digger/main;->emmask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 518
    iget-object v2, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    mul-int/lit8 v3, v0, 0x14

    add-int/lit8 v3, v3, 0xc

    mul-int/lit8 v4, v1, 0x12

    add-int/lit8 v4, v4, 0x15

    invoke-virtual {v2, v3, v4}, Lcom/b2bstudio/digger/draw;->drawemerald(II)V

    .line 516
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method drawexplosion()V
    .locals 4

    .prologue
    .line 522
    iget v0, p0, Lcom/b2bstudio/digger/main;->expsn:I

    packed-switch v0, :pswitch_data_0

    .line 531
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->killfire()V

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 534
    :goto_0
    return-void

    .line 526
    :pswitch_0
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->firey:I

    iget v3, p0, Lcom/b2bstudio/digger/main;->expsn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/b2bstudio/digger/draw;->drawfire(III)I

    .line 527
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 528
    iget v0, p0, Lcom/b2bstudio/digger/main;->expsn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/main;->expsn:I

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method drawfield()V
    .locals 12

    .prologue
    const/16 v11, 0xfdf

    const/16 v10, 0xf

    const/16 v9, 0xc

    const/16 v8, 0x9

    .line 737
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    if-lt v0, v10, :cond_0

    .line 766
    return-void

    .line 738
    :cond_0
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/16 v4, 0xa

    if-lt v2, v4, :cond_1

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_1
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, v4, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0x2000

    if-nez v4, :cond_5

    .line 740
    mul-int/lit8 v4, v0, 0x14

    add-int/lit8 v1, v4, 0xc

    .line 741
    .local v1, xp:I
    mul-int/lit8 v4, v2, 0x12

    add-int/lit8 v3, v4, 0x12

    .line 742
    .local v3, yp:I
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, v4, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfc0

    const/16 v5, 0xfc0

    if-eq v4, v5, :cond_2

    .line 743
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, v4, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    const v7, 0xd03f

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 744
    sub-int v4, v3, v10

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 745
    sub-int v4, v3, v9

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 746
    sub-int v4, v3, v8

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 747
    const/4 v4, 0x6

    sub-int v4, v3, v4

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 748
    const/4 v4, 0x3

    sub-int v4, v3, v4

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 749
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/main;->drawtopblob(II)V

    .line 751
    :cond_2
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, v4, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_3

    .line 752
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, v4, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    const v7, 0xdfe0

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 753
    const/16 v4, 0x10

    sub-int v4, v1, v4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/main;->drawrightblob(II)V

    .line 754
    sub-int v4, v1, v9

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/main;->drawrightblob(II)V

    .line 755
    const/16 v4, 0x8

    sub-int v4, v1, v4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/main;->drawrightblob(II)V

    .line 756
    const/4 v4, 0x4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/main;->drawrightblob(II)V

    .line 757
    add-int/lit8 v4, v1, 0x4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/main;->drawleftblob(II)V

    .line 759
    :cond_3
    const/16 v4, 0xe

    if-ge v0, v4, :cond_4

    .line 760
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, v4, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfdf

    if-eq v4, v11, :cond_4

    .line 761
    invoke-virtual {p0, v1, v3}, Lcom/b2bstudio/digger/main;->drawrightblob(II)V

    .line 762
    :cond_4
    if-ge v2, v8, :cond_5

    .line 763
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, v4, Lcom/b2bstudio/digger/draw;->field:[I

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfdf

    if-eq v4, v11, :cond_5

    .line 764
    invoke-virtual {p0, v1, v3}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 738
    .end local v1           #xp:I
    .end local v3           #yp:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method drawfire(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "spr"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 664
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    invoke-virtual {v0, p3}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 665
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    int-to-float v1, p1

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    .line 666
    return-void
.end method

.method drawfurryblob(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 919
    const/4 v0, 0x4

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 920
    add-int/lit8 v0, p2, 0xf

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 921
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 922
    return-void
.end method

.method drawgold(IIII)V
    .locals 4
    .parameter "i"
    .parameter "x"
    .parameter "y"
    .parameter "f"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 654
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 655
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    int-to-float v1, p2

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    .line 656
    return-void
.end method

.method drawleftblob(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 914
    const/16 v0, 0x8

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 915
    const/4 v0, 0x1

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 916
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 917
    return-void
.end method

.method drawlives(I)V
    .locals 7
    .parameter "t"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 768
    move v2, p1

    .line 769
    .local v2, t1:I
    const/4 v0, 0x0

    .local v0, l:I
    :goto_0
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 773
    move p1, v2

    .line 774
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3, v6}, Lcom/b2bstudio/digger/construct;->getlives(I)I

    move-result v3

    sub-int v1, v3, v6

    .line 775
    .local v1, n:I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 779
    return-void

    .line 770
    .end local v1           #n:I
    :cond_0
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->lifemask:Lcom/b2bstudio/graphics/Image;

    iget-object v4, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4, p1, v5}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 771
    add-int/lit8 p1, p1, 0x13

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    .restart local v1       #n:I
    :cond_1
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->life:Lcom/b2bstudio/graphics/Image;

    iget-object v4, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4, p1, v5}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 777
    add-int/lit8 p1, p1, 0x13

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method drawmon(IIIZI)V
    .locals 4
    .parameter "i"
    .parameter "x"
    .parameter "y"
    .parameter "nob"
    .parameter "d"

    .prologue
    const/4 v2, 0x1

    .line 668
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 669
    if-nez p4, :cond_1

    .line 670
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v1, v1, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v1, v1, p1

    if-nez p5, :cond_0

    :goto_0
    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 675
    :goto_1
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    int-to-float v1, p2

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    .line 676
    return-void

    .line 670
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v1, v1, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    goto :goto_1
.end method

.method drawmondie(IIIZI)V
    .locals 4
    .parameter "i"
    .parameter "x"
    .parameter "y"
    .parameter "nob"
    .parameter "d"

    .prologue
    const/4 v1, 0x1

    .line 678
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 679
    if-nez p4, :cond_1

    .line 680
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    if-nez p5, :cond_0

    :goto_0
    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 685
    :goto_1
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    int-to-float v1, p2

    iget v2, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setPosition(II)V

    .line 686
    return-void

    .line 680
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    goto :goto_1
.end method

.method drawrightblob(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 909
    add-int/lit8 v0, p1, 0x10

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 910
    const/4 v0, 0x1

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 911
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 912
    return-void
.end method

.method drawsquareblob(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 894
    const/4 v0, 0x4

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 895
    add-int/lit8 v0, p2, 0x11

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 896
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 897
    return-void
.end method

.method drawtopblob(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 904
    const/4 v0, 0x4

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 905
    const/4 v0, 0x6

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 906
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 907
    return-void
.end method

.method endbonusmode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    iput-boolean v1, p0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    .line 538
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/board;->ginten(I)V

    .line 539
    return-void
.end method

.method erasebonus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->bonusvisible:Z

    if-eqz v0, :cond_0

    .line 543
    iput-boolean v2, p0, Lcom/b2bstudio/digger/main;->bonusvisible:Z

    .line 544
    const/16 v0, 0x124

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/b2bstudio/digger/main;->drawbonusmask(II)V

    .line 545
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/sprite;->erasespr(I)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v2}, Lcom/b2bstudio/digger/board;->ginten(I)V

    .line 548
    return-void
.end method

.method erasedigger()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/sprite;->erasespr(I)V

    .line 552
    iput-boolean v1, p0, Lcom/b2bstudio/digger/main;->diggervisible:Z

    .line 553
    return-void
.end method

.method eraseemerald(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 924
    int-to-float v0, p1

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 925
    int-to-float v0, p2

    iget v1, p0, Lcom/b2bstudio/digger/main;->density:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 926
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->emask:Lcom/b2bstudio/graphics/Image;

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 927
    return-void
.end method

.method public generate(Landroid/content/res/Resources;)V
    .locals 11
    .parameter "mResourceHandler"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 805
    new-instance v1, Lcom/b2bstudio/graphics/LayerManager;

    invoke-direct {v1}, Lcom/b2bstudio/graphics/LayerManager;-><init>()V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    .line 807
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v10, :cond_0

    .line 814
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 821
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 828
    new-instance v1, Lcom/b2bstudio/graphics/Sprite;

    const-string v2, "fire"

    invoke-static {v2}, Lcom/b2bstudio/graphics/library;->getResourceById(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/b2bstudio/graphics/Sprite;-><init>([Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    .line 829
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    invoke-virtual {v1, v7}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 830
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    invoke-virtual {v1, v6}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 832
    new-instance v1, Lcom/b2bstudio/graphics/Image;

    const v2, 0x7f02002b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->emerald:Lcom/b2bstudio/graphics/Image;

    .line 833
    new-instance v1, Lcom/b2bstudio/graphics/Image;

    const v2, 0x7f02002a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->emask:Lcom/b2bstudio/graphics/Image;

    .line 835
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f02002c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v6

    .line 836
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f02002d

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v7

    .line 837
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f02002e

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v8

    .line 838
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f02002f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v9

    .line 839
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v2, 0x4

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f020030

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 840
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v2, 0x5

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f020031

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 842
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f020050

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v10

    .line 843
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->blob:[Lcom/b2bstudio/graphics/Image;

    const/4 v2, 0x7

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f020051

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 845
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f020056

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v6

    .line 846
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f02004c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v7

    .line 847
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f020053

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v8

    .line 848
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f020052

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v9

    .line 849
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    const/4 v2, 0x4

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f020037

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 850
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    const/4 v2, 0x5

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f020036

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 851
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    new-instance v2, Lcom/b2bstudio/graphics/Image;

    const v3, 0x7f02004e

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v10

    .line 852
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    const/4 v2, 0x7

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f02004d

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 853
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    const/16 v2, 0x8

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f020029

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 854
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    const/16 v2, 0x9

    new-instance v3, Lcom/b2bstudio/graphics/Image;

    const v4, 0x7f02004b

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    .line 856
    new-instance v1, Lcom/b2bstudio/graphics/Image;

    const v2, 0x7f020007

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->bonus:Lcom/b2bstudio/graphics/Image;

    .line 857
    new-instance v1, Lcom/b2bstudio/graphics/Image;

    const v2, 0x7f020006

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->bonusmask:Lcom/b2bstudio/graphics/Image;

    .line 858
    new-instance v1, Lcom/b2bstudio/graphics/Image;

    const v2, 0x7f02003d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->life:Lcom/b2bstudio/graphics/Image;

    .line 859
    new-instance v1, Lcom/b2bstudio/graphics/Image;

    const v2, 0x7f02003e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->lifemask:Lcom/b2bstudio/graphics/Image;

    .line 860
    new-instance v1, Lcom/b2bstudio/graphics/Image;

    const v2, 0x7f020008

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b2bstudio/graphics/Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->control:Lcom/b2bstudio/graphics/Image;

    .line 862
    new-instance v1, Lcom/b2bstudio/graphics/Sprite;

    const-string v2, "digger"

    invoke-static {v2}, Lcom/b2bstudio/graphics/library;->getResourceById(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/b2bstudio/digger/main;->wt:I

    iget v4, p0, Lcom/b2bstudio/digger/main;->ht:I

    invoke-direct {v1, v2, v3, v4}, Lcom/b2bstudio/graphics/Sprite;-><init>([Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    .line 863
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    iget v3, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 864
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    invoke-virtual {v1, v7}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 866
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 867
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 868
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 869
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 870
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 871
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 872
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 873
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 874
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 875
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->layer:Lcom/b2bstudio/graphics/LayerManager;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/LayerManager;->append(Lcom/b2bstudio/graphics/Sprite;)V

    .line 876
    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    new-instance v2, Lcom/b2bstudio/graphics/Sprite;

    const-string v3, "monster"

    invoke-static {v3}, Lcom/b2bstudio/graphics/library;->getResourceById(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/b2bstudio/digger/main;->wt:I

    iget v5, p0, Lcom/b2bstudio/digger/main;->ht:I

    invoke-direct {v2, v3, v4, v5}, Lcom/b2bstudio/graphics/Sprite;-><init>([Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    aput-object v2, v1, v0

    .line 810
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 811
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    new-instance v2, Lcom/b2bstudio/graphics/Sprite;

    const-string v3, "bag"

    invoke-static {v3}, Lcom/b2bstudio/graphics/library;->getResourceById(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/b2bstudio/digger/main;->wt:I

    iget v5, p0, Lcom/b2bstudio/digger/main;->ht:I

    invoke-direct {v2, v3, v4, v5}, Lcom/b2bstudio/graphics/Sprite;-><init>([Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v0

    .line 817
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 818
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    new-instance v2, Lcom/b2bstudio/graphics/Sprite;

    const-string v3, "gold"

    invoke-static {v3}, Lcom/b2bstudio/graphics/library;->getResourceById(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/b2bstudio/digger/main;->wt:I

    iget v5, p0, Lcom/b2bstudio/digger/main;->ht:I

    invoke-direct {v2, v3, v4, v5}, Lcom/b2bstudio/graphics/Sprite;-><init>([Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v0

    .line 824
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Lcom/b2bstudio/graphics/Sprite;->setFrame(I)V

    .line 825
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method getfirepflag()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget-boolean v0, v0, Lcom/b2bstudio/digger/input;->firepflag:Z

    return v0
.end method

.method gethighscorestr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/score;->gethighscore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, sc:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 710
    return-object v0

    .line 709
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getscorestr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/score;->getscore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, sc:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 704
    return-object v0

    .line 703
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method hitemerald(IIIII)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "rx"
    .parameter "ry"
    .parameter "dir"

    .prologue
    const/4 v4, 0x6

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, hit:Z
    if-ltz p5, :cond_0

    if-gt p5, v4, :cond_0

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v0

    .line 584
    .end local v0           #hit:Z
    .local v1, hit:I
    :goto_0
    return v1

    .line 564
    .end local v1           #hit:I
    .restart local v0       #hit:Z
    :cond_1
    if-nez p5, :cond_2

    if-eqz p3, :cond_2

    .line 565
    add-int/lit8 p1, p1, 0x1

    .line 566
    :cond_2
    if-ne p5, v4, :cond_3

    if-eqz p4, :cond_3

    .line 567
    add-int/lit8 p2, p2, 0x1

    .line 568
    :cond_3
    if-eqz p5, :cond_4

    const/4 v3, 0x4

    if-ne p5, v3, :cond_7

    .line 569
    :cond_4
    move v2, p3

    .line 572
    .local v2, r:I
    :goto_1
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v4, p2, 0xf

    add-int/2addr v4, p1

    aget-byte v3, v3, v4

    iget v4, p0, Lcom/b2bstudio/digger/main;->emmask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 573
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->embox:[I

    aget v3, v3, p5

    if-ne v2, v3, :cond_5

    .line 574
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    mul-int/lit8 v4, p1, 0x14

    add-int/lit8 v4, v4, 0xc

    mul-int/lit8 v5, p2, 0x12

    add-int/lit8 v5, v5, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/draw;->drawemerald(II)V

    .line 575
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 577
    :cond_5
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->embox:[I

    add-int/lit8 v4, p5, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_6

    .line 578
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    mul-int/lit8 v4, p1, 0x14

    add-int/lit8 v4, v4, 0xc

    mul-int/lit8 v5, p2, 0x12

    add-int/lit8 v5, v5, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/draw;->eraseemerald(II)V

    .line 579
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 580
    const/4 v0, 0x1

    .line 581
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v4, p2, 0xf

    add-int/2addr v4, p1

    aget-byte v5, v3, v4

    iget v6, p0, Lcom/b2bstudio/digger/main;->emmask:I

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    :cond_6
    move v1, v0

    .line 584
    .restart local v1       #hit:I
    goto :goto_0

    .line 571
    .end local v1           #hit:I
    .end local v2           #r:I
    :cond_7
    move v2, p4

    .restart local v2       #r:I
    goto :goto_1
.end method

.method public idle()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->main()V

    .line 795
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    const/16 v0, 0xc8

    iput v0, p0, Lcom/b2bstudio/digger/main;->h:I

    iput v1, p0, Lcom/b2bstudio/digger/main;->x:I

    .line 102
    const/16 v0, 0x140

    iput v0, p0, Lcom/b2bstudio/digger/main;->w:I

    iput v1, p0, Lcom/b2bstudio/digger/main;->y:I

    .line 103
    const/16 v0, 0x42

    iput v0, p0, Lcom/b2bstudio/digger/main;->frametime:I

    .line 104
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    const/high16 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/b2bstudio/digger/board;->pixels:[B

    .line 105
    return-void
.end method

.method public initGraphic()V
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0x140

    iput v0, p0, Lcom/b2bstudio/digger/main;->wi1:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/b2bstudio/digger/main;->hi1:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/b2bstudio/digger/main;->wt:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/b2bstudio/digger/main;->ht:I

    .line 95
    iget v0, p0, Lcom/b2bstudio/digger/main;->density:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/b2bstudio/digger/main;->wi1:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/b2bstudio/digger/main;->hi1:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/b2bstudio/digger/main;->wt:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/b2bstudio/digger/main;->ht:I

    .line 96
    :cond_0
    iget v0, p0, Lcom/b2bstudio/digger/main;->wi1:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->hi1:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    .line 98
    return-void
.end method

.method initbonusmode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    iput-boolean v2, p0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    .line 120
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->erasebonus()V

    .line 121
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v2}, Lcom/b2bstudio/digger/board;->ginten(I)V

    .line 122
    const/16 v0, 0xfa

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->bonustimeleft:I

    .line 123
    const/16 v0, 0x14

    iput v0, p0, Lcom/b2bstudio/digger/main;->startbonustimeleft:I

    .line 124
    iput v2, p0, Lcom/b2bstudio/digger/main;->eatmsc:I

    .line 125
    return-void
.end method

.method initdigger()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const/16 v0, 0x9

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerv:I

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    .line 130
    const/4 v0, 0x7

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerh:I

    .line 131
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerh:I

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    .line 132
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iput v0, p0, Lcom/b2bstudio/digger/main;->dx:I

    .line 133
    iput v3, p0, Lcom/b2bstudio/digger/main;->digdir:I

    .line 134
    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerrx:I

    .line 135
    iput v3, p0, Lcom/b2bstudio/digger/main;->diggerry:I

    .line 136
    iput v3, p0, Lcom/b2bstudio/digger/main;->digtime:I

    .line 137
    iput-boolean v4, p0, Lcom/b2bstudio/digger/main;->digonscr:Z

    .line 138
    iput v4, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    .line 139
    iput-boolean v4, p0, Lcom/b2bstudio/digger/main;->diggervisible:Z

    .line 140
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerv:I

    mul-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x12

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    .line 141
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iput v0, p0, Lcom/b2bstudio/digger/main;->dy:I

    .line 142
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/b2bstudio/digger/sprite;->movedrawspr(III)I

    .line 143
    iput-boolean v4, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    .line 144
    iput v3, p0, Lcom/b2bstudio/digger/main;->emocttime:I

    .line 145
    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    iput-boolean v3, p0, Lcom/b2bstudio/digger/main;->bonusvisible:Z

    .line 146
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iput-boolean v3, v0, Lcom/b2bstudio/digger/input;->firepressed:Z

    .line 147
    iput v3, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 148
    iput v3, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    .line 149
    return-void
.end method

.method public initgame()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/b2bstudio/digger/bags;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/bags;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    .line 109
    new-instance v0, Lcom/b2bstudio/digger/construct;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/construct;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    .line 110
    new-instance v0, Lcom/b2bstudio/digger/monster;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/monster;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    .line 111
    new-instance v0, Lcom/b2bstudio/digger/score;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/score;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    .line 112
    new-instance v0, Lcom/b2bstudio/digger/sprite;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/sprite;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    .line 113
    new-instance v0, Lcom/b2bstudio/digger/draw;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/draw;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    .line 114
    new-instance v0, Lcom/b2bstudio/digger/input;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/input;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    .line 115
    new-instance v0, Lcom/b2bstudio/digger/board;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/board;-><init>(Lcom/b2bstudio/digger/main;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    .line 116
    return-void
.end method

.method protected keyPressed(I)V
    .locals 10
    .parameter "keyCode"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 956
    move v0, p1

    .line 961
    .local v0, key:I
    iput v0, p0, Lcom/b2bstudio/digger/main;->keypressed:I

    .line 962
    iget v1, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    .line 963
    .local v1, kp:I
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/input;->getddirec()I

    move-result v2

    .line 964
    .local v2, t:I
    sparse-switch v0, :sswitch_data_0

    .line 972
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v3, v0}, Lcom/b2bstudio/digger/input;->processkey(I)V

    .line 975
    :goto_0
    if-ne v2, v9, :cond_1

    .line 994
    :cond_0
    :goto_1
    return-void

    .line 965
    :sswitch_0
    iput v5, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 966
    :sswitch_1
    iput v6, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 967
    :sswitch_2
    iput v7, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    const/16 v4, 0x48

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 968
    :sswitch_3
    iput v8, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 969
    :sswitch_4
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 970
    :sswitch_5
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 977
    :cond_1
    iget v3, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/input;->getdirec()I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 978
    if-ne v1, v5, :cond_2

    iget v3, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    if-ne v3, v6, :cond_2

    .line 979
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/input;->setnodirec()V

    goto :goto_1

    .line 981
    :cond_2
    if-ne v1, v6, :cond_3

    iget v3, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    if-ne v3, v5, :cond_3

    .line 983
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/input;->setnodirec()V

    goto :goto_1

    .line 985
    :cond_3
    if-ne v1, v7, :cond_4

    iget v3, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    if-ne v3, v8, :cond_4

    .line 987
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/input;->setnodirec()V

    goto :goto_1

    .line 989
    :cond_4
    if-ne v1, v8, :cond_0

    iget v3, p0, Lcom/b2bstudio/digger/main;->keyParam:I

    if-ne v3, v7, :cond_0

    .line 991
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/input;->setnodirec()V

    goto :goto_1

    .line 964
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method protected keyReleased(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    const/16 v2, 0xbb

    .line 997
    move v0, p1

    .line 998
    .local v0, key:I
    sparse-switch v0, :sswitch_data_0

    .line 1006
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v1, v0}, Lcom/b2bstudio/digger/input;->processkey(I)V

    .line 1008
    :goto_0
    return-void

    .line 1003
    :sswitch_0
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 1004
    :sswitch_1
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/input;->processkey(I)V

    goto :goto_0

    .line 998
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method killdigger(II)V
    .locals 2
    .parameter "stage"
    .parameter "bag"

    .prologue
    .line 608
    iget v0, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 609
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/main;->digonscr:Z

    .line 610
    iput p1, p0, Lcom/b2bstudio/digger/main;->deathstage:I

    .line 611
    iput p2, p0, Lcom/b2bstudio/digger/main;->deathbag:I

    .line 613
    :cond_1
    return-void
.end method

.method killemerald(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v1, p2, 0xf

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0xf

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/main;->emmask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v1, p2, 0xf

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0xf

    aget-byte v2, v0, v1

    iget v3, p0, Lcom/b2bstudio/digger/main;->emmask:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 618
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v2, v2, 0x12

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/digger/draw;->eraseemerald(II)V

    .line 620
    :cond_0
    return-void
.end method

.method killfire()V
    .locals 2

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    .line 625
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/sprite;->erasespr(I)V

    .line 626
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->fire:Lcom/b2bstudio/graphics/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 628
    :cond_0
    return-void
.end method

.method killmon(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 605
    return-void
.end method

.method makeemfield()V
    .locals 6

    .prologue
    .line 631
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->getcplayer()I

    move-result v3

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/b2bstudio/digger/main;->emmask:I

    .line 632
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    .line 638
    return-void

    .line 633
    :cond_0
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    iget-object v3, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->levplan()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/b2bstudio/digger/construct;->getlevch(III)I

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_2

    .line 635
    iget-object v2, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v3, v1, 0xf

    add-int/2addr v3, v0

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/b2bstudio/digger/main;->emmask:I

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 633
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 637
    :cond_2
    iget-object v2, p0, Lcom/b2bstudio/digger/main;->emfield:[B

    mul-int/lit8 v3, v1, 0xf

    add-int/2addr v3, v0

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/b2bstudio/digger/main;->emmask:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_2
.end method

.method mondie(IZ)V
    .locals 1
    .parameter "i"
    .parameter "f"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 695
    return-void
.end method

.method newframe()V
    .locals 6

    .prologue
    .line 641
    iget-object v2, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/input;->checkkeyb()V

    .line 642
    iget-wide v2, p0, Lcom/b2bstudio/digger/main;->time:J

    iget v4, p0, Lcom/b2bstudio/digger/main;->frametime:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/b2bstudio/digger/main;->time:J

    .line 643
    iget-wide v2, p0, Lcom/b2bstudio/digger/main;->time:J

    iget-object v4, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/board;->gethrt()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 644
    .local v0, l:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 646
    long-to-int v2, v0

    int-to-long v2, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public poser(I)V
    .locals 3
    .parameter "dir"

    .prologue
    .line 588
    packed-switch p1, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iput v0, p0, Lcom/b2bstudio/digger/main;->dx:I

    .line 600
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iput v0, p0, Lcom/b2bstudio/digger/main;->dy:I

    .line 601
    return-void

    .line 590
    :pswitch_1
    iget v0, p0, Lcom/b2bstudio/digger/main;->x:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dx:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/main;->w:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v1, v1, Lcom/b2bstudio/digger/board;->width:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->x:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->x:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/main;->w:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->x:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dx:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->x:I

    goto :goto_0

    .line 592
    :pswitch_2
    iget v0, p0, Lcom/b2bstudio/digger/main;->x:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dx:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->x:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->x:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/main;->w:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->x:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dx:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->x:I

    goto :goto_0

    .line 594
    :pswitch_3
    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dy:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/main;->h:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dy:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->y:I

    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/b2bstudio/digger/main;->y:I

    goto/16 :goto_0

    .line 596
    :pswitch_4
    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dy:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/main;->h:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v1, v1, Lcom/b2bstudio/digger/board;->height:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/main;->h:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->dy:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->y:I

    goto/16 :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 173
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 176
    const/16 v1, 0xd

    iput v1, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    .line 177
    iput v2, p0, Lcom/b2bstudio/digger/main;->diggerFrame:I

    .line 178
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->startpos()V

    .line 179
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->mons:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method removebag(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bagspr:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 692
    return-void
.end method

.method removegold(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->gold:[Lcom/b2bstudio/graphics/Sprite;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 689
    return-void
.end method

.method reversedir(I)I
    .locals 1
    .parameter "dir"

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, p1

    .line 158
    :goto_0
    return v0

    .line 153
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 154
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 156
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public startpos()V
    .locals 2

    .prologue
    .line 162
    const/16 v0, 0xc8

    iget v1, p0, Lcom/b2bstudio/digger/main;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->y:I

    .line 163
    iget v0, p0, Lcom/b2bstudio/digger/main;->y:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/b2bstudio/digger/main;->y:I

    .line 164
    :cond_0
    const/16 v0, 0x98

    iget v1, p0, Lcom/b2bstudio/digger/main;->w:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->x:I

    .line 165
    iget v0, p0, Lcom/b2bstudio/digger/main;->x:I

    if-lez v0, :cond_1

    const/16 v0, 0xc

    iput v0, p0, Lcom/b2bstudio/digger/main;->x:I

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->digger:Lcom/b2bstudio/graphics/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/graphics/Sprite;->setVisible(Z)V

    .line 167
    return-void
.end method

.method updatedigger()V
    .locals 13

    .prologue
    .line 313
    const/4 v12, 0x0

    .line 314
    .local v12, push:Z
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/input;->readdir()V

    .line 315
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/input;->getdir()I

    move-result v10

    .line 316
    .local v10, dir:I
    if-eqz v10, :cond_0

    const/4 v0, 0x2

    if-eq v10, v0, :cond_0

    const/4 v0, 0x4

    if-eq v10, v0, :cond_0

    const/4 v0, 0x6

    if-ne v10, v0, :cond_11

    .line 317
    :cond_0
    move v7, v10

    .line 320
    .local v7, ddir:I
    :goto_0
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerrx:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1

    const/4 v0, 0x6

    if-ne v7, v0, :cond_2

    .line 321
    :cond_1
    iput v7, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    iput v7, p0, Lcom/b2bstudio/digger/main;->digdir:I

    .line 322
    :cond_2
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerry:I

    if-nez v0, :cond_4

    const/4 v0, 0x4

    if-eq v7, v0, :cond_3

    if-nez v7, :cond_4

    .line 323
    :cond_3
    iput v7, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    iput v7, p0, Lcom/b2bstudio/digger/main;->digdir:I

    .line 324
    :cond_4
    const/4 v0, -0x1

    if-ne v10, v0, :cond_12

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    .line 328
    :goto_1
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/16 v1, 0x124

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    if-eqz v0, :cond_8

    :cond_5
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    .line 329
    :cond_6
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    :cond_7
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 330
    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    .line 331
    :cond_9
    iget v8, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    .line 332
    .local v8, diggerox:I
    iget v9, p0, Lcom/b2bstudio/digger/main;->diggery:I

    .line 334
    .local v9, diggeroy:I
    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 335
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    invoke-virtual {v0, v8, v9, v1}, Lcom/b2bstudio/digger/draw;->eatfield(III)V

    .line 336
    :cond_a
    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    packed-switch v0, :pswitch_data_0

    .line 363
    :goto_2
    :pswitch_0
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x14

    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/16 v2, 0x12

    sub-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x12

    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/16 v3, 0xc

    sub-int/2addr v0, v3

    rem-int/lit8 v3, v0, 0x14

    .line 364
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/16 v4, 0x12

    sub-int/2addr v0, v4

    rem-int/lit8 v4, v0, 0x12

    iget v5, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    move-object v0, p0

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/main;->hitemerald(IIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 365
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/score;->scoreemerald()V

    .line 366
    const/16 v0, 0x9

    iput v0, p0, Lcom/b2bstudio/digger/main;->emocttime:I

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->digdir:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v3, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget-boolean v4, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/b2bstudio/digger/draw;->drawdigger(IIIZ)I

    move-result v6

    .line 369
    .local v6, clbits:I
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 370
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/bags;->bagbits()I

    move-result v0

    and-int/2addr v0, v6

    if-eqz v0, :cond_e

    .line 371
    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 372
    :cond_c
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    iget v1, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    invoke-virtual {v0, v1, v6}, Lcom/b2bstudio/digger/bags;->pushbags(II)Z

    move-result v12

    .line 373
    iget v0, p0, Lcom/b2bstudio/digger/main;->digtime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/main;->digtime:I

    .line 378
    :cond_d
    :goto_4
    if-nez v12, :cond_e

    .line 379
    iput v8, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    .line 380
    iput v9, p0, Lcom/b2bstudio/digger/main;->diggery:I

    .line 381
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v3, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iget-boolean v4, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    if-eqz v4, :cond_15

    iget v4, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    if-nez v4, :cond_15

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/b2bstudio/digger/draw;->drawdigger(IIIZ)I

    .line 382
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 383
    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/main;->reversedir(I)I

    move-result v0

    iput v0, p0, Lcom/b2bstudio/digger/main;->digdir:I

    .line 386
    :cond_e
    and-int/lit16 v0, v6, 0x3f00

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    if-eqz v0, :cond_f

    .line 387
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v0, v6}, Lcom/b2bstudio/digger/monster;->killmonsters(I)I

    move-result v11

    .local v11, nmon:I
    :goto_6
    if-nez v11, :cond_16

    .line 390
    .end local v11           #nmon:I
    :cond_f
    and-int/lit16 v0, v6, 0x4000

    if-eqz v0, :cond_10

    .line 391
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/score;->scorebonus()V

    .line 392
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->initbonusmode()V

    .line 394
    :cond_10
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerh:I

    .line 395
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerrx:I

    .line 396
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/16 v1, 0x12

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x12

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerv:I

    .line 397
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/16 v1, 0x12

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x12

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerry:I

    .line 398
    iget v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/main;->poser(I)V

    .line 399
    return-void

    .line 319
    .end local v6           #clbits:I
    .end local v7           #ddir:I
    .end local v8           #diggerox:I
    .end local v9           #diggeroy:I
    :cond_11
    const/4 v7, -0x1

    .restart local v7       #ddir:I
    goto/16 :goto_0

    .line 327
    :cond_12
    iget v0, p0, Lcom/b2bstudio/digger/main;->digdir:I

    iput v0, p0, Lcom/b2bstudio/digger/main;->digmdir:I

    goto/16 :goto_1

    .line 338
    .restart local v8       #diggerox:I
    .restart local v9       #diggeroy:I
    :pswitch_1
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {p0, v0, v1}, Lcom/b2bstudio/digger/main;->drawrightblob(II)V

    .line 339
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/digger/draw;->drawrightblob(II)V

    .line 340
    const/16 v0, 0xd

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    .line 341
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    goto/16 :goto_2

    .line 344
    :pswitch_2
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {p0, v0, v1}, Lcom/b2bstudio/digger/main;->drawleftblob(II)V

    .line 345
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/digger/draw;->drawleftblob(II)V

    .line 346
    const/4 v0, 0x7

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    .line 347
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    goto/16 :goto_2

    .line 350
    :pswitch_3
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {p0, v0, v1}, Lcom/b2bstudio/digger/main;->drawtopblob(II)V

    .line 351
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/digger/draw;->drawtopblob(II)V

    .line 352
    const/16 v0, 0x13

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    .line 353
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    goto/16 :goto_2

    .line 356
    :pswitch_4
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {p0, v0, v1}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 357
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v1, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iget v2, p0, Lcom/b2bstudio/digger/main;->diggery:I

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 358
    const/4 v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggerPos:I

    .line 359
    iget v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/b2bstudio/digger/main;->diggery:I

    goto/16 :goto_2

    .line 368
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 376
    .restart local v6       #clbits:I
    :cond_14
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v0, v6}, Lcom/b2bstudio/digger/bags;->pushudbags(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 377
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 381
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 388
    .restart local v11       #nmon:I
    :cond_16
    iget-object v0, p0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/score;->scoreeatm()V

    .line 387
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_6

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method updatefire()V
    .locals 13

    .prologue
    const/16 v12, 0xf

    const/16 v11, 0x8

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 402
    const/4 v3, 0x0

    .line 403
    .local v3, pix:I
    iget-boolean v4, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    if-eqz v4, :cond_2

    .line 404
    iget v4, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    if-eqz v4, :cond_1

    .line 405
    iget v4, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    sub-int/2addr v4, v8

    iput v4, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->getfirepflag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    iget-boolean v4, p0, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v4, :cond_0

    .line 409
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x3c

    iput v4, p0, Lcom/b2bstudio/digger/main;->rechargetime:I

    .line 410
    iput-boolean v9, p0, Lcom/b2bstudio/digger/main;->notfiring:Z

    .line 411
    iget v4, p0, Lcom/b2bstudio/digger/main;->digdir:I

    packed-switch v4, :pswitch_data_0

    .line 428
    :goto_1
    :pswitch_0
    iget v4, p0, Lcom/b2bstudio/digger/main;->digdir:I

    iput v4, p0, Lcom/b2bstudio/digger/main;->firedir:I

    .line 429
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v12, v5, v6}, Lcom/b2bstudio/digger/sprite;->movedrawspr(III)I

    goto :goto_0

    .line 413
    :pswitch_1
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 414
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggery:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    goto :goto_1

    .line 417
    :pswitch_2
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 418
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggery:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    goto :goto_1

    .line 421
    :pswitch_3
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 422
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggery:I

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    goto :goto_1

    .line 425
    :pswitch_4
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggerx:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 426
    iget v4, p0, Lcom/b2bstudio/digger/main;->diggery:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    goto :goto_1

    .line 433
    :cond_2
    iget v4, p0, Lcom/b2bstudio/digger/main;->firedir:I

    packed-switch v4, :pswitch_data_1

    .line 457
    :goto_2
    :pswitch_5
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/b2bstudio/digger/draw;->drawfire(III)I

    move-result v1

    .line 458
    .local v1, clbits:I
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 459
    and-int/lit16 v4, v1, 0x3f00

    if-eqz v4, :cond_3

    .line 460
    const/4 v2, 0x0

    .local v2, mon:I
    const/16 v0, 0x100

    .local v0, b:I
    :goto_3
    const/4 v4, 0x6

    if-lt v2, v4, :cond_5

    .line 466
    .end local v0           #b:I
    .end local v2           #mon:I
    :cond_3
    and-int/lit16 v4, v1, 0x40fe

    if-eqz v4, :cond_4

    .line 467
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 468
    :cond_4
    iget v4, p0, Lcom/b2bstudio/digger/main;->firedir:I

    packed-switch v4, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_0

    .line 470
    :pswitch_7
    iget v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    const/16 v5, 0x128

    if-le v4, v5, :cond_7

    .line 471
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    goto/16 :goto_0

    .line 435
    .end local v1           #clbits:I
    :pswitch_8
    iget v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 436
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v4

    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    or-int v3, v4, v5

    .line 437
    goto :goto_2

    .line 439
    :pswitch_9
    iget v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    sub-int/2addr v4, v11

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 440
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v4

    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    or-int v3, v4, v5

    .line 441
    goto :goto_2

    .line 443
    :pswitch_a
    iget v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    sub-int/2addr v4, v10

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    .line 444
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v4

    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    or-int/2addr v4, v5

    .line 445
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 444
    or-int/2addr v4, v5

    .line 445
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 444
    or-int/2addr v4, v5

    .line 446
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 444
    or-int/2addr v4, v5

    .line 446
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 444
    or-int/2addr v4, v5

    .line 447
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 444
    or-int/2addr v4, v5

    and-int/lit16 v3, v4, 0xc0

    .line 448
    goto/16 :goto_2

    .line 450
    :pswitch_b
    iget v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    .line 451
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v4

    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    or-int/2addr v4, v5

    .line 452
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 451
    or-int/2addr v4, v5

    .line 452
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 451
    or-int/2addr v4, v5

    .line 453
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 451
    or-int/2addr v4, v5

    .line 453
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 451
    or-int/2addr v4, v5

    .line 454
    iget-object v5, p0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget v6, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v7, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v7, v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/b2bstudio/digger/board;->ggetpix(II)I

    move-result v5

    .line 451
    or-int/2addr v4, v5

    and-int/lit8 v3, v4, 0x3

    goto/16 :goto_2

    .line 461
    .restart local v0       #b:I
    .restart local v1       #clbits:I
    .restart local v2       #mon:I
    :cond_5
    and-int v4, v1, v0

    if-eqz v4, :cond_6

    .line 462
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v4, v2}, Lcom/b2bstudio/digger/monster;->killmon(I)V

    .line 463
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/score;->scorekill()V

    .line 464
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 460
    :cond_6
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 473
    .end local v0           #b:I
    .end local v2           #mon:I
    :cond_7
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 474
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 475
    iget v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    sub-int/2addr v4, v11

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 476
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/b2bstudio/digger/draw;->drawfire(III)I

    goto/16 :goto_0

    .line 480
    :pswitch_c
    iget v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_8

    .line 481
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    goto/16 :goto_0

    .line 483
    :cond_8
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 484
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 485
    iget v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/b2bstudio/digger/main;->firex:I

    .line 486
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/b2bstudio/digger/draw;->drawfire(III)I

    goto/16 :goto_0

    .line 490
    :pswitch_d
    iget v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    if-ge v4, v12, :cond_9

    .line 491
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    goto/16 :goto_0

    .line 493
    :cond_9
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 494
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 495
    iget v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    .line 496
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/b2bstudio/digger/draw;->drawfire(III)I

    goto/16 :goto_0

    .line 500
    :pswitch_e
    iget v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    const/16 v5, 0xb7

    if-le v4, v5, :cond_a

    .line 501
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    goto/16 :goto_0

    .line 503
    :cond_a
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 504
    iput v8, p0, Lcom/b2bstudio/digger/main;->expsn:I

    .line 505
    iget v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    sub-int/2addr v4, v10

    iput v4, p0, Lcom/b2bstudio/digger/main;->firey:I

    .line 506
    iget-object v4, p0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget v5, p0, Lcom/b2bstudio/digger/main;->firex:I

    iget v6, p0, Lcom/b2bstudio/digger/main;->firey:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/b2bstudio/digger/draw;->drawfire(III)I

    goto/16 :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 433
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_b
    .end packed-switch

    .line 468
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_6
        :pswitch_c
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method

.method public updateimager()V
    .locals 6

    .prologue
    .line 781
    const/4 v2, 0x0

    .line 782
    .local v2, t:I
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->getscorestr()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, sc:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 788
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Lcom/b2bstudio/digger/main;->drawlives(I)V

    .line 789
    invoke-virtual {p0}, Lcom/b2bstudio/digger/main;->drawdigger()V

    .line 790
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->dig:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/gamer$loop;->redraw()V

    .line 791
    return-void

    .line 784
    :cond_0
    iget-object v3, p0, Lcom/b2bstudio/digger/main;->numbers:[Lcom/b2bstudio/graphics/Image;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/b2bstudio/digger/main;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/b2bstudio/graphics/Image;->onDraw(Landroid/graphics/Canvas;II)V

    .line 785
    add-int/lit8 v2, v2, 0xd

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
