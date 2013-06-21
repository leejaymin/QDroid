.class public Lcom/mattcarver/clicker/Main;
.super Landroid/app/Activity;
.source "Main.java"


# static fields
.field private static final CLICKING_DOWN:I = 0x3

.field private static final CLICKING_UP:I = 0x4

.field private static final CLOCK_DOWN:I = 0x5

.field private static final CLOCK_UP:I = 0x6

.field private static final CLUNK_DOWN:I = 0x7

.field private static final CLUNK_UP:I = 0x8

.field private static final KNIFE_DOWN:I = 0x9

.field private static final KNIFE_UP:I = 0xa

.field private static final METAL_DOWN:I = 0xb

.field private static final METAL_UP:I = 0xc

.field private static final MOUSE_DOWN:I = 0xd

.field private static final MOUSE_UP:I = 0xe

.field private static final OLD_DOWN:I = 0xf

.field private static final OLD_UP:I = 0x10

.field private static final PEN_DOWN:I = 0x11

.field private static final PEN_UP:I = 0x12

.field public static final PREF_FILE_NAME:Ljava/lang/String; = "clicker_prefs.dat"

.field private static final SNAP_DOWN:I = 0x1

.field private static final SNAP_UP:I = 0x2

.field private static final STAPLE_DOWN:I = 0x13

.field private static final STAPLE_UP:I = 0x14

.field private static final TICKTACK_DOWN:I = 0x15

.field private static final TICKTACK_UP:I = 0x16

.field private static final TINNY_DOWN:I = 0x17

.field private static final TINNY_UP:I = 0x18

.field private static final TIP_DOWN:I = 0x19

.field private static final TIP_UP:I = 0x1a

.field private static final TOCK_DOWN:I = 0x1b

.field private static final TOCK_UP:I = 0x1c


# instance fields
.field private bd:Landroid/graphics/drawable/Drawable;

.field private btnButton:Landroid/widget/Button;

.field private bu:Landroid/graphics/drawable/Drawable;

.field private intSound:I

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sp:Landroid/media/SoundPool;

.field private spm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 3

    .prologue
    .line 146
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 147
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "My Tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 148
    return-void
.end method

.method public applySettings()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    const-string v3, "clicker_prefs.dat"

    invoke-virtual {p0, v3, v5}, Lcom/mattcarver/clicker/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "SOUND"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mattcarver/clicker/Main;->intSound:I

    .line 136
    const-string v3, "HAPTIC"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 137
    .local v1, sHaptic:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/mattcarver/clicker/Main;->btnButton:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setHapticFeedbackEnabled(Z)V

    .line 138
    const-string v3, "ROTATE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 139
    .local v2, sRotate:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6}, Lcom/mattcarver/clicker/Main;->setRequestedOrientation(I)V

    .line 141
    :goto_1
    return-void

    .end local v1           #sHaptic:Ljava/lang/Boolean;
    .end local v2           #sRotate:Ljava/lang/Boolean;
    :cond_0
    move v3, v6

    .line 136
    goto :goto_0

    .line 140
    .restart local v1       #sHaptic:Ljava/lang/Boolean;
    .restart local v2       #sRotate:Ljava/lang/Boolean;
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/mattcarver/clicker/Main;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public initSounds()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 100
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x64

    invoke-direct {v0, v6, v5, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    .line 102
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040010

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040011

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const/high16 v3, 0x7f04

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040001

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040002

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040003

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040004

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040005

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040006

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040007

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040008

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040009

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04000a

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04000b

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04000c

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04000d

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04000e

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04000f

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040012

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040013

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040014

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040015

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040018

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f040019

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04001a

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04001b

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04001c

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    const v3, 0x7f04001d

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/mattcarver/clicker/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mattcarver/clicker/Main;->bu:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0}, Lcom/mattcarver/clicker/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mattcarver/clicker/Main;->bd:Landroid/graphics/drawable/Drawable;

    .line 78
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->setVolumeControlStream(I)V

    .line 81
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mattcarver/clicker/Main;->btnButton:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->btnButton:Landroid/widget/Button;

    new-instance v1, Lcom/mattcarver/clicker/Main$1;

    invoke-direct {v1, p0}, Lcom/mattcarver/clicker/Main$1;-><init>(Lcom/mattcarver/clicker/Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/mattcarver/clicker/Main;->initSounds()V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 255
    invoke-interface {p1, v4}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 256
    const-string v2, "About"

    invoke-interface {p1, v3, v3, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 258
    .local v0, item1:Landroid/view/MenuItem;
    const/16 v2, 0x61

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 259
    const v2, 0x7f020004

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 261
    const-string v2, "Settings"

    invoke-interface {p1, v3, v4, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 263
    .local v1, item2:Landroid/view/MenuItem;
    const/16 v2, 0x73

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 264
    const v2, 0x7f020005

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 266
    return v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 232
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 233
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 165
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/Main;->playUp(Z)V

    .line 166
    :cond_0
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/Main;->playDown(Z)V

    .line 167
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 168
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 283
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 273
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const-string v2, "About"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Author: Matt Carver\nVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Lcom/mattcarver/clicker/Main;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nCreated for Brooke! Enjoy it!\n\nhttp://www.mattcarver.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 278
    const/4 v2, 0x1

    goto :goto_1

    .line 280
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mattcarver/clicker/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v1, sa:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 248
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 249
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mattcarver/clicker/Main;->acquireWakeLock()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/mattcarver/clicker/Main;->applySettings()V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/Main;->playDown(Z)V

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/Main;->playUp(Z)V

    .line 177
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public playDown(Z)V
    .locals 3
    .parameter "changeImage"

    .prologue
    const/4 v2, 0x1

    .line 184
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->btnButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mattcarver/clicker/Main;->bd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->btnButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 186
    iget v0, p0, Lcom/mattcarver/clicker/Main;->intSound:I

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-virtual {p0, v2}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    .line 203
    :goto_0
    return-void

    .line 187
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 188
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 190
    :pswitch_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 191
    :pswitch_4
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 192
    :pswitch_5
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 193
    :pswitch_6
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 194
    :pswitch_7
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 195
    :pswitch_8
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 196
    :pswitch_9
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 197
    :pswitch_a
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 198
    :pswitch_b
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 199
    :pswitch_c
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 200
    :pswitch_d
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public playSound(I)V
    .locals 10
    .parameter "sound"

    .prologue
    const/4 v1, 0x3

    .line 153
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 154
    .local v7, mgr:Landroid/media/AudioManager;
    invoke-virtual {v7, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 155
    .local v8, streamVolumeCurrent:F
    invoke-virtual {v7, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 156
    .local v9, streamVolumeMax:F
    div-float v2, v8, v9

    .line 159
    .local v2, volume:F
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/mattcarver/clicker/Main;->spm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 160
    return-void
.end method

.method public playUp(Z)V
    .locals 3
    .parameter "changeImage"

    .prologue
    const/4 v2, 0x2

    .line 207
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->btnButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mattcarver/clicker/Main;->bu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/mattcarver/clicker/Main;->btnButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 209
    iget v0, p0, Lcom/mattcarver/clicker/Main;->intSound:I

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-virtual {p0, v2}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    .line 226
    :goto_0
    return-void

    .line 210
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 212
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 213
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 214
    :pswitch_4
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 215
    :pswitch_5
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 216
    :pswitch_6
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 217
    :pswitch_7
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 218
    :pswitch_8
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 219
    :pswitch_9
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 220
    :pswitch_a
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 221
    :pswitch_b
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 222
    :pswitch_c
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 223
    :pswitch_d
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/mattcarver/clicker/Main;->playSound(I)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
