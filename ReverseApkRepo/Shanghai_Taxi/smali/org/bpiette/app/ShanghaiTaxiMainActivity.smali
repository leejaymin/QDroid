.class public Lorg/bpiette/app/ShanghaiTaxiMainActivity;
.super Lcom/google/android/maps/MapActivity;
.source "ShanghaiTaxiMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$bpiette$app$TaxiDB$TrafficType:[I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MENU_ITEM_ABOUT:I

.field private final MENU_ITEM_DESTINATION:I

.field private endGeopoint:Lcom/google/android/maps/GeoPoint;

.field private fromLocationListener:Landroid/view/View$OnClickListener;

.field private mapView:Lcom/google/android/maps/MapView;

.field private rateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private selectedChineseDestination:Ljava/lang/String;

.field private spListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private startGeopoint:Lcom/google/android/maps/GeoPoint;

.field private toLocationListener:Landroid/view/View$OnClickListener;

.field private trafficListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static synthetic $SWITCH_TABLE$org$bpiette$app$TaxiDB$TrafficType()[I
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->$SWITCH_TABLE$org$bpiette$app$TaxiDB$TrafficType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/bpiette/app/TaxiDB$TrafficType;->values()[Lorg/bpiette/app/TaxiDB$TrafficType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/bpiette/app/TaxiDB$TrafficType;->HIGH_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    invoke-virtual {v1}, Lorg/bpiette/app/TaxiDB$TrafficType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/bpiette/app/TaxiDB$TrafficType;->LOW_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    invoke-virtual {v1}, Lorg/bpiette/app/TaxiDB$TrafficType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/bpiette/app/TaxiDB$TrafficType;->NORMAL_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    invoke-virtual {v1}, Lorg/bpiette/app/TaxiDB$TrafficType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->$SWITCH_TABLE$org$bpiette$app$TaxiDB$TrafficType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 65
    const-string v0, "ShanghaiTaxi"

    iput-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->LOG_TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->MENU_ITEM_ABOUT:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->MENU_ITEM_DESTINATION:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->selectedChineseDestination:Ljava/lang/String;

    .line 283
    new-instance v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$1;

    invoke-direct {v0, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$1;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    iput-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->spListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 293
    new-instance v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$2;

    invoke-direct {v0, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$2;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    iput-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->fromLocationListener:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$3;

    invoke-direct {v0, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$3;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    iput-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->toLocationListener:Landroid/view/View$OnClickListener;

    .line 341
    new-instance v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$4;

    invoke-direct {v0, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$4;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    iput-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->rateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 348
    new-instance v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$5;

    invoke-direct {v0, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$5;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    iput-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->trafficListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->computeAll()V

    return-void
.end method

.method static synthetic access$1(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)Lcom/google/android/maps/MapView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method static synthetic access$2(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->startGeopoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic access$3(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->endGeopoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method private computeAll()V
    .locals 38

    .prologue
    .line 128
    const v28, 0x7f060011

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/MapView;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 129
    const v28, 0x7f06000a

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 130
    .local v4, buttonFrom:Landroid/widget/Button;
    const v28, 0x7f06000b

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 131
    .local v5, buttonTo:Landroid/widget/Button;
    const v28, 0x7f06000c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    .line 132
    .local v23, spTraffic:Landroid/widget/Spinner;
    const v28, 0x7f06000f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 133
    .local v15, distanceText:Landroid/widget/TextView;
    const v28, 0x7f060010

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 134
    .local v12, costText:Landroid/widget/TextView;
    const v28, 0x7f06000d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ToggleButton;

    .line 136
    .local v22, rateButton:Landroid/widget/ToggleButton;
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v28

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/bpiette/app/Location;

    .line 137
    .local v17, fromLoc:Lorg/bpiette/app/Location;
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v28

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/bpiette/app/Location;

    .line 139
    .local v24, toLoc:Lorg/bpiette/app/Location;
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->chineseDestination:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->selectedChineseDestination:Ljava/lang/String;

    .line 143
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 145
    const-string v28, "ShanghaiTaxi"

    const-string v29, "NIGHT_RATE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v21, Lorg/bpiette/app/TaxiDB;->NIGHT_RATE:Ljava/lang/Double;

    .line 155
    .local v21, rate:Ljava/lang/Double;
    :goto_0
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v28

    if-nez v28, :cond_5

    .line 158
    sget-object v25, Lorg/bpiette/app/TaxiDB$TrafficType;->LOW_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    .line 172
    .local v25, trafficType:Lorg/bpiette/app/TaxiDB$TrafficType;
    :goto_1
    const v28, 0x7f040001

    move-object v0, v15

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    const v28, 0x7f040001

    move-object v0, v12

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    const/4 v14, 0x0

    .line 175
    .local v14, distance:Lorg/bpiette/app/Distance;
    const-wide/16 v28, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 177
    .local v16, duration:Ljava/lang/Double;
    if-eqz v17, :cond_2

    if-eqz v24, :cond_2

    .line 179
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "From: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v28, Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->latitude:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v29

    const-wide v31, 0x412e848000000000L

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->longitude:Ljava/lang/Double;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    const-wide v32, 0x412e848000000000L

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->startGeopoint:Lcom/google/android/maps/GeoPoint;

    .line 182
    new-instance v28, Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->latitude:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v29

    const-wide v31, 0x412e848000000000L

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->longitude:Ljava/lang/Double;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    const-wide v32, 0x412e848000000000L

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->endGeopoint:Lcom/google/android/maps/GeoPoint;

    .line 184
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->distanceMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #distance:Lorg/bpiette/app/Distance;
    check-cast v14, Lorg/bpiette/app/Distance;

    .line 185
    .restart local v14       #distance:Lorg/bpiette/app/Distance;
    if-eqz v14, :cond_7

    .line 187
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Distance(from): "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->duration:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getTrafficDuration(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;)Ljava/lang/Double;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    add-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 189
    new-instance v28, Ljava/lang/StringBuilder;

    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " km driving ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->intValue()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " mins)"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object v0, v15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v20

    .line 206
    .local v20, mc:Lcom/google/android/maps/MapController;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->latitude:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->latitude:Ljava/lang/Double;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    add-double v28, v28, v30

    const-wide/high16 v30, 0x4000

    div-double v6, v28, v30

    .line 207
    .local v6, centerLat:D
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->longitude:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->longitude:Ljava/lang/Double;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    add-double v28, v28, v30

    const-wide/high16 v30, 0x4000

    div-double v8, v28, v30

    .line 208
    .local v8, centerLong:D
    new-instance v10, Lcom/google/android/maps/GeoPoint;

    const-wide v28, 0x412e848000000000L

    mul-double v28, v28, v6

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    const-wide v29, 0x412e848000000000L

    mul-double v29, v29, v8

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v29, v0

    move-object v0, v10

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 209
    .local v10, centerMap:Lcom/google/android/maps/GeoPoint;
    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 213
    const/16 v18, 0x0

    .line 214
    .local v18, locationsOnScreen:Z
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->latitude:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->latitude:Ljava/lang/Double;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide v30, 0x412e848000000000L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v26, v0

    .line 215
    .local v26, travelLatSpan:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->longitude:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->longitude:Ljava/lang/Double;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide v30, 0x412e848000000000L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    .line 216
    .local v27, travelLongSpan:I
    const/16 v19, 0x15

    .line 218
    .local v19, mapZoom:I
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "travelLatSpan = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "travelLongSpan = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 222
    :goto_3
    if-nez v18, :cond_1

    if-gtz v19, :cond_8

    .line 239
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 243
    .end local v6           #centerLat:D
    .end local v8           #centerLong:D
    .end local v10           #centerMap:Lcom/google/android/maps/GeoPoint;
    .end local v18           #locationsOnScreen:Z
    .end local v19           #mapZoom:I
    .end local v20           #mc:Lcom/google/android/maps/MapController;
    .end local v26           #travelLatSpan:I
    .end local v27           #travelLongSpan:I
    :cond_2
    if-eqz v14, :cond_3

    .line 247
    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_a

    .line 249
    const-wide/16 v28, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 250
    .local v11, cost:Ljava/lang/Double;
    const-string v28, "0.0 yuan"

    move-object v0, v12

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .end local v11           #cost:Ljava/lang/Double;
    :cond_3
    :goto_4
    return-void

    .line 150
    .end local v14           #distance:Lorg/bpiette/app/Distance;
    .end local v16           #duration:Ljava/lang/Double;
    .end local v21           #rate:Ljava/lang/Double;
    .end local v25           #trafficType:Lorg/bpiette/app/TaxiDB$TrafficType;
    :cond_4
    const-string v28, "ShanghaiTaxi"

    const-string v29, "DAY_RATE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v21, Lorg/bpiette/app/TaxiDB;->DAY_RATE:Ljava/lang/Double;

    .restart local v21       #rate:Ljava/lang/Double;
    goto/16 :goto_0

    .line 160
    :cond_5
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 163
    sget-object v25, Lorg/bpiette/app/TaxiDB$TrafficType;->NORMAL_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    .restart local v25       #trafficType:Lorg/bpiette/app/TaxiDB$TrafficType;
    goto/16 :goto_1

    .line 168
    .end local v25           #trafficType:Lorg/bpiette/app/TaxiDB$TrafficType;
    :cond_6
    sget-object v25, Lorg/bpiette/app/TaxiDB$TrafficType;->HIGH_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    .restart local v25       #trafficType:Lorg/bpiette/app/TaxiDB$TrafficType;
    goto/16 :goto_1

    .line 195
    .restart local v14       #distance:Lorg/bpiette/app/Distance;
    .restart local v16       #duration:Ljava/lang/Double;
    :cond_7
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/bpiette/app/Location;->distanceMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #distance:Lorg/bpiette/app/Distance;
    check-cast v14, Lorg/bpiette/app/Distance;

    .line 196
    .restart local v14       #distance:Lorg/bpiette/app/Distance;
    if-eqz v14, :cond_0

    .line 198
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Distance(to): "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->duration:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getTrafficDuration(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;)Ljava/lang/Double;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    add-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 200
    new-instance v28, Ljava/lang/StringBuilder;

    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " km driving ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->intValue()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " mins)"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object v0, v15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 224
    .restart local v6       #centerLat:D
    .restart local v8       #centerLong:D
    .restart local v10       #centerMap:Lcom/google/android/maps/GeoPoint;
    .restart local v18       #locationsOnScreen:Z
    .restart local v19       #mapZoom:I
    .restart local v20       #mc:Lcom/google/android/maps/MapController;
    .restart local v26       #travelLatSpan:I
    .restart local v27       #travelLongSpan:I
    :cond_8
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "getLatitudeSpan() = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/maps/MapView;->getLatitudeSpan()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "getLongitudeSpan() = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/maps/MapView;->getLongitudeSpan()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/maps/MapView;->getLatitudeSpan()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-gt v0, v1, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/maps/MapView;->getLongitudeSpan()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_9

    .line 230
    const-string v28, "ShanghaiTaxi"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Changing zoom to "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 235
    :cond_9
    add-int/lit8 v19, v19, -0x1

    .line 236
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    goto/16 :goto_3

    .line 254
    .end local v6           #centerLat:D
    .end local v8           #centerLong:D
    .end local v10           #centerMap:Lcom/google/android/maps/GeoPoint;
    .end local v18           #locationsOnScreen:Z
    .end local v19           #mapZoom:I
    .end local v20           #mc:Lcom/google/android/maps/MapController;
    .end local v26           #travelLatSpan:I
    .end local v27           #travelLongSpan:I
    :cond_a
    sget-object v28, Lorg/bpiette/app/TaxiDB;->DAY_RATE:Ljava/lang/Double;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 256
    sget-object v28, Lorg/bpiette/app/TaxiDB;->DAY_RATE:Ljava/lang/Double;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .line 257
    sget-object v30, Lorg/bpiette/app/TaxiDB;->DAY_RATE:Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    .line 258
    const-wide/high16 v32, 0x4024

    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    const-wide/high16 v36, 0x4008

    sub-double v34, v34, v36

    const-wide/16 v36, 0x0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->min(DD)D

    move-result-wide v32

    const-wide v34, 0x4003333333333333L

    mul-double v32, v32, v34

    .line 257
    add-double v30, v30, v32

    .line 259
    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    const-wide/high16 v34, 0x4024

    sub-double v32, v32, v34

    const-wide/16 v34, 0x0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    const-wide v34, 0x400ccccccccccccdL

    mul-double v32, v32, v34

    .line 257
    add-double v30, v30, v32

    .line 260
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getTrafficCost(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;Z)Ljava/lang/Double;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    .line 257
    add-double v30, v30, v32

    .line 256
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 273
    .restart local v11       #cost:Ljava/lang/Double;
    :goto_5
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 275
    new-instance v13, Ljava/text/DecimalFormat;

    const-string v28, "0.00"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .local v13, df:Ljava/text/DecimalFormat;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Around "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " yuan"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object v0, v12

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 265
    .end local v11           #cost:Ljava/lang/Double;
    .end local v13           #df:Ljava/text/DecimalFormat;
    :cond_b
    sget-object v28, Lorg/bpiette/app/TaxiDB;->NIGHT_RATE:Ljava/lang/Double;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .line 266
    sget-object v30, Lorg/bpiette/app/TaxiDB;->NIGHT_RATE:Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    .line 267
    const-wide/high16 v32, 0x4024

    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    const-wide/high16 v36, 0x4008

    sub-double v34, v34, v36

    const-wide/16 v36, 0x0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->min(DD)D

    move-result-wide v32

    const-wide v34, 0x4008cccccccccccdL

    mul-double v32, v32, v34

    .line 266
    add-double v30, v30, v32

    .line 268
    move-object v0, v14

    iget-object v0, v0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    const-wide/high16 v34, 0x4024

    sub-double v32, v32, v34

    const-wide/16 v34, 0x0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    const-wide v34, 0x4010666666666666L

    mul-double v32, v32, v34

    .line 266
    add-double v30, v30, v32

    .line 269
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getTrafficCost(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;Z)Ljava/lang/Double;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    .line 266
    add-double v30, v30, v32

    .line 265
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .restart local v11       #cost:Ljava/lang/Double;
    goto/16 :goto_5
.end method

.method private getTrafficCost(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;Z)Ljava/lang/Double;
    .locals 8
    .parameter "duration"
    .parameter "trafficType"
    .parameter "isDayRate"

    .prologue
    const-wide/high16 v6, 0x4014

    .line 95
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 97
    .local v0, cost:Ljava/lang/Double;
    if-eqz p3, :cond_0

    .line 99
    const-wide v2, 0x4000cccccccccccdL

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 106
    .local v1, waitingCost:Ljava/lang/Double;
    :goto_0
    invoke-static {}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->$SWITCH_TABLE$org$bpiette$app$TaxiDB$TrafficType()[I

    move-result-object v2

    invoke-virtual {p2}, Lorg/bpiette/app/TaxiDB$TrafficType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 119
    :goto_1
    return-object v0

    .line 103
    .end local v1           #waitingCost:Ljava/lang/Double;
    :cond_0
    const-wide v2, 0x4008cccccccccccdL

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .restart local v1       #waitingCost:Ljava/lang/Double;
    goto :goto_0

    .line 110
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getTrafficDuration(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 113
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getTrafficDuration(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 116
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getTrafficDuration(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe8

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTrafficDuration(Ljava/lang/Double;Lorg/bpiette/app/TaxiDB$TrafficType;)Ljava/lang/Double;
    .locals 4
    .parameter "duration"
    .parameter "trafficType"

    .prologue
    .line 79
    invoke-static {}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->$SWITCH_TABLE$org$bpiette$app$TaxiDB$TrafficType()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/bpiette/app/TaxiDB$TrafficType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff8

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 5
    .parameter "language"

    .prologue
    .line 452
    move-object v1, p1

    .line 453
    .local v1, languageToLoad:Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 454
    .local v2, locale:Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 455
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 456
    .local v0, config:Landroid/content/res/Configuration;
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 457
    invoke-virtual {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 458
    invoke-virtual {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 457
    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 459
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 319
    const-string v2, "ShanghaiTaxi"

    const-string v3, "onActivityResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 325
    :pswitch_0
    const v2, 0x7f06000a

    invoke-virtual {p0, v2}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 326
    .local v0, buttonFrom:Landroid/widget/Button;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-direct {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->computeAll()V

    goto :goto_0

    .line 330
    .end local v0           #buttonFrom:Landroid/widget/Button;
    :pswitch_1
    const v2, 0x7f06000b

    invoke-virtual {p0, v2}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 331
    .local v1, buttonTo:Landroid/widget/Button;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-direct {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->computeAll()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 465
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 466
    const v7, 0x7f030005

    invoke-virtual {p0, v7}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->setContentView(I)V

    .line 468
    const v7, 0x7f060011

    invoke-virtual {p0, v7}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/maps/MapView;

    iput-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 470
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->initPlaces()V

    .line 472
    new-instance v7, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v7, v8, v8}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->startGeopoint:Lcom/google/android/maps/GeoPoint;

    .line 473
    new-instance v7, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v7, v8, v8}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->endGeopoint:Lcom/google/android/maps/GeoPoint;

    .line 475
    const v7, 0x7f06000a

    invoke-virtual {p0, v7}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 476
    .local v0, buttonFrom:Landroid/widget/Button;
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->fromLocationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v8

    check-cast v7, Lorg/bpiette/app/Location;

    iget-object v7, v7, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 479
    const v7, 0x7f06000b

    invoke-virtual {p0, v7}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 480
    .local v1, buttonTo:Landroid/widget/Button;
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->toLocationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v9

    check-cast v7, Lorg/bpiette/app/Location;

    iget-object v7, v7, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 483
    const v7, 0x7f06000c

    invoke-virtual {p0, v7}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 484
    .local v5, spTraffic:Landroid/widget/Spinner;
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->spListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 485
    invoke-virtual {v5, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 487
    const v7, 0x7f06000d

    invoke-virtual {p0, v7}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    .line 488
    .local v4, rateButton:Landroid/widget/ToggleButton;
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->rateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 490
    const v7, 0x7f06000e

    invoke-virtual {p0, v7}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    .line 491
    .local v6, trafficButton:Landroid/widget/ToggleButton;
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->trafficListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 493
    invoke-direct {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->computeAll()V

    .line 496
    new-instance v3, Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;

    invoke-direct {v3, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    .line 497
    .local v3, mapOverlay:Lorg/bpiette/app/ShanghaiTaxiMainActivity$MapOverlay;
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 498
    .local v2, listOfOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 499
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/maps/MapView;->setTraffic(Z)V

    .line 502
    iget-object v7, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 503
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 390
    const-string v0, "Driver destination"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 391
    const-string v0, "About"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 392
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const v8, 0x7f030005

    const/4 v7, 0x1

    const-string v6, "ShanghaiTaxi"

    const-string v9, "Ok"

    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 447
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 403
    :pswitch_0
    const-string v5, "ShanghaiTaxi"

    const-string v5, "Destination dialog is launching"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 406
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    invoke-virtual {p0, v8}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 408
    .local v4, layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 410
    const-string v5, "Ok"

    new-instance v5, Lorg/bpiette/app/ShanghaiTaxiMainActivity$6;

    invoke-direct {v5, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$6;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 416
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const-string v5, "Chinese destination"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 419
    const v5, 0x7f060002

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 420
    .local v2, chineseText:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 422
    iget-object v5, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->selectedChineseDestination:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move v5, v7

    .line 425
    goto :goto_0

    .line 427
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #chineseText:Landroid/widget/TextView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    :pswitch_1
    const-string v5, "ShanghaiTaxi"

    const-string v5, "About dialog is launching"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 430
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v8}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 432
    .restart local v4       #layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 434
    const-string v5, "Ok"

    new-instance v5, Lorg/bpiette/app/ShanghaiTaxiMainActivity$7;

    invoke-direct {v5, p0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity$7;-><init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 441
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    const-string v5, "About"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v5, v7

    .line 444
    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
