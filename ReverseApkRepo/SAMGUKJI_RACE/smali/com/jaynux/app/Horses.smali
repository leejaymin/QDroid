.class public Lcom/jaynux/app/Horses;
.super Ljava/lang/Object;
.source "Horses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaynux/app/Horses$Specification;,
        Lcom/jaynux/app/Horses$horse_num;
    }
.end annotation


# instance fields
.field public Horse:[Lcom/jaynux/app/Horses$Specification;

.field NUMBER:I

.field imgHorse:[[I

.field res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/16 v6, 0x8

    const/4 v4, 0x5

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-array v0, v4, [Lcom/jaynux/app/Horses$Specification;

    iput-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    .line 9
    iput v10, p0, Lcom/jaynux/app/Horses;->NUMBER:I

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 14
    aput-object v5, v0, v1

    .line 15
    new-array v1, v6, [I

    fill-array-data v1, :array_1

    .line 16
    aput-object v1, v0, v10

    const/4 v1, 0x2

    .line 17
    new-array v5, v6, [I

    fill-array-data v5, :array_2

    .line 18
    aput-object v5, v0, v1

    const/4 v1, 0x3

    .line 19
    new-array v5, v6, [I

    fill-array-data v5, :array_3

    .line 20
    aput-object v5, v0, v1

    const/4 v1, 0x4

    .line 21
    new-array v5, v6, [I

    fill-array-data v5, :array_4

    .line 22
    aput-object v5, v0, v1

    .line 23
    new-array v1, v6, [I

    fill-array-data v1, :array_5

    .line 24
    aput-object v1, v0, v4

    const/4 v1, 0x6

    .line 25
    new-array v5, v6, [I

    fill-array-data v5, :array_6

    .line 26
    aput-object v5, v0, v1

    const/4 v1, 0x7

    .line 27
    new-array v5, v6, [I

    fill-array-data v5, :array_7

    .line 28
    aput-object v5, v0, v1

    .line 29
    new-array v1, v6, [I

    fill-array-data v1, :array_8

    .line 30
    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/jaynux/app/Horses;->imgHorse:[[I

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    .line 223
    iget-object v8, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    const/4 v9, 0x0

    new-instance v0, Lcom/jaynux/app/Horses$Specification;

    const-string v7, "\ud0dc\ud76c"

    move-object v1, p0

    move v5, v4

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/jaynux/app/Horses$Specification;-><init>(Lcom/jaynux/app/Horses;IIIIILjava/lang/String;)V

    aput-object v0, v8, v9

    .line 224
    iget-object v8, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    new-instance v0, Lcom/jaynux/app/Horses$Specification;

    const-string v7, "\ud0dc\ud76c"

    move-object v1, p0

    move v5, v4

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/jaynux/app/Horses$Specification;-><init>(Lcom/jaynux/app/Horses;IIIIILjava/lang/String;)V

    aput-object v0, v8, v10

    .line 225
    iget-object v8, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    const/4 v9, 0x2

    new-instance v0, Lcom/jaynux/app/Horses$Specification;

    const-string v7, "\ud0dc\ud76c"

    move-object v1, p0

    move v5, v4

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/jaynux/app/Horses$Specification;-><init>(Lcom/jaynux/app/Horses;IIIIILjava/lang/String;)V

    aput-object v0, v8, v9

    .line 226
    iget-object v8, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    const/4 v9, 0x3

    new-instance v0, Lcom/jaynux/app/Horses$Specification;

    const-string v7, "\ud0dc\ud76c"

    move-object v1, p0

    move v5, v4

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/jaynux/app/Horses$Specification;-><init>(Lcom/jaynux/app/Horses;IIIIILjava/lang/String;)V

    aput-object v0, v8, v9

    .line 227
    return-void

    .line 13
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 17
    :array_2
    .array-data 0x4
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
    .end array-data

    .line 19
    :array_3
    .array-data 0x4
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 21
    :array_4
    .array-data 0x4
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
    .end array-data

    .line 23
    :array_5
    .array-data 0x4
        0x4dt 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 25
    :array_6
    .array-data 0x4
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
    .end array-data

    .line 27
    :array_7
    .array-data 0x4
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data

    .line 29
    :array_8
    .array-data 0x4
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public setSettingValue(Landroid/os/Bundle;)V
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    const-string v1, "player1Name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    const-string v1, "player1_ag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->AG:I

    .line 234
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    const-string v1, "player1_speed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->SPEED:I

    .line 235
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    const-string v1, "player1_damage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->DAMAGE:I

    .line 236
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    const-string v1, "player1_booster"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->mBoosterSpeed:I

    .line 237
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    const-string v1, "player1_hero"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    const-string v1, "meter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->meter:I

    .line 239
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/jaynux/app/Horses$Specification;->setDrawble()V

    .line 243
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    const-string v1, "player2Name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    const-string v1, "player2_ag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->AG:I

    .line 245
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    const-string v1, "player2_speed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->SPEED:I

    .line 246
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    const-string v1, "player2_damage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->DAMAGE:I

    .line 247
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    const-string v1, "player2_booster"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->mBoosterSpeed:I

    .line 248
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    const-string v1, "player2_hero"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    const-string v1, "meter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->meter:I

    .line 250
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/jaynux/app/Horses$Specification;->setDrawble()V

    .line 253
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    const-string v1, "player3Name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    const-string v1, "player3_ag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->AG:I

    .line 255
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    const-string v1, "player3_speed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->SPEED:I

    .line 256
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    const-string v1, "player3_damage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->DAMAGE:I

    .line 257
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    const-string v1, "player3_booster"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->mBoosterSpeed:I

    .line 258
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    const-string v1, "player3_hero"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    const-string v1, "meter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->meter:I

    .line 260
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/jaynux/app/Horses$Specification;->setDrawble()V

    .line 263
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    const-string v1, "player4Name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->playerName:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    const-string v1, "player4_ag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->AG:I

    .line 265
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    const-string v1, "player4_speed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->SPEED:I

    .line 266
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    const-string v1, "player4_damage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->DAMAGE:I

    .line 267
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    const-string v1, "player4_booster"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->mBoosterSpeed:I

    .line 268
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    const-string v1, "player4_hero"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    const-string v1, "meter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jaynux/app/Horses$Specification;->meter:I

    .line 270
    iget-object v0, p0, Lcom/jaynux/app/Horses;->Horse:[Lcom/jaynux/app/Horses$Specification;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/jaynux/app/Horses$Specification;->setDrawble()V

    .line 271
    return-void
.end method
