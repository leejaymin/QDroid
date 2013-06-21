.class Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;
.super Lcom/google/android/maps/Overlay;
.source "ShanghaiTaxiMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bpiette/app/ShanghaiTaxiMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapOverlay"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;


# direct methods
.method constructor <init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .locals 10
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"
    .parameter "when"

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 363
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 364
    .local v9, startPointPx:Landroid/graphics/Point;
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    #getter for: Lorg/bpiette/app/ShanghaiTaxiMainActivity;->startGeopoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->access$2(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 365
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 366
    .local v7, endPointPx:Landroid/graphics/Point;
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    #getter for: Lorg/bpiette/app/ShanghaiTaxiMainActivity;->endGeopoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->access$3(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 370
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    invoke-virtual {v0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    .line 369
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 371
    .local v8, startBmp:Landroid/graphics/Bitmap;
    iget v0, v9, Landroid/graphics/Point;->x:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    const/16 v2, 0x26

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 374
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    invoke-virtual {v0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    .line 373
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 375
    .local v6, endBmp:Landroid/graphics/Bitmap;
    iget v0, v7, Landroid/graphics/Point;->x:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Point;->y:I

    const/16 v2, 0x26

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 379
    .local v5, p:Landroid/graphics/Paint;
    const/16 v0, 0xff

    const/16 v1, 0x55

    const/16 v2, 0x55

    const/16 v3, 0xc9

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 380
    const/high16 v0, 0x4040

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 381
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    .line 382
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    .line 381
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 385
    const/4 v0, 0x1

    return v0
.end method
