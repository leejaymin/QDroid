.class Lcom/fleapapa/helper/PhoneChange$Overlay4Click;
.super Lcom/google/android/maps/Overlay;
.source "PhoneChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/PhoneChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Overlay4Click"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/PhoneChange;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/PhoneChange;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;->this$0:Lcom/fleapapa/helper/PhoneChange;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 6
    .parameter "canvas"
    .parameter "mapview"
    .parameter "shadow"

    .prologue
    const/16 v4, 0x10

    .line 172
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ItemOverlay.draw: shadow="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",clip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v1}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 174
    if-eqz p3, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-object v2, v2, Lcom/fleapapa/helper/PhoneChange;->mypoint:Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 176
    .local v0, xy:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-object v1, v1, Lcom/fleapapa/helper/PhoneChange;->draw_me:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, 0x10

    iget v5, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-object v1, v1, Lcom/fleapapa/helper/PhoneChange;->draw_me:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 10
    .parameter "ev"
    .parameter "mapView"

    .prologue
    const/4 v9, 0x0

    const-wide v7, 0x412e848000000000L

    .line 162
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overlay4Click: ev="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    .line 165
    .local v1, proj:Lcom/google/android/maps/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 166
    .local v0, geop:Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;->this$0:Lcom/fleapapa/helper/PhoneChange;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v7

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/fleapapa/helper/PhoneChange;->setloc(DD)V

    .line 167
    iget-object v2, p0, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;->this$0:Lcom/fleapapa/helper/PhoneChange;

    invoke-virtual {v2, v9}, Lcom/fleapapa/helper/PhoneChange;->move(Z)V

    .line 169
    .end local v0           #geop:Lcom/google/android/maps/GeoPoint;
    .end local v1           #proj:Lcom/google/android/maps/Projection;
    :cond_0
    return v9
.end method
