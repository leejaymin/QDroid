.class public Lorg/tf/ui/UISoundEffects;
.super Ljava/lang/Object;
.source "UISoundEffects.java"


# static fields
.field private static m_inSound:I

.field private static m_outSound:I

.field private static m_pool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    .line 42
    :cond_0
    return-void
.end method

.method public static load(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 29
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    .line 33
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f05

    invoke-virtual {v0, p0, v1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lorg/tf/ui/UISoundEffects;->m_inSound:I

    .line 34
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    const v1, 0x7f050002

    invoke-virtual {v0, p0, v1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lorg/tf/ui/UISoundEffects;->m_outSound:I

    goto :goto_0
.end method

.method public static playInSound()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 45
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {v5}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v2

    .line 49
    .local v2, volume:F
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    sget v1, Lorg/tf/ui/UISoundEffects;->m_inSound:I

    const/4 v4, 0x1

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public static playOutSound()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 53
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {v5}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v2

    .line 57
    .local v2, volume:F
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lorg/tf/ui/UISoundEffects;->m_pool:Landroid/media/SoundPool;

    sget v1, Lorg/tf/ui/UISoundEffects;->m_outSound:I

    const/4 v4, 0x1

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method
