.class Lcom/fleapapa/helper/ItemMap$MapItem;
.super Ljava/lang/Object;
.source "ItemMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/ItemMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapItem"
.end annotation


# instance fields
.field box:Landroid/graphics/Rect;

.field gop:Lcom/google/android/maps/GeoPoint;

.field ib:Lcom/fleapapa/util/MyImageButton;

.field item:Lcom/fleapapa/helper/Item;

.field final synthetic this$0:Lcom/fleapapa/helper/ItemMap;

.field viewed:Z

.field xy:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/ItemMap;Lcom/fleapapa/helper/Item;)V
    .locals 5
    .parameter
    .parameter "item"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$MapItem;->this$0:Lcom/fleapapa/helper/ItemMap;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    const/4 v0, 0x0

    .local v0, dlati:I
    const/4 v1, 0x0

    .line 600
    .local v1, dloni:I
    iput-object p2, p0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    .line 601
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    iget v3, p2, Lcom/fleapapa/helper/Item;->lati:I

    add-int/2addr v3, v0

    iget v4, p2, Lcom/fleapapa/helper/Item;->loni:I

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v2, p0, Lcom/fleapapa/helper/ItemMap$MapItem;->gop:Lcom/google/android/maps/GeoPoint;

    return-void
.end method
