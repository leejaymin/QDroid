.class public Lcom/wolfram/android/alpha/activity/MapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/MapActivity$MapData;
    }
.end annotation


# static fields
.field public static final LATITUDE_KEY:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE_KEY:Ljava/lang/String; = "longitude"

.field public static final ZOOM_KEY:Ljava/lang/String; = "zoom"


# instance fields
.field mapView:Lcom/google/android/maps/MapView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 125
    return-void
.end method

.method public static createMapActivityIntent(Landroid/content/Context;Lcom/wolfram/android/alpha/activity/MapActivity$MapData;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "mapData"

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "latitude"

    iget-object v2, p1, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "longitude"

    iget-object v2, p1, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "zoom"

    iget-object v2, p1, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->zoom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method public static createMapData(Ljava/lang/String;Ljava/lang/String;)Lcom/wolfram/android/alpha/activity/MapActivity$MapData;
    .locals 5
    .parameter "title"
    .parameter "googleMapsURL"

    .prologue
    .line 86
    new-instance v2, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;

    invoke-direct {v2}, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;-><init>()V

    .line 87
    .local v2, mapData:Lcom/wolfram/android/alpha/activity/MapActivity$MapData;
    const/16 p0, 0x3f

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    .end local p0
    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 88
    .local p0, paramsPartEncoded:Ljava/lang/String;
    move-object p1, p0

    .line 90
    .local p1, paramsPart:Ljava/lang/String;
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 94
    .end local p1           #paramsPart:Ljava/lang/String;
    .local p0, paramsPart:Ljava/lang/String;
    :goto_0
    const-string p1, "&"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 95
    .local p0, params:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v1, p0

    .local v1, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    :goto_1
    if-ge p1, v1, :cond_4

    aget-object v0, p0, p1

    .line 96
    .local v0, p:Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, paramPair:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 98
    const-string v3, "ll"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 100
    .local v0, ll:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, latlong:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->latitude:Ljava/lang/String;

    .line 102
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .end local v0           #latlong:[Ljava/lang/String;
    iput-object v0, v2, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->longitude:Ljava/lang/String;

    .line 95
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 91
    .end local v1           #len$:I
    .local p0, paramsPartEncoded:Ljava/lang/String;
    .local p1, paramsPart:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 92
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    const-string v0, "Wolfram|Alpha"

    const-string v1, "MapData"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, p1

    .end local p1           #paramsPart:Ljava/lang/String;
    .local p0, paramsPart:Ljava/lang/String;
    goto :goto_0

    .line 103
    .local v0, paramPair:[Ljava/lang/String;
    .restart local v1       #len$:I
    .local p0, arr$:[Ljava/lang/String;
    .local p1, i$:I
    :cond_1
    const-string v3, "z"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .end local v0           #paramPair:[Ljava/lang/String;
    iput-object v0, v2, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->zoom:Ljava/lang/String;

    goto :goto_2

    .line 106
    .restart local v0       #paramPair:[Ljava/lang/String;
    :cond_2
    const-string v3, "cp"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 108
    .local v0, ll:Ljava/lang/String;
    const-string v3, "~"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, latlong:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->latitude:Ljava/lang/String;

    .line 110
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .end local v0           #latlong:[Ljava/lang/String;
    iput-object v0, v2, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->longitude:Ljava/lang/String;

    goto :goto_2

    .line 112
    .local v0, paramPair:[Ljava/lang/String;
    :cond_3
    const-string v3, "lvl"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .end local v0           #paramPair:[Ljava/lang/String;
    iput-object v0, v2, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->zoom:Ljava/lang/String;

    goto :goto_2

    .line 117
    :cond_4
    return-object v2
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const-wide v9, 0x412e848000000000L

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v7, 0x7f030060

    invoke-virtual {p0, v7}, Lcom/wolfram/android/alpha/activity/MapActivity;->setContentView(I)V

    .line 37
    const v7, 0x7f0e0067

    invoke-virtual {p0, v7}, Lcom/wolfram/android/alpha/activity/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/maps/MapView;

    iput-object v7, p0, Lcom/wolfram/android/alpha/activity/MapActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 38
    iget-object v7, p0, Lcom/wolfram/android/alpha/activity/MapActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v7, v11}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v7, "latitude"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, latString:Ljava/lang/String;
    const-string v7, "longitude"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, longString:Ljava/lang/String;
    const-string v7, "zoom"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, zoomString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 44
    .local v2, latitudeE6:I
    const/4 v4, 0x0

    .line 45
    .local v4, longitudeE6:I
    const/16 v5, 0xc

    .line 48
    .local v5, zoom:I
    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-int v2, v7

    .line 52
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 53
    :try_start_1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-int v4, v7

    .line 57
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 58
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 60
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/wolfram/android/alpha/activity/MapActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v7

    new-instance v8, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v8, v2, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 61
    iget-object v7, p0, Lcom/wolfram/android/alpha/activity/MapActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 62
    iget-object v7, p0, Lcom/wolfram/android/alpha/activity/MapActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v7, v11}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    .line 63
    return-void

    .line 50
    :catch_0
    move-exception v7

    goto :goto_0

    .line 54
    :catch_1
    move-exception v7

    goto :goto_1

    .line 59
    :catch_2
    move-exception v7

    goto :goto_2
.end method
