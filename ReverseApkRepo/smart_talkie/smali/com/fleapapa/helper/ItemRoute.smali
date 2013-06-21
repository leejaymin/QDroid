.class public Lcom/fleapapa/helper/ItemRoute;
.super Ljava/lang/Object;
.source "ItemRoute.java"


# static fields
.field public static final LATITUDE_OVERMAX:I = 0x4d3f640

.field public static final LONGITUDE_OVERMAX:I = 0xac9d740

.field public static final WHO:Ljava/lang/String; = "MyRoute"

.field static mdist:I


# instance fields
.field center:Lcom/google/android/maps/GeoPoint;

.field dlati:I

.field dloni:I

.field maxLati:I

.field maxLoni:I

.field maxz:I

.field minLati:I

.field minLoni:I

.field points:[Lcom/google/android/maps/GeoPoint;

.field pstr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)V
    .locals 2
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 101
    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Activity;ILcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;[Lcom/google/android/maps/GeoPoint;)V
    .locals 6
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"
    .parameter "vias"

    .prologue
    .line 113
    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5}, Lcom/fleapapa/helper/ItemRoute;->convertGeoPointArraytoStringArray([Lcom/google/android/maps/GeoPoint;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Activity;ILcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;[Ljava/lang/String;)V
    .locals 6
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"
    .parameter "vias"

    .prologue
    .line 107
    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/google/android/maps/GeoPoint;Ljava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 110
    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Activity;ILcom/google/android/maps/GeoPoint;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"
    .parameter "vias"

    .prologue
    .line 104
    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 98
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/maps/GeoPoint;)V
    .locals 6
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"
    .parameter "vias"

    .prologue
    .line 116
    invoke-static {p5}, Lcom/fleapapa/helper/ItemRoute;->convertGeoPointArraytoStringArray([Lcom/google/android/maps/GeoPoint;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 28
    .parameter "a"
    .parameter "mdist"
    .parameter "from"
    .parameter "to"
    .parameter "vias"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v23, 0x4d3f640

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->minLati:I

    .line 21
    const v23, 0xac9d740

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->minLoni:I

    .line 22
    const v23, -0x4d3f640

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->maxLati:I

    .line 23
    const v23, -0xac9d740

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->maxLoni:I

    .line 31
    sput p2, Lcom/fleapapa/helper/ItemRoute;->mdist:I

    .line 34
    :try_start_0
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "http://maps.google.com/maps/nav?output=js&oe=utf8&q=from%3A"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v24, "UTF-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 34
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 36
    .local v18, sb:Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 37
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 39
    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "+to%3A"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "UTF-8"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 40
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "&key="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f060109

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 41
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    .local v21, url:Ljava/net/URL;
    sget-object v23, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "MyRoute: http req="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 44
    .local v4, conn:Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 45
    const-string v10, ""

    .line 46
    .local v10, jsonString:Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v3, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, line:Ljava/lang/String;
    if-nez v12, :cond_3

    .line 49
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v7, jObj:Lorg/json/JSONObject;
    const-string v23, "Status"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 52
    .local v9, jStatus:Lorg/json/JSONObject;
    sget-object v23, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "MyRoute: code="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "code"

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v23, "code"

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 54
    .local v20, statusCode:I
    const/16 v23, 0xc8

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 55
    new-instance v23, Ljava/lang/Exception;

    const-string v24, "StatusCode != 200"

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v4           #conn:Ljava/net/URLConnection;
    .end local v7           #jObj:Lorg/json/JSONObject;
    .end local v9           #jStatus:Lorg/json/JSONObject;
    .end local v10           #jsonString:Ljava/lang/String;
    .end local v12           #line:Ljava/lang/String;
    .end local v18           #sb:Ljava/lang/String;
    .end local v20           #statusCode:I
    .end local v21           #url:Ljava/net/URL;
    :catch_0
    move-exception v23

    move-object/from16 v5, v23

    .line 92
    .local v5, e:Ljava/lang/Exception;
    sget-object v23, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "MyRoute: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 37
    .restart local v18       #sb:Ljava/lang/String;
    :cond_2
    :try_start_1
    aget-object v22, p5, v24

    .line 38
    .local v22, v:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "+to%3A"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 37
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 48
    .end local v22           #v:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v4       #conn:Ljava/net/URLConnection;
    .restart local v10       #jsonString:Ljava/lang/String;
    .restart local v12       #line:Ljava/lang/String;
    .restart local v21       #url:Ljava/net/URL;
    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 57
    .restart local v7       #jObj:Lorg/json/JSONObject;
    .restart local v9       #jStatus:Lorg/json/JSONObject;
    .restart local v20       #statusCode:I
    :cond_4
    const-string v23, "Directions"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 58
    .local v6, jDirections:Lorg/json/JSONObject;
    const-string v23, "Polyline"

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 59
    .local v8, jPolyLine:Lorg/json/JSONObject;
    const-string v23, "points"

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 60
    .local v16, polyLineEncodedPoints:Ljava/lang/String;
    const-string v23, "levels"

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 61
    .local v17, polyLineZoomLevels:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/ItemRoute;->decodePoints(Ljava/lang/String;I)[Lcom/google/android/maps/GeoPoint;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    .line 62
    sget-object v23, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "MyRoute: #points="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    const/16 v25, 0x0

    :goto_3
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 67
    new-instance v19, Ljava/lang/StringBuffer;

    const-string v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 68
    .local v19, sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 78
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemRoute;->pstr:Ljava/lang/String;

    .line 79
    new-instance v23, Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->minLati:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->maxLati:I

    move/from16 v25, v0

    add-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->minLoni:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->maxLoni:I

    move/from16 v26, v0

    add-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    invoke-direct/range {v23 .. v25}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemRoute;->center:Lcom/google/android/maps/GeoPoint;

    .line 80
    move/from16 v0, p2

    mul-int/lit16 v0, v0, 0x1b58

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x412e848000000000L

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move v14, v0

    .line 81
    .local v14, moff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->maxLati:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->minLati:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    mul-int/lit8 v24, v14, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->dlati:I

    .line 82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->maxLoni:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->minLoni:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    mul-int/lit8 v24, v14, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->dloni:I

    goto/16 :goto_2

    .line 62
    .end local v14           #moff:I
    .end local v19           #sbuf:Ljava/lang/StringBuffer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    goto/16 :goto_3

    .line 68
    .restart local v19       #sbuf:Ljava/lang/StringBuffer;
    :cond_6
    aget-object v15, v23, v25

    .line 69
    .local v15, p:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v11

    .line 70
    .local v11, lati:I
    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v13

    .line 71
    .local v13, loni:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->minLati:I

    move/from16 v26, v0

    move v0, v11

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->minLati:I

    .line 72
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->maxLati:I

    move/from16 v26, v0

    move v0, v11

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->maxLati:I

    .line 73
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->minLoni:I

    move/from16 v26, v0

    move v0, v13

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->minLoni:I

    .line 74
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->maxLoni:I

    move/from16 v26, v0

    move v0, v13

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemRoute;->maxLoni:I

    .line 76
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .line 68
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4
.end method

.method private static convertGeoPointArraytoStringArray([Lcom/google/android/maps/GeoPoint;)[Ljava/lang/String;
    .locals 7
    .parameter "mPoints"

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 119
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 120
    .local v1, viaStrings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 122
    return-object v1

    .line 121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decodePoints(Ljava/lang/String;I)[Lcom/google/android/maps/GeoPoint;
    .locals 18
    .parameter "encoded_points"
    .parameter "countExpected"

    .prologue
    .line 133
    const/4 v6, 0x0

    .line 134
    .local v6, index:I
    const-wide/16 v8, 0x0

    .line 135
    .local v8, lat:D
    const-wide/16 v10, 0x0

    .line 136
    .local v10, lng:D
    const/4 v3, 0x0

    .line 137
    .local v3, cnt:I
    move/from16 v0, p2

    new-array v0, v0, [Lcom/google/android/maps/GeoPoint;

    move-object v12, v0

    .local v12, out:[Lcom/google/android/maps/GeoPoint;
    move v4, v3

    .line 141
    .end local v3           #cnt:I
    .local v4, cnt:I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_0

    array-length v15, v12

    if-lt v4, v15, :cond_1

    :cond_0
    move v3, v4

    .end local v4           #cnt:I
    .restart local v3       #cnt:I
    move-object v15, v12

    .line 168
    :goto_1
    return-object v15

    .line 142
    .end local v3           #cnt:I
    .restart local v4       #cnt:I
    :cond_1
    const/4 v14, 0x0

    .line 143
    .local v14, shift:I
    const/4 v13, 0x0

    .local v13, result:I
    move v7, v6

    .line 145
    .end local v6           #index:I
    .local v7, index:I
    :goto_2
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x3f

    sub-int v2, v15, v16

    .line 146
    .local v2, b:I
    and-int/lit8 v15, v2, 0x1f

    shl-int/2addr v15, v14

    or-int/2addr v13, v15

    .line 147
    add-int/lit8 v14, v14, 0x5

    .line 148
    const/16 v15, 0x20

    if-ge v2, v15, :cond_5

    .line 150
    and-int/lit8 v15, v13, 0x1

    if-eqz v15, :cond_2

    shr-int/lit8 v15, v13, 0x1

    xor-int/lit8 v15, v15, -0x1

    :goto_3
    int-to-double v15, v15

    add-double/2addr v8, v15

    .line 152
    const/4 v14, 0x0

    .line 153
    const/4 v13, 0x0

    move v7, v6

    .line 155
    .end local v6           #index:I
    .restart local v7       #index:I
    :goto_4
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    const/16 v16, 0x3f

    sub-int v2, v15, v16

    .line 156
    and-int/lit8 v15, v2, 0x1f

    shl-int/2addr v15, v14

    or-int/2addr v13, v15

    .line 157
    add-int/lit8 v14, v14, 0x5

    .line 158
    const/16 v15, 0x20

    if-ge v2, v15, :cond_4

    .line 160
    and-int/lit8 v15, v13, 0x1

    if-eqz v15, :cond_3

    shr-int/lit8 v15, v13, 0x1

    xor-int/lit8 v15, v15, -0x1

    :goto_5
    int-to-double v15, v15

    add-double/2addr v10, v15

    .line 162
    add-int/lit8 v3, v4, 0x1

    .end local v4           #cnt:I
    .restart local v3       #cnt:I
    :try_start_1
    new-instance v15, Lcom/google/android/maps/GeoPoint;

    move-wide v0, v8

    double-to-int v0, v0

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0xa

    move-wide v0, v10

    double-to-int v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0xa

    invoke-direct/range {v15 .. v17}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v15, v12, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v3

    .end local v3           #cnt:I
    .restart local v4       #cnt:I
    goto :goto_0

    .line 150
    :cond_2
    shr-int/lit8 v15, v13, 0x1

    goto :goto_3

    .line 160
    :cond_3
    shr-int/lit8 v15, v13, 0x1

    goto :goto_5

    .line 165
    .end local v2           #b:I
    .end local v13           #result:I
    .end local v14           #shift:I
    :catch_0
    move-exception v15

    move-object v5, v15

    move v3, v4

    .line 166
    .end local v4           #cnt:I
    .restart local v3       #cnt:I
    .local v5, e:Ljava/lang/Exception;
    :goto_6
    const/4 v15, 0x0

    goto :goto_1

    .line 165
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #b:I
    .restart local v13       #result:I
    .restart local v14       #shift:I
    :catch_1
    move-exception v15

    move-object v5, v15

    goto :goto_6

    .end local v3           #cnt:I
    .restart local v4       #cnt:I
    :cond_4
    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_4

    .end local v7           #index:I
    .restart local v6       #index:I
    :cond_5
    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_2
.end method

.method public decodeZoomLevels(Ljava/lang/String;)[I
    .locals 8
    .parameter "encodedZoomLevels"

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v3, v4, [I

    .line 126
    .local v3, out:[I
    const/4 v1, 0x0

    .line 127
    .local v1, index:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    if-lt v6, v5, :cond_0

    .line 129
    return-object v3

    .line 127
    :cond_0
    aget-char v0, v4, v6

    .line 128
    .local v0, c:C
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/16 v7, 0x3f

    sub-int v7, v0, v7

    aput v7, v3, v2

    .line 127
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0
.end method
