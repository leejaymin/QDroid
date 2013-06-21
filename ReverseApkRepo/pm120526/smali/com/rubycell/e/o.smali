.class public final Lcom/rubycell/e/o;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/rubycell/pianisthd/d/b;->c:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->d:I

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEYBOARD_THEME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_3

    const-string v0, "img/mdpi/"

    sput-object v0, Lcom/rubycell/pianisthd/d/b;->L:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/rubycell/pianisthd/d/b;->a:I

    :goto_0
    const/16 v0, 0x58

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "a0m"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "b0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "c1m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "d1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "d1m"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "e1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "f1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "f1m"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "g1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "g1m"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "a1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "a1m"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "b1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "c2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "c2m"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "d2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "d2m"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "e2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "f2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "f2m"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "g2"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "g2m"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "a2"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "a2m"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "b2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "c3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "c3m"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "d3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "d3m"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "e3"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "f3"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "f3m"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "g3"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "g3m"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "a3"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "a3m"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "b3"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "c4"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "c4m"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "d4"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "d4m"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "e4"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "f4"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "f4m"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "g4"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "g4m"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "a4"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "a4m"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "b4"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "c5"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "c5m"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "d5"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "d5m"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "e5"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "f5"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "f5m"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "g5"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "g5m"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "a5"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "a5m"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "b5"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "c6"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "c6m"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "d6"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "d6m"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "e6"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "f6"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "f6m"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "g6"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "g6m"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "a6"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "a6m"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "b6"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "c7"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "c7m"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "d7"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "d7m"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "e7"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "f7"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "f7m"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "g7"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "g7m"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "a7"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "a7m"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "b7"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "c8"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const v0, 0x3ee66666

    sput v0, Lcom/rubycell/pianisthd/d/b;->l:F

    const/high16 v0, 0x4060

    sput v0, Lcom/rubycell/pianisthd/d/b;->H:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->J:Z

    const/16 v0, 0xa

    sput v0, Lcom/rubycell/pianisthd/d/b;->K:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->g:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->d:I

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->h:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "ROWS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "PLAY_ASSIST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->u:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "NOTE_ANIMATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->w:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "NOTE_NAMING"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "NOTE_NAMING_UP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->R:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "NOTE_NAMING_DOWN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->S:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "VIBRATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "VIBRATE_TIME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->z:I

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "DECAY_TIME"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "OTHER_HAND"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "HELP_ON"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->C:Z

    iget-object v0, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v2, "VOLUME_PERSENT"

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40c8

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->D:I

    new-instance v0, Lcom/rubycell/pianisthd/d/d;

    iget-object v1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/d/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/d/d;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/d/b;->E:Ljava/lang/String;

    invoke-static {}, Lcom/rubycell/pianisthd/d/d;->b()I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->F:I

    invoke-static {}, Lcom/rubycell/pianisthd/d/d;->a()I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->G:I

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_WIDTH"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    sput v0, Lcom/rubycell/pianisthd/d/b;->x:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_WIDTH_UP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    sput v0, Lcom/rubycell/pianisthd/d/b;->P:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_WIDTH_DOWN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    sput v0, Lcom/rubycell/pianisthd/d/b;->Q:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_2

    :goto_3
    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "PLAY_SPEED"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->y:I

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->m:F

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->l:F

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->n:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->m:F

    const v1, 0x3f3d70a4

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->o:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->n:F

    const v1, 0x3f0f5c29

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->p:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->m:F

    const/high16 v1, 0x4250

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->q:F

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "INSTRUMENT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->r:I

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "INSTRUMENT_UP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->s:I

    iget-object v0, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "INSTRUMENT_DOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/rubycell/pianisthd/d/k;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x76

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x38

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x74

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x72

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v7

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_b

    :cond_0
    iget-object v0, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/k;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->t:I

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    :cond_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->s:I

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/rubycell/pianisthd/d/b;->s:I

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_3
    :try_start_3
    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_4

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    const/16 v1, 0x320

    if-gt v0, v1, :cond_4

    const/4 v0, 0x2

    sput v0, Lcom/rubycell/pianisthd/d/b;->a:I

    const-string v0, "img/hdpi/"

    sput-object v0, Lcom/rubycell/pianisthd/d/b;->L:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    :cond_4
    const/4 v0, 0x3

    :try_start_4
    sput v0, Lcom/rubycell/pianisthd/d/b;->a:I

    const-string v0, "img/hdpi/"

    sput-object v0, Lcom/rubycell/pianisthd/d/b;->L:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x6

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x8

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0xc

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto/16 :goto_1

    :cond_5
    if-ne v0, v6, :cond_6

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_3

    :goto_7
    const/4 v0, 0x1

    sput v0, Lcom/rubycell/pianisthd/d/b;->x:I

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x8

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_7

    :pswitch_4
    const/16 v0, 0xa

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_7

    :pswitch_5
    const/16 v0, 0xe

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    sput v0, Lcom/rubycell/pianisthd/d/b;->x:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0xa

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0xc

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x10

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto/16 :goto_1

    :pswitch_9
    const/4 v0, 0x6

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto/16 :goto_2

    :pswitch_a
    const/16 v0, 0x8

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto/16 :goto_2

    :pswitch_b
    const/16 v0, 0xc

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto/16 :goto_2

    :cond_7
    if-ne v0, v6, :cond_8

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_5

    :goto_8
    const/4 v0, 0x1

    sput v0, Lcom/rubycell/pianisthd/d/b;->P:I

    goto/16 :goto_2

    :pswitch_c
    const/16 v0, 0x8

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto :goto_8

    :pswitch_d
    const/16 v0, 0xa

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto :goto_8

    :pswitch_e
    const/16 v0, 0xe

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto :goto_8

    :cond_8
    const/4 v0, 0x2

    sput v0, Lcom/rubycell/pianisthd/d/b;->P:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_6

    goto/16 :goto_2

    :pswitch_f
    const/16 v0, 0xa

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto/16 :goto_2

    :pswitch_10
    const/16 v0, 0xc

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto/16 :goto_2

    :pswitch_11
    const/16 v0, 0x10

    sput v0, Lcom/rubycell/pianisthd/d/b;->N:I

    goto/16 :goto_2

    :pswitch_12
    const/4 v0, 0x6

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto/16 :goto_3

    :pswitch_13
    const/16 v0, 0x8

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto/16 :goto_3

    :pswitch_14
    const/16 v0, 0xc

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto/16 :goto_3

    :cond_9
    if-ne v0, v6, :cond_a

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_7

    :goto_9
    const/4 v0, 0x1

    sput v0, Lcom/rubycell/pianisthd/d/b;->Q:I

    goto/16 :goto_3

    :pswitch_15
    const/16 v0, 0x8

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_9

    :pswitch_16
    const/16 v0, 0xa

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_9

    :pswitch_17
    const/16 v0, 0xe

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_9

    :cond_a
    const/4 v0, 0x2

    sput v0, Lcom/rubycell/pianisthd/d/b;->Q:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_8

    goto/16 :goto_3

    :pswitch_18
    const/16 v0, 0xa

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto/16 :goto_3

    :pswitch_19
    const/16 v0, 0xc

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto/16 :goto_3

    :pswitch_1a
    const/16 v0, 0x10

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/rubycell/pianisthd/d/m;->a(ILandroid/content/Context;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    :try_start_5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_HQ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/rubycell/e/o;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_HQ"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_c
    :goto_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/rubycell/e/o;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    const-class v2, Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    iget-object v1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    const-class v2, Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    const-class v2, Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    const-class v2, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/e/o;->a:Landroid/content/Context;

    const-class v2, Lcom/rubycell/pianisthd/TripleRowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
