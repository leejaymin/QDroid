.class Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.super Landroid/os/Handler;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapHandler"
.end annotation


# instance fields
.field protected bmImg:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1405
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->bmImg:Landroid/graphics/Bitmap;

    .line 1405
    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->bmImg:Landroid/graphics/Bitmap;

    .line 1409
    return-void
.end method
