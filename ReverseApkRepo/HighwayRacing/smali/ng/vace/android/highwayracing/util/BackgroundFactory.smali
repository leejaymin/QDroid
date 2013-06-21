.class public Lng/vace/android/highwayracing/util/BackgroundFactory;
.super Ljava/lang/Object;
.source "BackgroundFactory.java"


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lng/vace/android/highwayracing/util/BackgroundFactory;->context:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public getBackgroundImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "backgroundResource"

    .prologue
    .line 15
    iget-object v0, p0, Lng/vace/android/highwayracing/util/BackgroundFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
