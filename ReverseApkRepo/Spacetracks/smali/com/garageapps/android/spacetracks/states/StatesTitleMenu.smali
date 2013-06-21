.class public Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;
.super Ljava/lang/Object;
.source "StatesTitleMenu.java"


# instance fields
.field final INPUT_TIMER:I

.field final MENU_1024_768_ITEM_HEIGHT:I

.field final MENU_1024_768_X_OFFSET_1:I

.field final MENU_1024_768_X_OFFSET_2:I

.field final MENU_1024_768_Y_OFFSET_1:I

.field final MENU_480_320_ITEM_HEIGHT:I

.field final MENU_480_320_X_OFFSET_1:I

.field final MENU_480_320_X_OFFSET_2:I

.field final MENU_480_320_Y_OFFSET_1:I

.field final MENU_854_480_ITEM_HEIGHT:I

.field final MENU_854_480_X_OFFSET_1:I

.field final MENU_854_480_X_OFFSET_2:I

.field final MENU_854_480_Y_OFFSET_1:I

.field final MENU_AUDIO:I

.field final MENU_CONTROLS:I

.field final MENU_DEFS_KEYS:I

.field final MENU_DEFS_LANGUAGE:I

.field final MENU_DEFS_MINIMAX:I

.field final MENU_DEFS_SWITCH:I

.field final MENU_ITEM_MAX:I

.field final MENU_LANGUAGE:I

.field final MENU_NEW_GAME:I

.field final MENU_OPTIONS:I

.field final MENU_QUIT:I

.field final MENU_RECORDS:I

.field final MENU_RESUME_GAME:I

.field final MENU_ROOT:I

.field final MENU_SINGLE_GAME:I

.field final MENU_START:I

.field final MENU_START_SINGLE:I

.field final MENU_VIDEO:I

.field private Menus:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final TIME_FADER:I

.field private currentItem:I

.field private currentItemMax:I

.field private currentItemMin:I

.field public currentMenu:I

.field private inputTimer:J

.field private itemColor:F

.field private itemColorInc:F

.field private lockLevel:I

.field private lockLevelRecordSelector:I

.field private lockLevelSelector:I

.field private mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

.field private objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

.field public switchColor:F

.field public switchMenu:I

.field public switchState:I

.field public switchTimer:J

.field public switchTitle:Z

.field public switchToGame:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x1a

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_480_320_X_OFFSET_1:I

    .line 35
    const/16 v0, 0x100

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_480_320_X_OFFSET_2:I

    .line 36
    iput v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_480_320_Y_OFFSET_1:I

    .line 37
    const/16 v0, 0x1e

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_480_320_ITEM_HEIGHT:I

    .line 39
    const/16 v0, 0x26

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_854_480_X_OFFSET_1:I

    .line 40
    const/16 v0, 0x1d4

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_854_480_X_OFFSET_2:I

    .line 41
    const/16 v0, 0x7c

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_854_480_Y_OFFSET_1:I

    .line 42
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_854_480_ITEM_HEIGHT:I

    .line 44
    const/16 v0, 0x2c

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_1024_768_X_OFFSET_1:I

    .line 45
    const/16 v0, 0x294

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_1024_768_X_OFFSET_2:I

    .line 46
    const/16 v0, 0xaa

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_1024_768_Y_OFFSET_1:I

    .line 47
    iput v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_1024_768_ITEM_HEIGHT:I

    .line 50
    const/16 v0, 0x64

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->INPUT_TIMER:I

    .line 51
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->TIME_FADER:I

    .line 52
    const/16 v0, 0xc

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_DEFS_SWITCH:I

    .line 53
    const/16 v0, 0xd

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_DEFS_MINIMAX:I

    .line 54
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_DEFS_KEYS:I

    .line 55
    const/16 v0, 0xf

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_DEFS_LANGUAGE:I

    .line 56
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_ROOT:I

    .line 57
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_START:I

    .line 58
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_START_SINGLE:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_OPTIONS:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_AUDIO:I

    .line 61
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_VIDEO:I

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_CONTROLS:I

    .line 63
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_LANGUAGE:I

    .line 64
    const/16 v0, 0x8

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_RECORDS:I

    .line 65
    const/16 v0, 0x9

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_QUIT:I

    .line 67
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_ITEM_MAX:I

    .line 69
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_NEW_GAME:I

    .line 70
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_RESUME_GAME:I

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->MENU_SINGLE_GAME:I

    .line 96
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->lockLevel:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevel:I

    .line 97
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    .line 98
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    .line 100
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v1, v1, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    invoke-direct {v0, v1}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;-><init>(I)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    .line 101
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    .line 102
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuInit()V

    .line 104
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    .line 105
    invoke-direct {p0, v2}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuInitCurrentItem(Z)V

    .line 107
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    .line 108
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchMenu:I

    .line 109
    iput-boolean v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchTitle:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchColor:F

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchTimer:J

    .line 112
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchToGame:I

    .line 114
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputTimer:J

    .line 115
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColor:F

    .line 116
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColorInc:F

    .line 117
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    .line 118
    return-void
