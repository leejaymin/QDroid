.class public abstract Lng/vace/android/highwayracing/game/gui/GameElement;
.super Ljava/lang/Object;
.source "GameElement.java"


# static fields
.field static final random:Ljava/util/Random;


# instance fields
.field protected image:Landroid/graphics/Bitmap;

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lng/vace/android/highwayracing/game/gui/GameElement;->random:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->x:F

    .line 19
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->y:F

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->image:Landroid/graphics/Bitmap;

    .line 21
    return-void
.end method

.method protected constructor <init>(FFLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "image"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->x:F

    .line 25
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->y:F

    .line 26
    iput-object p3, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->image:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/GameElement;->y:F

    return v0
.end method
