.class Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;
.super Ljava/lang/Object;
.source "ItemMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemMap$ItemOverlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/maps/GeoPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

.field private final synthetic val$s:Lcom/google/android/maps/GeoPoint;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Lcom/google/android/maps/GeoPoint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;->val$s:Lcom/google/android/maps/GeoPoint;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)I
    .locals 19
    .parameter "a"
    .parameter "b"

    .prologue
    .line 433
    const/4 v1, 0x4

    new-array v9, v1, [F

    .line 434
    .local v9, ra:[F
    const/4 v1, 0x4

    move v0, v1

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 435
    .local v18, rb:[F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L

    div-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;->val$s:Lcom/google/android/maps/GeoPoint;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;->val$s:Lcom/google/android/maps/GeoPoint;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v7

    int-to-double v7, v7

    const-wide v10, 0x412e848000000000L

    div-double/2addr v7, v10

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double v10, v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double v12, v1, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;->val$s:Lcom/google/android/maps/GeoPoint;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double v14, v1, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;->val$s:Lcom/google/android/maps/GeoPoint;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double v16, v1, v3

    invoke-static/range {v10 .. v18}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 437
    const/4 v1, 0x0

    aget v1, v9, v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aget v2, v18, v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/maps/GeoPoint;

    check-cast p2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p0, p1, p2}, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;->compare(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)I

    move-result v0

    return v0
.end method