.end method

.method private drawMenu(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/high16 v6, 0x3f80

    .line 140
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v10, v0, :cond_0

    .line 154
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    aget-object v0, v0, v1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 145
    .local v11, length:I
    const v0, -0x3f7ccccd

    int-to-float v1, v11

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 146
    .local v3, x:F
    const v0, 0x40333333

    const/high16 v1, 0x3fc0

    int-to-float v2, v10

    mul-float/2addr v1, v2

    sub-float v4, v0, v1

    .line 148
    .local v4, y:F
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    if-nez v0, :cond_1

    .line 149
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v10, v0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemGetColor(II)F

    move-result v9

    .line 152
    .local v9, c:F
    :goto_1
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    aget-object v1, v1, v2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v5, -0x3e70

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    .line 140
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 151
    .end local v9           #c:F
    :cond_1
    iget v9, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchColor:F

    .restart local v9       #c:F
    goto :goto_1
.end method

.method private input(IIFFIFF)V
    .locals 0
    .parameter "key"
    .parameter "action"
    .parameter "x1"
    .parameter "y1"
    .parameter "action2"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p5, p6, p7}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputKey(IIFF)V

    .line 169
    invoke-direct {p0, p2, p3, p4}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputTouch(IFF)V

    .line 170
    return-void
.end method

