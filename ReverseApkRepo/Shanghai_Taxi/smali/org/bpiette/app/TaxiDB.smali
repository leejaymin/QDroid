.class public Lorg/bpiette/app/TaxiDB;
.super Ljava/lang/Object;
.source "TaxiDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bpiette/app/TaxiDB$TrafficType;
    }
.end annotation


# static fields
.field public static final DAY_RATE:Ljava/lang/Double; = null

.field public static final NIGHT_RATE:Ljava/lang/Double; = null

.field public static final SELECT_FROM_LOCATION_REQUEST_CODE:I = 0x1

.field public static final SELECT_TO_LOCATION_REQUEST_CODE:I = 0x2

.field private static categories:[Ljava/lang/String;

.field private static initialized:Z

.field private static locationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/bpiette/app/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7
    const-wide/high16 v0, 0x4028

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/bpiette/app/TaxiDB;->DAY_RATE:Ljava/lang/Double;

    .line 8
    const-wide/high16 v0, 0x4030

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/bpiette/app/TaxiDB;->NIGHT_RATE:Ljava/lang/Double;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 15
    const-string v1, "General"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 16
    const-string v2, "Transportation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17
    const-string v2, "Events"

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lorg/bpiette/app/TaxiDB;->categories:[Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bpiette/app/TaxiDB;->locationsMap:Ljava/util/Map;

    .line 29
    sput-boolean v3, Lorg/bpiette/app/TaxiDB;->initialized:Z

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLocation(Lorg/bpiette/app/Location;)V
    .locals 2
    .parameter "loc"

    .prologue
    .line 33
    sget-object v0, Lorg/bpiette/app/TaxiDB;->locationsMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static getCategories()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/bpiette/app/TaxiDB;->categories:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLocations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/bpiette/app/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lorg/bpiette/app/TaxiDB;->locationsMap:Ljava/util/Map;

    return-object v0
.end method

.method public static initPlaces()V
    .locals 26

    .prologue
    .line 48
    sget-boolean v3, Lorg/bpiette/app/TaxiDB;->initialized:Z

    if-eqz v3, :cond_0

    .line 432
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v3, Lorg/bpiette/app/Location;

    const-string v4, "Jing an temple"

    const-wide v5, 0x403f392684cf073aL

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-wide v6, 0x405e5c8372e6a769L

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "\u6211\u60f3\u53bb\u9759\u5b89\u5bfa"

    invoke-direct/range {v3 .. v8}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 52
    .local v3, loc0:Lorg/bpiette/app/Location;
    new-instance v4, Lorg/bpiette/app/Location;

    const-string v5, "Xujiahui"

    const-wide v6, 0x403f314057082492L

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-wide v7, 0x405e5c0dfdef8488L

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "\u6211\u60f3\u53bb\u5f90\u5bb6\u6c47"

    invoke-direct/range {v4 .. v9}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 53
    .local v4, loc1:Lorg/bpiette/app/Location;
    new-instance v5, Lorg/bpiette/app/Location;

    const-string v6, "The bund"

    const-wide v7, 0x403f3bae99051f24L

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-wide v8, 0x405e5f7c5fccef31L

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "\u6211\u60f3\u53bb\u5916\u6ee9"

    invoke-direct/range {v5 .. v10}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 54
    .local v5, loc2:Lorg/bpiette/app/Location;
    new-instance v6, Lorg/bpiette/app/Location;

    const-string v7, "Century park"

    const-wide v8, 0x403f37a93af74cd3L

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-wide v9, 0x405e62f304039abfL

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "\u6211\u60f3\u53bb\u4e16\u7eaa\u516c\u56ed"

    invoke-direct/range {v6 .. v11}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 55
    .local v6, loc3:Lorg/bpiette/app/Location;
    new-instance v7, Lorg/bpiette/app/Location;

    const-string v8, "People square"

    const-wide v9, 0x403f3ad6436e13daL

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-wide v10, 0x405e5e57aa0b00e5L

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "\u6211\u60f3\u53bb\u4eba\u6c11\u5e7f\u573a"

    invoke-direct/range {v7 .. v12}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 56
    .local v7, loc4:Lorg/bpiette/app/Location;
    new-instance v8, Lorg/bpiette/app/Location;

    const-string v9, "North railway station"

    const-wide v10, 0x403f3fed81783aa4L

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-wide v11, 0x405e5cd6902f8d8cL

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "\u6211\u60f3\u53bb\u4e0a\u6d77\u706b\u8f66\u7ad9"

    invoke-direct/range {v8 .. v13}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 57
    .local v8, loc5:Lorg/bpiette/app/Location;
    new-instance v9, Lorg/bpiette/app/Location;

    const-string v10, "South railway station"

    const-wide v11, 0x403f273eccc46951L

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-wide v12, 0x405e5b7cb70ac3a8L

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const/4 v13, 0x1

    const-string v14, "\u6211\u60f3\u53bb\u4e0a\u6d77\u5357\u7ad9"

    invoke-direct/range {v9 .. v14}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 58
    .local v9, loc6:Lorg/bpiette/app/Location;
    new-instance v10, Lorg/bpiette/app/Location;

    const-string v11, "Pudong airport"

    const-wide v12, 0x403f2618efbb0e5eL

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-wide v13, 0x405e7342c3c9eeccL

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "\u6211\u60f3\u53bb\u6d66\u4e1c\u673a\u573a"

    invoke-direct/range {v10 .. v15}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 59
    .local v10, loc7:Lorg/bpiette/app/Location;
    new-instance v11, Lorg/bpiette/app/Location;

    const-string v12, "Hongqiao airport"

    const-wide v13, 0x403f31a32b12d341L

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const-wide v14, 0x405e562a90cd423eL

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v15, 0x1

    const-string v16, "\u6211\u60f3\u53bb\u8679\u6865\u673a\u573a"

    invoke-direct/range {v11 .. v16}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 60
    .local v11, loc8:Lorg/bpiette/app/Location;
    new-instance v12, Lorg/bpiette/app/Location;

    const-string v13, "Gubei new town"

    const-wide v14, 0x403f2e907cba65c2L

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const-wide v15, 0x405e59ed4009db4bL

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, "\u6211\u60f3\u53bb\u53e4\u5317\u65b0\u57ce"

    invoke-direct/range {v12 .. v17}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 61
    .local v12, loc9:Lorg/bpiette/app/Location;
    new-instance v13, Lorg/bpiette/app/Location;

    const-string v14, "Lujiazui"

    const-wide v15, 0x403f3c96a9245118L

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const-wide v16, 0x405e5ff5d71cb1e7L

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    const-string v18, "\u6211\u60f3\u53bb\u9646\u5bb6\u5634"

    invoke-direct/range {v13 .. v18}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 62
    .local v13, loc10:Lorg/bpiette/app/Location;
    new-instance v14, Lorg/bpiette/app/Location;

    const-string v15, "Exposition 2010"

    const-wide v16, 0x403f2f99293151b2L

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const-wide v17, 0x405e5ee317fd4cc7L

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    const/16 v18, 0x2

    const-string v19, "\u6211\u60f3\u53bb2010\u4e16\u535a\u56ed\u533a"

    invoke-direct/range {v14 .. v19}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 63
    .local v14, loc11:Lorg/bpiette/app/Location;
    new-instance v15, Lorg/bpiette/app/Location;

    const-string v16, "Zhongshan park"

    const-wide v17, 0x403f381cadb5b051L

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    const-wide v18, 0x405e5afb40123ec7L

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "\u6211\u60f3\u53bb\u4e2d\u5c71\u516c\u56ed"

    invoke-direct/range {v15 .. v20}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 64
    .local v15, loc12:Lorg/bpiette/app/Location;
    new-instance v16, Lorg/bpiette/app/Location;

    const-string v17, "Longyang maglev"

    const-wide v18, 0x403f33bbbe878facL

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const-wide v19, 0x405e643457f6611bL

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v20, 0x1

    const-string v21, "\u6211\u60f3\u53bb\u9f99\u9633\u8def\u78c1\u60ac\u6d6e"

    invoke-direct/range {v16 .. v21}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 65
    .local v16, loc13:Lorg/bpiette/app/Location;
    new-instance v17, Lorg/bpiette/app/Location;

    const-string v18, "Shanghai stadium"

    const-wide v19, 0x403f2ea6259916bdL

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const-wide v20, 0x405e5bedd418f169L

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x2

    const-string v22, "\u6211\u60f3\u53bb\u4e0a\u6d77\u4f53\u80b2\u9986"

    invoke-direct/range {v17 .. v22}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 66
    .local v17, loc14:Lorg/bpiette/app/Location;
    new-instance v18, Lorg/bpiette/app/Location;

    const-string v19, "Shanghai mountain (She shan)"

    const-wide v20, 0x403f19999999999aL

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const-wide v21, 0x405e4bbbbb97f123L

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    const/16 v22, 0x0

    const-string v23, "\u6211\u60f3\u53bb\u4f58\u5c71"

    invoke-direct/range {v18 .. v23}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 67
    .local v18, loc15:Lorg/bpiette/app/Location;
    new-instance v19, Lorg/bpiette/app/Location;

    const-string v20, "Yu garden"

    const-wide v21, 0x403f3a86e7e62dc7L

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    const-wide v22, 0x405e5f70c996b767L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    const-string v24, "\u6211\u60f3\u53bb\u8c6b\u56ed"

    invoke-direct/range {v19 .. v24}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 68
    .local v19, loc16:Lorg/bpiette/app/Location;
    new-instance v20, Lorg/bpiette/app/Location;

    const-string v21, "Xintiandi"

    const-wide v22, 0x403f37fd8e35b849L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x405e5e6754a2ef84L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    const/16 v24, 0x0

    const-string v25, "\u6211\u60f3\u53bb\u65b0\u5929\u5730"

    invoke-direct/range {v20 .. v25}, Lorg/bpiette/app/Location;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    .line 70
    .local v20, loc17:Lorg/bpiette/app/Location;
    invoke-static {v3}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 71
    invoke-static {v4}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 72
    invoke-static {v5}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 73
    invoke-static {v6}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 74
    invoke-static {v7}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 75
    invoke-static {v8}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 76
    invoke-static {v9}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 77
    invoke-static {v10}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 78
    invoke-static {v11}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 79
    invoke-static {v12}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 80
    invoke-static {v13}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 81
    invoke-static {v14}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 82
    invoke-static {v15}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 83
    invoke-static/range {v16 .. v16}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 84
    invoke-static/range {v17 .. v17}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 85
    invoke-static/range {v18 .. v18}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 86
    invoke-static/range {v19 .. v19}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 87
    invoke-static/range {v20 .. v20}, Lorg/bpiette/app/TaxiDB;->addLocation(Lorg/bpiette/app/Location;)V

    .line 89
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 90
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400ee147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40273d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 91
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40158f5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4027570a3d70a3d7L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 92
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40301c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4036851eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 93
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40113d70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4022cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 94
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4012cccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4027800000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 95
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40256147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 96
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40479851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4044f0a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 97
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402651eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030c51eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 98
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4020666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403091eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 99
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402075c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402ea3d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 100
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4029eb851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40356147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 101
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400547ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40220f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 102
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402feb851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035851eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 103
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4022666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031851eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 104
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404103d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4043cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 105
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40155c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4025f5c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 106
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400fc28f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4028428f5c28f5c3L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 108
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4012eb851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40255c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 109
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 110
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402c19999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031547ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 111
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403047ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403907ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 112
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4029dc28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402c99999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 113
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402b051eb851eb85L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40327851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 114
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4015f5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4019b851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 115
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404aaccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4043c28f5c28f5c3L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 116
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402a4ccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402e666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 117
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4015a3d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402270a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 118
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4030e3d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034f851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 119
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402a51eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4038c00000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 120
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4012ae147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40274ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 121
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40302147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403807ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 122
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400251eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x401c7ae147ae147bL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 123
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4042028f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404303d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 124
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/high16 v22, 0x402c

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030a66666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 125
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4017666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402c3d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 127
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40165c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40244ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 128
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40220f5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x4030

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 129
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 130
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40267ae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40326b851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 131
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4003eb851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x401f147ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 132
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401d666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402fb33333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 133
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402dfae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034733333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 134
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4045beb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404459999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 135
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403068f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034333333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 136
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402ae66666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x4034

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 137
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4015851eb851eb85L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402bf5c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 138
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026f0a3d70a3d71L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40353851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 139
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4020b33333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403019999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 140
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40262e147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40316b851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 141
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4025d70a3d70a3d7L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4033947ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 142
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4043a3d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404583d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 143
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x3ff7d70a3d70a3d7L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x401347ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 144
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4006f5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4023cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 146
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402f2e147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4032d47ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 147
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402de147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403407ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 148
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402475c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402c428f5c28f5c3L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 149
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 150
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402670a3d70a3d71L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40326147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 151
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403163d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40377851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 152
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4032deb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034eb851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 153
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4041747ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40405c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 154
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403a6147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403d2e147ae147aeL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 155
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4032a66666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4037333333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 156
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401e147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031266666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 157
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40226147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402fbd70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 158
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4032570a3d70a3d7L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4038c7ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 159
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400f333333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40208a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 160
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402d947ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40340ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 161
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4048a00000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404a028f5c28f5c3L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 162
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4024666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402f333333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 163
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4024c28f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030e66666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 165
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400c28f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x4021

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 166
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401bc28f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402b99999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 167
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4008147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40225c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 168
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40296b851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035a147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 169
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 170
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4013147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40260a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 171
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402a28f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030fae147ae147bL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 172
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4046cccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40444a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 173
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402cae147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4032266666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 174
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026c28f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031ee147ae147aeL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 175
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40175c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402b3d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 176
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026b851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034147ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 177
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40191eb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402c19999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 178
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40291eb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034a147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 179
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/high16 v22, 0x4022

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40301eb851eb851fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 180
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40429ae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40447c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 181
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4006f5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x401fcccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 182
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x3ff8a3d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4013333333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v7

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 184
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401099999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40223d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 185
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402375c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402fbd70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 186
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401a47ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x402c

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 187
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403151eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4037c51eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 188
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40105c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40250f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 189
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 190
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402fc28f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403387ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 191
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4048333333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404590a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 192
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4030fae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40350ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 193
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402c19999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403559999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 194
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4022d1eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031a147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 195
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402c51eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4036a147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 196
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/high16 v22, 0x4018

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402775c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 197
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40312b851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4036c51eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 198
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402799999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4032ab851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 199
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4043ee147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4045f0a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 200
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401a147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402aa3d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 201
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4013ae147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402b666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 203
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402ab851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402e28f5c28f5c29L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 204
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4012147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x401851eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 205
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402b19999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031400000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 206
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4031bae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403507ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 207
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4028c28f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402d0a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 208
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/high16 v22, 0x402f

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403419999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 209
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 210
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4048cf5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4041f70a3d70a3d7L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 211
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402f851eb851eb85L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403051eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 212
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401d99999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4025b33333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 213
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4032e147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40369eb851eb851fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 214
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402d3851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034c00000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 215
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402319999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402b8f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 216
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4031947ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403407ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 217
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40151eb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4021d70a3d70a3d7L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 218
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40434147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4043a00000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 219
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402abd70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4032547ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 220
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4024b33333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402ccccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 222
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4048400000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4044666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 223
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404b31eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4044f33333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 224
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404591eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404430a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 225
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40420ccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4041333333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 226
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4047c147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40441c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 227
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404927ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4046b70a3d70a3d7L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 228
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4049228f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4042a28f5c28f5c3L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 229
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 230
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404b733333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404448f5c28f5c29L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 231
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4049347ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40454a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 232
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4045428f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4046bc28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 233
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40440a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4042eccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 234
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4049a00000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4047600000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 235
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404235c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40407d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 236
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4046c28f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404395c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 237
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x405369999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404fc00000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 238
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40458e147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4044eccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 239
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4046beb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40440f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v10

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 241
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026a3d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402ff0a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 242
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4029e147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030333333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 243
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403028f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4033d9999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 244
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/high16 v22, 0x403a

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403ea147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 245
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402e0f5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 246
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402f2e147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035ab851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 247
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402f800000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030800000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 248
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404a6b851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40438f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 249
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 250
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4020f0a3d70a3d71L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030c7ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 251
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4032fd70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40377ae147ae147bL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 252
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4037b851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403d91eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 253
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4029ae147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031fae147ae147bL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 254
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4039d9999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403da147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 255
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40290a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40315eb851eb851fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 256
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403a35c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403e59999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 257
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40301c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40332b851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 258
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402ffae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034b851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 260
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4020851eb851eb85L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402f570a3d70a3d7L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 261
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4011333333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x4026

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 262
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402a2e147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40338ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 263
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4032dc28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403919999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 264
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4027f0a3d70a3d71L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030851eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 265
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402919999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034ae147ae147aeL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 266
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4020428f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4027e66666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 267
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404879999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4043eccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 268
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4021333333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402e23d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 269
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 270
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402fd70a3d70a3d7L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4037333333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 271
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402f7ae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4038d1eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 272
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401a666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402cbd70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 273
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4032b5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403819999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 274
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4010e147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4025f5c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 275
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403ebae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4042cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 276
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402a147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4032e147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 277
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026fae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40327851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v12

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 279
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4021947ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402d8a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 280
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402870a3d70a3d71L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034a147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 281
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401b99999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030ee147ae147aeL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 282
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401f3d70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40326b851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 283
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40177ae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402a5c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 284
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4025147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40347ae147ae147bL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 285
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40325eb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40384ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 286
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4045feb851eb851fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404688f5c28f5c29L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 287
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40339c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4038d47ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 288
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4030a66666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4038a147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 289
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 290
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40250a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035851eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 291
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4027147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034bae147ae147bL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 292
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40246b851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40356b851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 293
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402c947ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40376e147ae147aeL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 294
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40453d70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4047d33333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 295
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40190a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402ee66666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 296
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401b28f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031947ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v13

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 298
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4029a8f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403199999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 299
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402875c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4033c7ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 300
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402775c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 301
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40278a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4033c7ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 302
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4027ae147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403107ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 303
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402d47ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40363ae147ae147bL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 304
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403028f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034ab851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 305
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40433ae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40418f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 306
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4037a66666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403bab851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 307
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402fe147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4036f33333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 308
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026800000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4037e147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 309
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 310
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402f28f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403791eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 311
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40277ae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403387ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 312
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402828f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4033cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 313
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4047428f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40493d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 314
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4029ae147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4034deb851eb851fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 315
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4023a3d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030ee147ae147aeL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 317
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400e666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40200f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 318
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4014cccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4025a8f5c28f5c29L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 319
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402147ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402ce66666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 320
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40335c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40394ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 321
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401e147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4026cccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 322
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401599999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4028666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 323
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402447ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402dd70a3d70a3d7L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 324
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40493851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404655c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 325
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402747ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402e4ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 326
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40215c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402de66666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 327
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026f5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4032147ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 328
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4030333333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40382b851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 329
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 330
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403335c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40384ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 331
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401e28f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403047ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 332
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40414147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4042fd70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 333
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40212e147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402b8a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 334
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4020f5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402ea3d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 336
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4030a8f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403507ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 337
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4030051eb851eb85L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4036400000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 338
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402699999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030547ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 339
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400e51eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x401f99999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 340
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402899999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403499999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 341
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40327851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4039ab851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 342
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4033f33333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40372147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 343
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403e970a3d70a3d7L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403a11eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 344
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403b75c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403f666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 345
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4033bae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40396b851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 346
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402551eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035451eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 347
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4025f5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403459999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 348
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40336b851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x403b

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 349
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 350
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402fbd70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4036451eb851eb85L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 351
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40492a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404b1c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 352
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40268f5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031d1eb851eb852L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 353
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4026eb851eb851ecL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40331eb851eb851fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 355
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40157ae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402af5c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 356
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x3ff2666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x400c666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 357
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40260a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40325eb851eb851fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 358
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402e6147ae147ae1L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4036266666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 359
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4023ae147ae147aeL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402f3d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 360
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4028fae147ae147bL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 361
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401aa3d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40248a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 362
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40465c28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40444f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 363
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4028428f5c28f5c3L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40322147ae147ae1L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 364
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40118f5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4024bd70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 365
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402a3d70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4037400000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 366
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402823d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035deb851eb851fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 367
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4015333333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402ce66666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 368
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402e147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4035266666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 369
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 370
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4041800000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40447c28f5c28f5cL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 371
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402475c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4032ee147ae147aeL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 372
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4019d70a3d70a3d7L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402fa3d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 374
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404151eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x4044

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 375
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4042200000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40441d70a3d70a3dL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 376
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4043bc28f5c28f5cL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4045f0a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 377
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4048a7ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404b55c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 378
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40432ccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40446ccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 379
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4043733333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4046d9999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 380
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40433851eb851eb8L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4044228f5c28f5c3L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 381
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4052e1eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404f70a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 382
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403b19999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403fd9999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 383
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403f28f5c28f5c29L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4044466666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 384
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4045266666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4047c28f5c28f5c3L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 385
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404783d70a3d70a4L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404acccccccccccdL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 386
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4042133333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404503d70a3d70a4L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 387
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4048947ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404ad5c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 388
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4041ea3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4044b33333333333L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 389
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 390
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4043b5c28f5c28f6L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404599999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 391
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4043a7ae147ae148L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4046600000000000L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 393
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40160a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40230f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 394
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40208f5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402df0a3d70a3d71L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 395
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x3ff2666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40050a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 396
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402619999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4031ab851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 397
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4006147ae147ae14L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x401d147ae147ae14L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 398
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x401d0a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402e75c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 399
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402db33333333333L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4033266666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 400
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4045a51eb851eb85L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4043f9999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 401
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x403051eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403399999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 402
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x402abd70a3d70a3dL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4033666666666666L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 403
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/high16 v22, 0x4016

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402b8f5c28f5c28fL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 404
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40268f5c28f5c28fL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40347851eb851eb8L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 405
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4020851eb851eb85L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/high16 v23, 0x402f

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 406
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4025cccccccccccdL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x4030ab851eb851ecL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 407
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x40258a3d70a3d70aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x403247ae147ae148L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 408
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x404399999999999aL

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x404535c28f5c28f6L

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 409
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 410
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x400651eb851eb852L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x40200a3d70a3d70aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual/range {v19 .. v21}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 412
    new-instance v21, Lorg/bpiette/app/Distance;

    const-wide v22, 0x4014d70a3d70a3d7L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const-wide v23, 0x402399999999999aL

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 413
    new-instance v3, Lorg/bpiette/app/Distance;

    .end local v3           #loc0:Lorg/bpiette/app/Location;
    const-wide v21, 0x4016147ae147ae14L

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    const-wide v22, 0x4024666666666666L

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object v0, v3

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 414
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v21, 0x400ae147ae147ae1L

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .end local v4           #loc1:Lorg/bpiette/app/Location;
    const-wide v21, 0x4020f5c28f5c28f6L

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 415
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x40268a3d70a3d70aL

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/high16 v21, 0x4033

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .end local v5           #loc2:Lorg/bpiette/app/Location;
    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 416
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x40027ae147ae147bL

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x401799999999999aL

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 417
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x401e70a3d70a3d71L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x402fc28f5c28f5c3L

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v8

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 418
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x4027570a3d70a3d7L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x402f23d70a3d70a4L

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v9

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 419
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x40461851eb851eb8L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x404395c28f5c28f6L

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v10

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 420
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x4030051eb851eb85L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x4033d9999999999aL

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v11

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 421
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x4026e66666666666L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x4031d9999999999aL

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v12

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 422
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x4019147ae147ae14L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x402e4ccccccccccdL

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v13

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 423
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x4023eb851eb851ecL

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x4032ab851eb851ecL

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v14

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 424
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x401fd70a3d70a3d7L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x402f800000000000L

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 425
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x40263d70a3d70a3dL

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/high16 v5, 0x4032

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 426
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x401e666666666666L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x402d666666666666L

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 427
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x404371eb851eb852L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x404555c28f5c28f6L

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 428
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide v4, 0x40048f5c28f5c28fL

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v5, 0x401c7ae147ae147bL

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 429
    new-instance v3, Lorg/bpiette/app/Distance;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/bpiette/app/Location;->addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V

    .line 431
    const/4 v3, 0x1

    sput-boolean v3, Lorg/bpiette/app/TaxiDB;->initialized:Z

    goto/16 :goto_0
.end method
