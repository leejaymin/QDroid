.class public Lng/vace/android/highwayracing/game/gui/Bonus;
.super Lng/vace/android/highwayracing/game/gui/StaticImage;
.source "Bonus.java"


# static fields
.field public static final ANVIL:I = 0x3

.field public static final CLOCK:I = 0x5

.field public static final DOLLAR:I = 0x2

.field public static final LIGHTNING:I = 0x4

.field public static final WRENCH:I = 0x1


# instance fields
.field private final bonusType:I


# direct methods
.method public constructor <init>(FFFLandroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rotation"
    .parameter "image"
    .parameter "bonusType"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lng/vace/android/highwayracing/game/gui/StaticImage;-><init>(FFFLandroid/graphics/Bitmap;)V

    .line 16
    iput p5, p0, Lng/vace/android/highwayracing/game/gui/Bonus;->bonusType:I

    .line 17
    return-void
.end method


# virtual methods
.method public getBonusType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Bonus;->bonusType:I

    return v0
.end method
