.class public Lcom/garageapps/android/spacetracks/states/StatesGameMenu;
.super Ljava/lang/Object;
.source "StatesGameMenu.java"


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

.field final MENU_ITEM_MAX:I

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

.field private currentItem:I

.field private currentItemMax:I

.field private currentItemMin:I

.field public currentMenu:I

.field private inputTimer:J

.field private itemColor:F

.field private itemColorInc:F

.field private mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

.field public switchResult:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x7e

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_480_320_X_OFFSET_1:I

    .line 31
    const/16 v0, 0x164

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_480_320_X_OFFSET_2:I

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_480_320_Y_OFFSET_1:I

    .line 33
    const/16 v0, 0x1e

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_480_320_ITEM_HEIGHT:I

    .line 35
    const/16 v0, 0xe2

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_854_480_X_OFFSET_1:I

    .line 36
    const/16 v0, 0x272

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_854_480_X_OFFSET_2:I

    .line 37
    const/16 v0, 0x7c

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_854_480_Y_OFFSET_1:I

    .line 38
    const/16 v0, 0x2d

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_854_480_ITEM_HEIGHT:I

    .line 40
    const/16 v0, 0x12c

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_1024_768_X_OFFSET_1:I

    .line 41
    const/16 v0, 0x370

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_1024_768_X_OFFSET_2:I

    .line 42
    const/16 v0, 0xac

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_1024_768_Y_OFFSET_1:I

    .line 43
    const/16 v0, 0x48

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_1024_768_ITEM_HEIGHT:I

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->INPUT_TIMER:I

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->MENU_ITEM_MAX:I

    .line 66
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v1, v1, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    invoke-direct {v0, v1}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;-><init>(I)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->menuInit()V

    .line 69
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->init()V

    .line 71
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputTimer:J

    .line 72
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColor:F

    .line 73
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColorInc:F

    .line 74
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 75
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    .line 76
    return-void
.end method