.method private inputKey(IIFF)V
    .locals 7
    .parameter "key"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 174
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    if-lez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 179
    .local v0, elapsedTime:J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 182
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputTimer:J

    .line 184
    cmpl-float v2, p3, v4

    if-gtz v2, :cond_2

    cmpl-float v2, p4, v4

    if-lez v2, :cond_3

    .line 185
    :cond_2
    const/16 p1, 0x14

    .line 186
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 187
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    .line 190
    :cond_3
    cmpg-float v2, p3, v4

    if-ltz v2, :cond_4

    cmpg-float v2, p4, v4

    if-gez v2, :cond_5

    .line 191
    :cond_4
    const/16 p1, 0x13

    .line 192
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 193
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    .line 196
    :cond_5
    const/4 v2, 0x1

    if-ne p2, v2, :cond_6

    .line 197
    const/16 p1, 0x17

    .line 198
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v3, 0x0

    iput v3, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackEvent:I

    .line 201
    :cond_6
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 222
    :sswitch_0
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    if-eqz v2, :cond_0

    .line 225
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMax:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 226
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputProcess()V

    goto :goto_0

    .line 204
    :sswitch_1
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 206
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMin:I

    if-ge v2, v3, :cond_7

    .line 207
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMax:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 209
    :cond_7
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v5, v6}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 213
    :sswitch_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 215
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMax:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_8

    .line 216
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMin:I

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 218
    :cond_8
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v5, v6}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 233
    :sswitch_3
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputProcess()V

    goto/16 :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x17 -> :sswitch_3
        0x3e -> :sswitch_3
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private inputProcess()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0xc

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v1, 0x2

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 283
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 289
    :pswitch_1
    invoke-direct {p0, v4, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-direct {p0, v5, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 297
    :pswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, v0, v4}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 301
    :pswitch_4
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 307
    :pswitch_5
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 310
    :pswitch_6
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchToGame:I

    goto :goto_0

    .line 314
    :pswitch_7
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchToGame:I

    goto :goto_0

    .line 318
    :pswitch_8
    const/4 v0, 0x2

    invoke-direct {p0, v0, v4}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 322
    :pswitch_9
    invoke-direct {p0, v3, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 328
    :pswitch_a
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 331
    :pswitch_b
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v7}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto :goto_0

    .line 335
    :pswitch_c
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchToGame:I

    goto :goto_0

    .line 339
    :pswitch_d
    invoke-direct {p0, v4, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 345
    :pswitch_e
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_4

    goto :goto_0

    .line 348
    :pswitch_f
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 352
    :pswitch_10
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 356
    :pswitch_11
    const/4 v0, 0x6

    invoke-direct {p0, v0, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 360
    :pswitch_12
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 364
    :pswitch_13
    invoke-direct {p0, v3, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto :goto_0

    .line 370
    :pswitch_14
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_5

    goto :goto_0

    .line 373
    :pswitch_15
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v6}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto :goto_0

    .line 377
    :pswitch_16
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v6}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto :goto_0

    .line 381
    :pswitch_17
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v7}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 385
    :pswitch_18
    invoke-direct {p0, v5, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto/16 :goto_0

    .line 391
    :pswitch_19
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    .line 394
    :pswitch_1a
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v7}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 398
    :pswitch_1b
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    const/16 v2, 0xd

    invoke-direct {p0, v0, v1, v2}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 402
    :pswitch_1c
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    const/16 v2, 0xd

    invoke-direct {p0, v0, v1, v2}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 406
    :pswitch_1d
    invoke-direct {p0, v5, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto/16 :goto_0

    .line 412
    :pswitch_1e
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_7

    goto/16 :goto_0

    .line 415
    :pswitch_1f
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    const/16 v2, 0xe

    invoke-direct {p0, v0, v1, v2}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 419
    :pswitch_20
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v6}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 423
    :pswitch_21
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v6}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 427
    :pswitch_22
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v6}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 431
    :pswitch_23
    invoke-direct {p0, v5, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto/16 :goto_0

    .line 437
    :pswitch_24
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_8

    goto/16 :goto_0

    .line 440
    :pswitch_25
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    const/16 v2, 0xf

    invoke-direct {p0, v0, v1, v2}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 444
    :pswitch_26
    invoke-direct {p0, v5, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto/16 :goto_0

    .line 450
    :pswitch_27
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_9

    :pswitch_28
    goto/16 :goto_0

    .line 453
    :pswitch_29
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    invoke-direct {p0, v0, v1, v7}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuItemUpdate(III)V

    goto/16 :goto_0

    .line 457
    :pswitch_2a
    invoke-direct {p0, v3, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto/16 :goto_0

    .line 463
    :pswitch_2b
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    packed-switch v0, :pswitch_data_a

    goto/16 :goto_0

    .line 466
    :pswitch_2c
    invoke-direct {p0, v3, v3}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitch(IZ)V

    goto/16 :goto_0

    .line 470
    :pswitch_2d
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/main;->finish()V

    goto/16 :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_e
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_24
        :pswitch_27
        :pswitch_2b
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 307
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 328
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 345
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 370
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 391
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 412
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 437
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_25
        :pswitch_26
    .end packed-switch

    .line 450
    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_2a
    .end packed-switch

    .line 463
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method private inputTouch(IFF)V
    .locals 10
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    .line 240
    if-eq p1, v9, :cond_0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 241
    :cond_0
    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v6, -0x1

    iput v6, v5, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchEvent:I

    .line 244
    const/16 v2, 0x1a

    .line 245
    .local v2, xoff_1:I
    const/16 v4, 0x50

    .line 246
    .local v4, yoff_1:I
    const/16 v3, 0x100

    .line 247
    .local v3, xoff_2:I
    const/16 v0, 0x1e

    .line 250
    .local v0, height:I
    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 251
    const/16 v2, 0x26

    .line 252
    const/16 v4, 0x7c

    .line 253
    const/16 v3, 0x1d4

    .line 254
    const/16 v0, 0x2e

    .line 258
    :cond_1
    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 259
    const/16 v2, 0x2c

    .line 260
    const/16 v4, 0xaa

    .line 261
    const/16 v3, 0x294

    .line 262
    const/16 v0, 0x50

    .line 265
    :cond_2
    int-to-float v5, v2

    int-to-float v6, v4

    int-to-float v7, v3

    mul-int/lit8 v8, v0, 0x5

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-static {v5, v6, v7, v8}, Lcom/garageapps/android/spacetracks/glSpec;->inBounds(FFFF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 267
    int-to-float v5, v4

    sub-float v5, p3, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 269
    .local v1, item:I
    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMin:I

    if-lt v1, v5, :cond_3

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMax:I

    if-ge v1, v5, :cond_3

    .line 270
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 271
    if-ne p1, v9, :cond_3

    .line 272
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->inputProcess()V

    .line 277
    .end local v0           #height:I
    .end local v1           #item:I
    .end local v2           #xoff_1:I
    .end local v3           #xoff_2:I
    .end local v4           #yoff_1:I
    :cond_3
    return-void
.end method

.method private menuInit()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/16 v5, 0xf

    const/16 v4, 0xc

    .line 479
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    .line 480
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OFF:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ON:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0xd

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 484
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_MIN:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_MAX:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0xe

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 488
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_D:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_K:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v5

    .line 492
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ENGLISH:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_SERBIAN:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GERMAN:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_FRENCH:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ITALIAN:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_SPANISH:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v6

    .line 500
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_1:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_2:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_3:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_4:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 506
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_1:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_2:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_3:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 512
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_3:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    invoke-static {v1}, Lcom/garageapps/android/spacetracks/levels/LevelNames;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_1:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v7

    .line 518
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_1:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_2:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_3:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_4:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 525
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_1:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v4

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_2:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v4

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_3:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v2, v2, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_1:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v2, v2, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_2:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v3, 0xd

    aget-object v0, v0, v3

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_3:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v3, 0xd

    aget-object v0, v0, v3

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v8

    .line 537
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v1, v0, v8

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_1:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v3, 0xe

    aget-object v0, v0, v3

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsKeys:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v1, v0, v8

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_2:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v4

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v1, v0, v8

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_3:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v4

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v1, v0, v8

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_4:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v4

    sget-object v3, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v3, v3, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v3, v3, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 544
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_4:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v5

    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v2, v2, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 549
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v3, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_3:I

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    invoke-static {v1}, Lcom/garageapps/android/spacetracks/levels/LevelNames;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    aget-wide v1, v1, v2

    invoke-static {v1, v2, v6}, Lcom/garageapps/android/spacetracks/glSpec;->timerToString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 555
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONFIRM:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_NO:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_YES:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    return-void
.end method

.method private menuInitCurrentItem(Z)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 562
    if-nez p1, :cond_0

    .line 563
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 564
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMin:I

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMax:I

    .line 573
    return-void

    .line 568
    :cond_0
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItem:I

    .line 569
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentItemMin:I

    goto :goto_0
.end method

.method private menuItemGetColor(II)F
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 709
    if-ne p1, p2, :cond_0

    .line 710
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColor:F

    .line 712
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f4ccccd

    goto :goto_0
.end method

.method private menuItemUpdate(III)V
    .locals 10
    .parameter "menuId"
    .parameter "itemId"
    .parameter "defsId"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 612
    const/4 v1, 0x0

    .line 613
    .local v1, newValue:I
    const/4 v3, 0x0

    .line 615
    .local v3, updateMode:I
    if-ne p1, v8, :cond_3

    if-ne p2, v7, :cond_3

    .line 616
    const/4 v3, 0x4

    .line 617
    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    .line 618
    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevel:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_0

    .line 619
    iput v9, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    .line 620
    :cond_0
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v4, v4, v8

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelSelector:I

    invoke-static {v5}, Lcom/garageapps/android/spacetracks/levels/LevelNames;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_1
    :goto_0
    if-ne v3, v7, :cond_10

    .line 691
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v4, v4, p1

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 692
    .local v2, s:Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 693
    .local v0, i:I
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v5, v4, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v4, v4, p3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 705
    .end local v0           #i:I
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 623
    :cond_3
    const/16 v4, 0x8

    if-ne p1, v4, :cond_5

    if-ne p2, v7, :cond_5

    .line 624
    const/4 v3, 0x4

    .line 625
    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    .line 626
    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevel:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_4

    .line 627
    iput v9, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    .line 628
    :cond_4
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    invoke-static {v5}, Lcom/garageapps/android/spacetracks/levels/LevelNames;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    iget v6, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->lockLevelRecordSelector:I

    aget-wide v5, v5, v6

    invoke-static {v5, v6, v9}, Lcom/garageapps/android/spacetracks/glSpec;->timerToString(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 632
    :cond_5
    if-ne p1, v6, :cond_6

    if-nez p2, :cond_6

    .line 633
    const/4 v3, 0x1

    .line 634
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateSoundMusic()I

    move-result v1

    goto/16 :goto_0

    .line 637
    :cond_6
    if-ne p1, v6, :cond_7

    if-ne p2, v7, :cond_7

    .line 638
    const/4 v3, 0x1

    .line 639
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateSoundFX()I

    move-result v1

    goto/16 :goto_0

    .line 642
    :cond_7
    if-ne p1, v6, :cond_8

    if-ne p2, v8, :cond_8

    .line 643
    const/4 v3, 0x2

    .line 644
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateSoundVolume()I

    move-result v1

    .line 645
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v4, v1}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->setVolume(I)V

    goto/16 :goto_0

    .line 648
    :cond_8
    const/4 v4, 0x5

    if-ne p1, v4, :cond_9

    if-nez p2, :cond_9

    .line 649
    const/4 v3, 0x2

    .line 650
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateVideoDistance()I

    move-result v1

    goto/16 :goto_0

    .line 653
    :cond_9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_a

    if-ne p2, v7, :cond_a

    .line 654
    const/4 v3, 0x1

    .line 655
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateVideoDetails()I

    move-result v1

    goto/16 :goto_0

    .line 658
    :cond_a
    const/4 v4, 0x5

    if-ne p1, v4, :cond_b

    if-ne p2, v8, :cond_b

    .line 659
    const/4 v3, 0x1

    .line 660
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateVideoTextures()I

    move-result v1

    goto/16 :goto_0

    .line 663
    :cond_b
    if-ne p1, v5, :cond_c

    if-nez p2, :cond_c

    .line 664
    const/4 v3, 0x1

    .line 665
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateControlsKeys()I

    move-result v1

    goto/16 :goto_0

    .line 668
    :cond_c
    if-ne p1, v5, :cond_d

    if-ne p2, v7, :cond_d

    .line 669
    const/4 v3, 0x1

    .line 670
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateControlsScreen()I

    move-result v1

    goto/16 :goto_0

    .line 673
    :cond_d
    if-ne p1, v5, :cond_e

    if-ne p2, v8, :cond_e

    .line 674
    const/4 v3, 0x1

    .line 675
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateControlsSensors()I

    move-result v1

    goto/16 :goto_0

    .line 678
    :cond_e
    if-ne p1, v5, :cond_f

    const/4 v4, 0x3

    if-ne p2, v4, :cond_f

    .line 679
    const/4 v3, 0x1

    .line 680
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateControlsVibration()I

    move-result v1

    goto/16 :goto_0

    .line 683
    :cond_f
    const/4 v4, 0x7

    if-ne p1, v4, :cond_1

    if-ne p2, v7, :cond_1

    .line 684
    const/4 v3, 0x3

    .line 685
    sget-object v4, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v4, v4, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v4}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateLanguage()I

    move-result v1

    .line 686
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    invoke-virtual {v4, v1}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->setLanguage(I)V

    .line 687
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuInit()V

    goto/16 :goto_0

    .line 696
    :cond_10
    if-ne v3, v8, :cond_11

    .line 697
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v4, v4, p1

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 698
    .restart local v2       #s:Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 699
    .restart local v0       #i:I
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v4, v4, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 702
    .end local v0           #i:I
    .end local v2           #s:Ljava/lang/String;
    :cond_11
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 703
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v5, v4, p1

    iget-object v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->Menus:[Ljava/util/List;

    aget-object v4, v4, p3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private menuSwitch(IZ)V
    .locals 2
    .parameter "id"
    .parameter "title"

    .prologue
    .line 577
    const/4 v0, 0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    .line 578
    iput p1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchMenu:I

    .line 579
    iput-boolean p2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchTitle:Z

    .line 580
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchColor:F

    .line 581
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchTimer:J

    .line 582
    return-void
.end method

.method private menuSwitching()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x2

    const v4, 0x3b03126f

    .line 586
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 589
    .local v0, elapsedTime:J
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 590
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 591
    const/high16 v2, 0x3f80

    long-to-float v3, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchColor:F

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iput v5, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    .line 594
    const/4 v2, 0x0

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchColor:F

    .line 595
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchTimer:J

    .line 596
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchMenu:I

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    .line 597
    iget-boolean v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchTitle:Z

    invoke-direct {p0, v2}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuInitCurrentItem(Z)V

    goto :goto_0

    .line 602
    :cond_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    if-ne v2, v5, :cond_0

    .line 603
    cmp-long v2, v0, v6

    if-gtz v2, :cond_3

    .line 604
    long-to-float v2, v0

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchColor:F

    goto :goto_0

    .line 606
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    goto :goto_0
.end method

.method private update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 158
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColor:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColorInc:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColor:F

    .line 159
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 160
    :cond_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColorInc:F

    neg-float v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->itemColorInc:F

    .line 162
    :cond_1
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    if-lez v0, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->menuSwitching()V

    .line 164
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->drawMenu(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->update(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 129
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentKey:I

    .line 130
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v2, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchEvent:I

    .line 131
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchX:F

    .line 132
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchY:F

    .line 133
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackEvent:I

    .line 134
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v6, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 135
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v7, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    move-object v0, p0

    .line 129
    invoke-direct/range {v0 .. v7}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->input(IIFFIFF)V

    .line 136
    return-void
.end method
