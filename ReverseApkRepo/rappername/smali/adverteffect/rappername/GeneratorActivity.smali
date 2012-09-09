.class public Ladverteffect/rappername/GeneratorActivity;
.super Landroid/app/Activity;
.source "GeneratorActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final FORCE_THRESHOLD:I = 0x15e

.field static final RapperNames:[[Ljava/lang/String; = null

.field private static final SHAKE_COUNT:I = 0x3

.field private static final SHAKE_DURATION:I = 0x3e8

.field private static final SHAKE_TIMEOUT:I = 0x1f4

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field b:Landroid/graphics/Bitmap;

.field changed:Z

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mShakeCount:I

.field mean:Ljava/lang/String;

.field name:Ljava/lang/String;

.field private now:J

.field path:Ljava/lang/String;

.field protected photoView:Landroid/widget/ImageView;

.field randomGenerator:Ljava/util/Random;

.field randomInt:I

.field sayName:Landroid/speech/tts/TextToSpeech;

.field sensor:Landroid/hardware/Sensor;

.field sensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field sm:Landroid/hardware/SensorManager;

.field tvMeaning:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "DADDY"

    const-string v7, "BIG"

    .line 245
    const/16 v0, 0xa1

    new-array v0, v0, [[Ljava/lang/String;

    .line 246
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SHAKIIL"

    aput-object v2, v1, v4

    const-string v2, "LL PMP"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 247
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "RUN"

    aput-object v2, v1, v4

    const-string v2, "DSHDDY"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 248
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CUBE"

    aput-object v2, v1, v4

    const-string v2, "DAWG"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 249
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "COOL PE"

    aput-object v3, v2, v4

    const-string v3, "LIL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 250
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DMC"

    aput-object v3, v2, v4

    const-string v3, "BIG"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 251
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SNOOP"

    aput-object v3, v2, v4

    const-string v3, "BABA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 252
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BUSTA"

    aput-object v3, v2, v4

    const-string v3, "Z"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 253
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DEF"

    aput-object v3, v2, v4

    const-string v3, "GORILA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 254
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "COPA"

    aput-object v3, v2, v4

    const-string v3, "KILLA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 255
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHORTY"

    aput-object v3, v2, v4

    const-string v3, "SLICK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 256
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCOOP"

    aput-object v3, v2, v4

    const-string v3, "V-LO"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 257
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "U-NDR"

    aput-object v3, v2, v4

    const-string v3, "VITA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 258
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CENT"

    aput-object v3, v2, v4

    const-string v3, "BALZ"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 259
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ANDRE"

    aput-object v3, v2, v4

    const-string v3, "A.D.L."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 260
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ASSIN"

    aput-object v3, v2, v4

    const-string v3, "A.N.O.N."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 261
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AYAH"

    aput-object v3, v2, v4

    const-string v3, "SHFT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 262
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BABY"

    aput-object v3, v2, v4

    const-string v3, "B-MAC"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 263
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHAM"

    aput-object v3, v2, v4

    const-string v3, "DIGGA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 264
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SMALLS"

    aput-object v3, v2, v4

    const-string v3, "BIGGA PE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 265
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BLINK"

    aput-object v3, v2, v4

    const-string v3, "BIZNUZZ"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 266
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BLING"

    aput-object v3, v2, v4

    const-string v3, "SLICK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 267
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KEY"

    aput-object v3, v2, v4

    const-string v3, "ASSASSIN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 268
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BANK"

    aput-object v3, v2, v4

    const-string v3, "ZILLIONAIRE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 269
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FLY"

    aput-object v3, v2, v4

    const-string v3, "WONDER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 270
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHEMST"

    aput-object v3, v2, v4

    const-string v3, "BREEZE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 271
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MIGHTY"

    aput-object v3, v2, v4

    const-string v3, "ALI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 272
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "COOL"

    aput-object v3, v2, v4

    const-string v3, "BROTHER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 273
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "COOL"

    aput-object v3, v2, v4

    const-string v3, "DADDY"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 274
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GANGSTA"

    aput-object v3, v2, v4

    const-string v3, "BABY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 275
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIG"

    aput-object v7, v2, v4

    const-string v3, "DADDY"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 276
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BLINKIE"

    aput-object v3, v2, v4

    const-string v3, "BUBBA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 277
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CITY"

    aput-object v3, v2, v4

    const-string v3, "CAGE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 278
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CAPTAIN"

    aput-object v3, v2, v4

    const-string v3, "COOLIEO"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 279
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DEEP"

    aput-object v3, v2, v4

    const-string v3, "DEF"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 280
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DEVON"

    aput-object v3, v2, v4

    const-string v3, "PAUL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 281
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DJ"

    aput-object v3, v2, v4

    const-string v3, "DR"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 282
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MUFF"

    aput-object v3, v2, v4

    const-string v3, "RUN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 283
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MUDDE"

    aput-object v3, v2, v4

    const-string v3, "MONEYSTORE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 284
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CASHTREE"

    aput-object v3, v2, v4

    const-string v3, "DJ"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 285
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DR"

    aput-object v3, v2, v4

    const-string v3, "NOTORIUS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 286
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AXE"

    aput-object v3, v2, v4

    const-string v3, "DJ"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 287
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "POKIE"

    aput-object v3, v2, v4

    const-string v3, "BIG"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 288
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DR"

    aput-object v3, v2, v4

    const-string v3, "DOOM"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 289
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FAT"

    aput-object v3, v2, v4

    const-string v3, "SLIM"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 290
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHADY"

    aput-object v3, v2, v4

    const-string v3, "JAY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 291
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NECRO"

    aput-object v3, v2, v4

    const-string v3, "ROCK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 292
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TEE"

    aput-object v3, v2, v4

    const-string v3, "BDDEN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 293
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIN"

    aput-object v3, v2, v4

    const-string v3, "JOE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 294
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FLIP"

    aput-object v3, v2, v4

    const-string v3, "TWISTA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 295
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ICE"

    aput-object v3, v2, v4

    const-string v3, "DMX"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 296
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEST"

    aput-object v3, v2, v4

    const-string v3, "MC"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 297
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RICH"

    aput-object v3, v2, v4

    const-string v3, "BOY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 298
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DADDY"

    aput-object v8, v2, v4

    const-string v3, "SUGAR"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 299
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCARFACE"

    aput-object v3, v2, v4

    const-string v3, "PRIEST"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 300
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAJESTY"

    aput-object v3, v2, v4

    const-string v3, "DMX"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 301
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EXELNCY"

    aput-object v3, v2, v4

    const-string v3, "KD"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 302
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HIGHNESS"

    aput-object v3, v2, v4

    const-string v3, "SMOOTH"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 303
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OPERATOR"

    aput-object v3, v2, v4

    const-string v3, "ABNORM"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 304
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ABOLISH"

    aput-object v3, v2, v4

    const-string v3, "DEF"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 305
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BOOGA"

    aput-object v3, v2, v4

    const-string v3, "DA-VNC"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 306
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIRTY"

    aput-object v3, v2, v4

    const-string v3, "CRAZY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 307
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CRA-Z"

    aput-object v3, v2, v4

    const-string v3, "STUD"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 308
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ROBBER"

    aput-object v3, v2, v4

    const-string v3, "MOUTH"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 309
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BARON"

    aput-object v3, v2, v4

    const-string v3, "PRINCE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 310
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BADOG"

    aput-object v3, v2, v4

    const-string v3, "MAD DOG"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 311
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "THUG"

    aput-object v3, v2, v4

    const-string v3, "DON"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 312
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HAMMER"

    aput-object v3, v2, v4

    const-string v3, "QUACK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 313
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ROBBA"

    aput-object v3, v2, v4

    const-string v3, "SUPA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 314
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SPRUNG"

    aput-object v3, v2, v4

    const-string v3, "MONKEY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 315
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "STEAMY"

    aput-object v3, v2, v4

    const-string v3, "RIDA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 316
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WHIPPED"

    aput-object v3, v2, v4

    const-string v3, "SMUGGLA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 317
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "STAR"

    aput-object v3, v2, v4

    const-string v3, "SLINGA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 318
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YOUNG"

    aput-object v3, v2, v4

    const-string v3, "DIRTY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 319
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HEAVY"

    aput-object v3, v2, v4

    const-string v3, "RIBBED"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 320
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SICPAC"

    aput-object v3, v2, v4

    const-string v3, "PRISON"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 321
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "THREEPAC"

    aput-object v3, v2, v4

    const-string v3, "WHACKA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 322
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PRETTY"

    aput-object v3, v2, v4

    const-string v3, "LUCKY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 323
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ICEPIK"

    aput-object v3, v2, v4

    const-string v3, "BABYFACE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 324
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MGUN"

    aput-object v3, v2, v4

    const-string v3, "HOUND"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 325
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KNUCKLES"

    aput-object v3, v2, v4

    const-string v3, "SHANK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 326
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FISH"

    aput-object v3, v2, v4

    const-string v3, "JOB"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 327
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHADY"

    aput-object v3, v2, v4

    const-string v3, "BLING"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 328
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FAT"

    aput-object v3, v2, v4

    const-string v3, "DARK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 329
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MOFU"

    aput-object v3, v2, v4

    const-string v3, "EL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 330
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RULE"

    aput-object v3, v2, v4

    const-string v3, "INC."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 331
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHADY"

    aput-object v3, v2, v4

    const-string v3, "JAIL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 332
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIRD"

    aput-object v3, v2, v4

    const-string v3, "MISTA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 333
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Z"

    aput-object v3, v2, v4

    const-string v3, "K"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 334
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HIP"

    aput-object v3, v2, v4

    const-string v3, "SLYR"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 335
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NELLY"

    aput-object v3, v2, v4

    const-string v3, "SICK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 336
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KINK"

    aput-object v3, v2, v4

    const-string v3, "KING"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 337
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SICK"

    aput-object v3, v2, v4

    const-string v3, "SNOOP"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 338
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "POPE"

    aput-object v3, v2, v4

    const-string v3, "MURDER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 339
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ROMEO"

    aput-object v3, v2, v4

    const-string v3, "RULE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 340
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HOP"

    aput-object v3, v2, v4

    const-string v3, "GANGSTER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 341
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JOEY"

    aput-object v3, v2, v4

    const-string v3, "BULLET"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 342
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TIGHTLIPS"

    aput-object v3, v2, v4

    const-string v3, "G-INBED"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 343
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ROOK"

    aput-object v3, v2, v4

    const-string v3, "PIRATE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 344
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SLY"

    aput-object v3, v2, v4

    const-string v3, "DEVASTATION"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 345
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HOFFA"

    aput-object v3, v2, v4

    const-string v3, "LIL ONE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 346
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DOPE"

    aput-object v3, v2, v4

    const-string v3, "JIMMY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 347
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WIZARD"

    aput-object v3, v2, v4

    const-string v3, "WADE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 348
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LOLLI"

    aput-object v3, v2, v4

    const-string v3, "TROUBLE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 349
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "STEPH"

    aput-object v3, v2, v4

    const-string v3, "SALMONELL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 350
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LIFE"

    aput-object v3, v2, v4

    const-string v3, "INSTRUCTOR"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 351
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AL-KIDDA"

    aput-object v3, v2, v4

    const-string v3, "AL-MYTY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 352
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CRAK"

    aput-object v3, v2, v4

    const-string v3, "SCRAPPY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 353
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MENZ"

    aput-object v3, v2, v4

    const-string v3, "LOOKA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 354
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FUNKY"

    aput-object v3, v2, v4

    const-string v3, "GOTTI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 355
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "STAR"

    aput-object v3, v2, v4

    const-string v3, "GAMBINO"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 356
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DA"

    aput-object v3, v2, v4

    const-string v3, "DRE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 357
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RHYME"

    aput-object v3, v2, v4

    const-string v3, "T-CULOSIS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 358
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GIVA"

    aput-object v3, v2, v4

    const-string v3, "TAKER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 359
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DOGG"

    aput-object v3, v2, v4

    const-string v3, "BULL-D"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 360
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MOBB"

    aput-object v3, v2, v4

    const-string v3, "ENEMY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 361
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PUBLIC"

    aput-object v3, v2, v4

    const-string v3, "KISS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 362
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MC"

    aput-object v3, v2, v4

    const-string v3, "EPIDERM"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 363
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EAZZY"

    aput-object v3, v2, v4

    const-string v3, "FLIP"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 364
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EPIDEMIK"

    aput-object v3, v2, v4

    const-string v3, "PUBLIC"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 365
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CITZN"

    aput-object v3, v2, v4

    const-string v3, "BASTRD"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 366
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIZZAR"

    aput-object v3, v2, v4

    const-string v3, "OUTLAND"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 367
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHUBB"

    aput-object v3, v2, v4

    const-string v3, "CLAN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 368
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LAW"

    aput-object v3, v2, v4

    const-string v3, "SHEEP"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 369
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ROCK"

    aput-object v3, v2, v4

    const-string v3, "NSTISHIA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 370
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JAZZ"

    aput-object v3, v2, v4

    const-string v3, "JAZZY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 371
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NAUGHTY"

    aput-object v3, v2, v4

    const-string v3, "LOVER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 372
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAN"

    aput-object v3, v2, v4

    const-string v3, "SAPIEN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 373
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GANG"

    aput-object v3, v2, v4

    const-string v3, "CLAN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 374
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "G.F.S."

    aput-object v3, v2, v4

    const-string v3, "PUN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 375
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CRUSHER"

    aput-object v3, v2, v4

    const-string v3, "HUNG"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 376
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LYNCH"

    aput-object v3, v2, v4

    const-string v3, "CAPONE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 377
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHA CHA"

    aput-object v3, v2, v4

    const-string v3, "CHILLI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 378
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CUBAN"

    aput-object v3, v2, v4

    const-string v3, "BREEZE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 379
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TOPHAT"

    aput-object v3, v2, v4

    const-string v3, "EVIL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 380
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DRU"

    aput-object v3, v2, v4

    const-string v3, "FAB"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 381
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MASTER"

    aput-object v3, v2, v4

    const-string v3, "GUCCI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 382
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HAVOC"

    aput-object v3, v2, v4

    const-string v3, "DIPLOMAT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 383
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KILLAH"

    aput-object v3, v2, v4

    const-string v3, "KROSS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 384
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "INFAMOUS"

    aput-object v3, v2, v4

    const-string v3, "NOTORIOUS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 385
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LORD"

    aput-object v3, v2, v4

    const-string v3, "HAMMER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 386
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DOOM"

    aput-object v3, v2, v4

    const-string v3, "OL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 387
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PRINCE"

    aput-object v3, v2, v4

    const-string v3, "PUFF"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 388
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PSYCHO"

    aput-object v3, v2, v4

    const-string v3, "RAY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 389
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RUN"

    aput-object v3, v2, v4

    const-string v3, "DOGGY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 390
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DMZ"

    aput-object v3, v2, v4

    const-string v3, "TURK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 394
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KIM"

    aput-object v3, v2, v4

    const-string v3, "BLIGE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 395
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BOO"

    aput-object v3, v2, v4

    const-string v3, "BOSS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 396
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FOXY"

    aput-object v3, v2, v4

    const-string v3, "MS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 397
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAYA"

    aput-object v3, v2, v4

    const-string v3, "SIS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 398
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KID"

    aput-object v3, v2, v4

    const-string v3, "FELICIA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 399
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QUEEN"

    aput-object v3, v2, v4

    const-string v3, "BROWN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 400
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KENY"

    aput-object v3, v2, v4

    const-string v3, "LADY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 401
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAY"

    aput-object v3, v2, v4

    const-string v3, "MS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    .line 402
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIVA"

    aput-object v3, v2, v4

    const-string v3, "D"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 403
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIMPLES"

    aput-object v3, v2, v4

    const-string v3, "LISA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    .line 404
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MA"

    aput-object v3, v2, v4

    const-string v3, "MC"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 405
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EVE"

    aput-object v3, v2, v4

    const-string v3, "RYE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    .line 406
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YO"

    aput-object v3, v2, v4

    const-string v3, "HITTER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 407
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MISSY"

    aput-object v3, v2, v4

    const-string v3, "MEE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    .line 408
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SWEET"

    aput-object v3, v2, v4

    const-string v3, "ENVY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 409
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CLEANZ"

    aput-object v3, v2, v4

    const-string v3, "BUSTER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 245
    sput-object v0, Ladverteffect/rappername/GeneratorActivity;->RapperNames:[[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v4, p0, Ladverteffect/rappername/GeneratorActivity;->sm:Landroid/hardware/SensorManager;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    .line 47
    iput v2, p0, Ladverteffect/rappername/GeneratorActivity;->lastX:F

    .line 48
    iput v2, p0, Ladverteffect/rappername/GeneratorActivity;->lastY:F

    .line 49
    iput v2, p0, Ladverteffect/rappername/GeneratorActivity;->lastZ:F

    .line 56
    iput v3, p0, Ladverteffect/rappername/GeneratorActivity;->mShakeCount:I

    .line 61
    iput-boolean v3, p0, Ladverteffect/rappername/GeneratorActivity;->changed:Z

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Ladverteffect/rappername/GeneratorActivity;->randomGenerator:Ljava/util/Random;

    .line 66
    iput-object v4, p0, Ladverteffect/rappername/GeneratorActivity;->b:Landroid/graphics/Bitmap;

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "emulator"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->setTestDevices([Ljava/lang/String;)V

    .line 73
    const-string v0, "video"

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->setTestAction(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public GenerateName()V
    .locals 7

    .prologue
    const/16 v3, 0xa0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "  "

    .line 233
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Ladverteffect/rappername/GeneratorActivity;->randomInt:I

    .line 234
    sget-object v1, Ladverteffect/rappername/GeneratorActivity;->RapperNames:[[Ljava/lang/String;

    iget v2, p0, Ladverteffect/rappername/GeneratorActivity;->randomInt:I

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    iput-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->name:Ljava/lang/String;

    .line 235
    sget-object v1, Ladverteffect/rappername/GeneratorActivity;->RapperNames:[[Ljava/lang/String;

    iget v2, p0, Ladverteffect/rappername/GeneratorActivity;->randomInt:I

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    iput-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->mean:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Ladverteffect/rappername/GeneratorActivity;->randomInt:I

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ladverteffect/rappername/GeneratorActivity;->RapperNames:[[Ljava/lang/String;

    iget v3, p0, Ladverteffect/rappername/GeneratorActivity;->randomInt:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->name:Ljava/lang/String;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->mean:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ladverteffect/rappername/GeneratorActivity;->RapperNames:[[Ljava/lang/String;

    iget v3, p0, Ladverteffect/rappername/GeneratorActivity;->randomInt:I

    aget-object v2, v2, v3

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->mean:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->tvMeaning:Landroid/widget/TextView;

    iget-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->mean:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ladverteffect/rappername/GeneratorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 244
    return-void
.end method

.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "_data"

    .line 154
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v8, v2, v0

    .local v2, projection:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 155
    invoke-virtual/range {v0 .. v5}, Ladverteffect/rappername/GeneratorActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 156
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "s"
    .parameter "accuracy"

    .prologue
    .line 416
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 162
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 164
    if-ne p2, v4, :cond_0

    .line 165
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v2, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->sayName:Landroid/speech/tts/TextToSpeech;

    .line 213
    :goto_0
    :pswitch_0
    return-void

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    packed-switch p2, :pswitch_data_0

    .line 208
    :goto_1
    iget-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->photoView:Landroid/widget/ImageView;

    iget-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 210
    invoke-virtual {p0}, Ladverteffect/rappername/GeneratorActivity;->GenerateName()V

    .line 211
    iput-boolean v4, p0, Ladverteffect/rappername/GeneratorActivity;->changed:Z

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, selectedImageUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Ladverteffect/rappername/GeneratorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 179
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 181
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 185
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, e:Ljava/lang/OutOfMemoryError;
    goto :goto_0

    .line 195
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #selectedImageUri:Landroid/net/Uri;
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 201
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Ladverteffect/rappername/GeneratorActivity;->b:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 195
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Ladverteffect/rappername/GeneratorActivity;->setContentView(I)V

    .line 81
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Ladverteffect/rappername/GeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    .line 82
    .local v0, ad:Lcom/admob/android/ads/AdView;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, v5}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 84
    new-instance v3, Ladverteffect/rappername/AdListener;

    invoke-direct {v3}, Ladverteffect/rappername/AdListener;-><init>()V

    invoke-virtual {v0, v3}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 87
    :cond_0
    const v3, 0x7f050008

    invoke-virtual {p0, v3}, Ladverteffect/rappername/GeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->photoView:Landroid/widget/ImageView;

    .line 88
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Ladverteffect/rappername/GeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->tvName:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f050006

    invoke-virtual {p0, v3}, Ladverteffect/rappername/GeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->tvMeaning:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Ladverteffect/rappername/GeneratorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/JOKERMAN.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 91
    .local v1, font:Landroid/graphics/Typeface;
    iget-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->tvMeaning:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Ladverteffect/rappername/GeneratorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->sm:Landroid/hardware/SensorManager;

    .line 95
    iget-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->sm:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->sensors:Ljava/util/List;

    .line 96
    iget-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->sensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 97
    iget-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->sensors:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    iput-object v3, p0, Ladverteffect/rappername/GeneratorActivity;->sensor:Landroid/hardware/Sensor;

    .line 100
    :cond_1
    const v3, 0x7f050009

    invoke-virtual {p0, v3}, Ladverteffect/rappername/GeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 102
    .local v2, img:Landroid/widget/ImageButton;
    new-instance v3, Ladverteffect/rappername/GeneratorActivity$1;

    invoke-direct {v3, p0}, Ladverteffect/rappername/GeneratorActivity$1;-><init>(Ladverteffect/rappername/GeneratorActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public onInit(I)V
    .locals 5
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    iget-object v0, p0, Ladverteffect/rappername/GeneratorActivity;->sayName:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 456
    iget-object v0, p0, Ladverteffect/rappername/GeneratorActivity;->sayName:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 457
    iget-object v0, p0, Ladverteffect/rappername/GeneratorActivity;->sayName:Landroid/speech/tts/TextToSpeech;

    const-string v1, " a  k  a "

    invoke-virtual {v0, v1, v4, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 458
    iget-object v0, p0, Ladverteffect/rappername/GeneratorActivity;->sayName:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->tvMeaning:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 459
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    iget-object v0, p0, Ladverteffect/rappername/GeneratorActivity;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity;->sensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 220
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 420
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-boolean v3, p0, Ladverteffect/rappername/GeneratorActivity;->changed:Z

    if-eqz v3, :cond_0

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    .line 430
    iget-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    iget-wide v5, p0, Ladverteffect/rappername/GeneratorActivity;->mLastForce:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 431
    iput v7, p0, Ladverteffect/rappername/GeneratorActivity;->mShakeCount:I

    .line 433
    :cond_2
    iget-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    iget-wide v5, p0, Ladverteffect/rappername/GeneratorActivity;->mLastTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 434
    iget-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    iget-wide v5, p0, Ladverteffect/rappername/GeneratorActivity;->mLastTime:J

    sub-long v0, v3, v5

    .line 435
    .local v0, diff:J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    .line 436
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    .line 435
    add-float/2addr v3, v4

    .line 436
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v9

    .line 435
    add-float/2addr v3, v4

    .line 437
    iget v4, p0, Ladverteffect/rappername/GeneratorActivity;->lastX:F

    .line 435
    sub-float/2addr v3, v4

    .line 437
    iget v4, p0, Ladverteffect/rappername/GeneratorActivity;->lastY:F

    .line 435
    sub-float/2addr v3, v4

    .line 437
    iget v4, p0, Ladverteffect/rappername/GeneratorActivity;->lastZ:F

    .line 435
    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 437
    long-to-float v4, v0

    .line 435
    div-float/2addr v3, v4

    .line 437
    const v4, 0x461c4000

    .line 435
    mul-float v2, v3, v4

    .line 438
    .local v2, speed:F
    const/high16 v3, 0x43af

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    .line 439
    iget v3, p0, Ladverteffect/rappername/GeneratorActivity;->mShakeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ladverteffect/rappername/GeneratorActivity;->mShakeCount:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    iget-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    iget-wide v5, p0, Ladverteffect/rappername/GeneratorActivity;->mLastShake:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 440
    iget-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    iput-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->mLastShake:J

    .line 441
    iput v7, p0, Ladverteffect/rappername/GeneratorActivity;->mShakeCount:I

    .line 442
    invoke-virtual {p0}, Ladverteffect/rappername/GeneratorActivity;->GenerateName()V

    .line 445
    :cond_3
    iget-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    iput-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->mLastForce:J

    .line 447
    .end local v0           #diff:J
    .end local v2           #speed:F
    :cond_4
    iget-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->now:J

    iput-wide v3, p0, Ladverteffect/rappername/GeneratorActivity;->mLastTime:J

    .line 448
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    iput v3, p0, Ladverteffect/rappername/GeneratorActivity;->lastX:F

    .line 449
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    iput v3, p0, Ladverteffect/rappername/GeneratorActivity;->lastY:F

    .line 450
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v9

    iput v3, p0, Ladverteffect/rappername/GeneratorActivity;->lastZ:F

    goto/16 :goto_0
.end method

.method public onShake(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Ladverteffect/rappername/GeneratorActivity;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 226
    return-void
.end method
