.class Lcom/fleapapa/helper/CallMan$CallOverlay;
.super Lcom/google/android/maps/Overlay;
.source "CallMan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallMan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallOverlay"
.end annotation


# instance fields
.field final SIZ_LARGE:I

.field final SIZ_SMALL:I

.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 1
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$CallOverlay;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 864
    const/16 v0, 0x30

    iput v0, p0, Lcom/fleapapa/helper/CallMan$CallOverlay;->SIZ_LARGE:I

    .line 865
    const/16 v0, 0x18

    iput v0, p0, Lcom/fleapapa/helper/CallMan$CallOverlay;->SIZ_SMALL:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 5
    .parameter "canvas"
    .parameter "mapview"
    .parameter "shadow"

    .prologue
    .line 867
    const/4 v2, 0x0

    invoke-super {p0, p1, p2, v2}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 868
    if-eqz p3, :cond_1

    .line 873
    :cond_0
    return-void

    .line 870
    :cond_1
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 871
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$UE;

    .line 872
    .local v1, ue:Lcom/fleapapa/helper/CallPapa$UE;
    invoke-virtual {p0, p1, v1}, Lcom/fleapapa/helper/CallMan$CallOverlay;->drawUid(Landroid/graphics/Canvas;Lcom/fleapapa/helper/CallPapa$UE;)V

    goto :goto_0
.end method

.method drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;II)V
    .locals 5
    .parameter "canvas"
    .parameter "draw"
    .parameter "xy"
    .parameter "wide"
    .parameter "high"

    .prologue
    .line 885
    iget v0, p3, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, p4, 0x2

    sub-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, p5, 0x2

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, p4, 0x2

    add-int/2addr v2, v3

    iget v3, p3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, p5, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 886
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 887
    return-void
.end method

.method drawUid(Landroid/graphics/Canvas;Lcom/fleapapa/helper/CallPapa$UE;)V
    .locals 7
    .parameter "canvas"
    .parameter "ue"

    .prologue
    .line 876
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa;->noMap:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-eq v0, v1, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-boolean v0, p2, Lcom/fleapapa/helper/CallPapa$UE;->nomap:Z

    if-nez v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$CallOverlay;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget v5, p2, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    iget v6, p2, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    invoke-direct {v1, v5, v6}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 880
    .local v3, xy:Landroid/graphics/Point;
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v1, p2, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa;->isSpeaking(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    move v4, v0

    .line 881
    .local v4, siz:I
    :goto_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$CallOverlay;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallMan;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    invoke-static {v1}, Lcom/fleapapa/helper/Avatar;->avatar(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, draw:Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v1, p1

    move v5, v4

    .line 882
    invoke-virtual/range {v0 .. v5}, Lcom/fleapapa/helper/CallMan$CallOverlay;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;II)V

    goto :goto_0

    .line 880
    .end local v2           #draw:Landroid/graphics/drawable/Drawable;
    .end local v4           #siz:I
    :cond_2
    const/16 v0, 0x18

    move v4, v0

    goto :goto_1
.end method