.method private drawMenu(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/high16 v6, 0x3f80

    .line 117
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentMenu:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v10, v0, :cond_0

    .line 128
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentMenu:I

    aget-object v0, v0, v1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 122
    .local v11, length:I
    const/high16 v0, 0x3f00

    int-to-float v1, v11

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 123
    .local v3, x:F
    const v0, 0x40333333

    const/high16 v1, 0x3fc0

    int-to-float v2, v10

    mul-float/2addr v1, v2

    sub-float v4, v0, v1

    .line 125
    .local v4, y:F
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    invoke-direct {p0, v10, v0}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->menuItemGetColor(II)F

    move-result v9

    .line 126
    .local v9, c:F
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentMenu:I

    aget-object v1, v1, v2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v5, -0x3e70

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    .line 117
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
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
    .line 139
    invoke-direct {p0, p1, p5, p6, p7}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputKey(IIFF)V

    .line 140
    invoke-direct {p0, p2, p3, p4}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputTouch(IFF)V

    .line 141
    return-void
.end method

.method private inputKey(IIFF)V
    .locals 8
    .parameter "key"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 145
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 147
    .local v0, elapsedTime:J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputTimer:J

    .line 152
    cmpl-float v2, p3, v4

    if-gtz v2, :cond_1

    cmpl-float v2, p4, v4

    if-lez v2, :cond_2

    .line 153
    :cond_1
    const/16 p1, 0x14

    .line 154
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 155
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    .line 158
    :cond_2
    cmpg-float v2, p3, v4

    if-ltz v2, :cond_3

    cmpg-float v2, p4, v4

    if-gez v2, :cond_4

    .line 159
    :cond_3
    const/16 p1, 0x13

    .line 160
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 161
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v4, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    .line 164
    :cond_4
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 165
    const/16 p1, 0x17

    .line 166
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v5, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackEvent:I

    .line 169
    :cond_5
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 190
    :sswitch_0
    iput v5, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 191
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputProcess()V

    goto :goto_0

    .line 172
    :sswitch_1
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 174
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMin:I

    if-ge v2, v3, :cond_6

    .line 175
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMax:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 177
    :cond_6
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v7}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 181
    :sswitch_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 183
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMax:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    .line 184
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMin:I

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 186
    :cond_7
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v7}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 197
    :sswitch_3
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputProcess()V

    goto/16 :goto_0

    .line 169
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
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v1, 0x2

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 247
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentMenu:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->switchResult:I

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private inputTouch(IFF)V
    .locals 10
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    .line 204
    if-eq p1, v9, :cond_0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 205
    :cond_0
    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v6, -0x1

    iput v6, v5, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchEvent:I

    .line 208
    const/16 v2, 0x7e

    .line 209
    .local v2, xoff_1:I
    const/16 v4, 0x50

    .line 210
    .local v4, yoff_1:I
    const/16 v3, 0x164

    .line 211
    .local v3, xoff_2:I
    const/16 v0, 0x1e

    .line 214
    .local v0, height:I
    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 215
    const/16 v2, 0xe2

    .line 216
    const/16 v4, 0x7c

    .line 217
    const/16 v3, 0x272

    .line 218
    const/16 v0, 0x2d

    .line 222
    :cond_1
    sget-object v5, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v5, v5, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v5, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 223
    const/16 v2, 0x12c

    .line 224
    const/16 v4, 0xac

    .line 225
    const/16 v3, 0x370

    .line 226
    const/16 v0, 0x48

    .line 229
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

    .line 231
    int-to-float v5, v4

    sub-float v5, p3, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 233
    .local v1, item:I
    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMin:I

    if-lt v1, v5, :cond_3

    iget v5, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMax:I

    if-ge v1, v5, :cond_3

    .line 234
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 235
    if-ne p1, v9, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->inputProcess()V

    .line 241
    .end local v0           #height:I
    .end local v1           #item:I
    .end local v2           #xoff_1:I
    .end local v3           #xoff_2:I
    .end local v4           #yoff_1:I
    :cond_3
    return-void
.end method

.method private menuInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    .line 258
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_1:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_2:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->mLanguageManager:Lcom/garageapps/android/spacetracks/languages/LanguageManager;

    sget v2, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_3:I

    invoke-virtual {v1, v2}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method private menuInitCurrentItem(Z)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    if-nez p1, :cond_0

    .line 266
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 267
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMin:I

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->Menus:[Ljava/util/List;

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentMenu:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMax:I

    .line 276
    return-void

    .line 271
    :cond_0
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItem:I

    .line 272
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentItemMin:I

    goto :goto_0
.end method

.method private menuItemGetColor(II)F
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 280
    if-ne p1, p2, :cond_0

    .line 281
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColor:F

    .line 283
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f4ccccd

    goto :goto_0
.end method

.method private update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 132
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColor:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColorInc:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColor:F

    .line 133
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 134
    :cond_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColorInc:F

    neg-float v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->itemColorInc:F

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 88
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 89
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 90
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 91
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 93
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 94
    const/high16 v0, -0x3f70

    invoke-interface {p1, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 95
    const v0, 0x3fb33333

    invoke-interface {p1, v0, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 96
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 97
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->drawMenu(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->update(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 106
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentKey:I

    .line 107
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v2, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchEvent:I

    .line 108
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v3, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchX:F

    .line 109
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v4, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchY:F

    .line 110
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v5, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackEvent:I

    .line 111
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v6, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 112
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v7, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    move-object v0, p0

    .line 106
    invoke-direct/range {v0 .. v7}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->input(IIFFIFF)V

    .line 113
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->currentMenu:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->switchResult:I

    .line 82
    invoke-direct {p0, v1}, Lcom/garageapps/android/spacetracks/states/StatesGameMenu;->menuInitCurrentItem(Z)V

    .line 83
    return-void
.end method
