.class public Lcom/chillingo/crystal/ui/theming/PulltabFrameData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/theming/PulltabFrameData$1;,
        Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;,
        Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    }
.end annotation


# static fields
.field private static final BORDER_ROW:F = 9.0f

.field private static final FIRST_ADVERT_ROW_HEIGHT:F = 56.0f

.field private static final PHONE_FRAME_KEY:Ljava/lang/String; = "iPhoneFrames"

.field private static final PULL_TAB_TAB_HEIGHT:F = 25.0f

.field private static final TABLET_FRAME_KEY:Ljava/lang/String; = "iPadFrames"

.field private static _items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/ui/theming/FrameItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->_items:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static borderHeight(F)I
    .locals 1

    const/high16 v0, 0x4110

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static deviceTypeToFrameName(Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Phone:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    if-ne p0, v0, :cond_0

    const-string v0, "iPhoneFrames"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iPadFrames"

    goto :goto_0
.end method

.method public static firstRowHeight(F)I
    .locals 1

    const/high16 v0, 0x4260

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static fromJson(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/ui/theming/FrameItem;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v11

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_1

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_0

    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "w"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "h"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/chillingo/crystal/ui/theming/FrameItem;

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/theming/FrameItem;-><init>(Ljava/lang/String;IIIILandroid/content/Context;)V

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v10, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-object v10
.end method

.method public static getFrameItem(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;)Lcom/chillingo/crystal/ui/theming/FrameItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->reloadData(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)V

    sget-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->_items:Ljava/util/Map;

    invoke-static {p2}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->deviceTypeToFrameName(Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->orientationToString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/FrameItem;

    return-object v0
.end method

.method private static orientationToString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pullTabTabHeight(F)I
    .locals 1

    const/high16 v0, 0x41c8

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static reloadData(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulltab/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/overlay_position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getZippedTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->fromJson(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->_items:Ljava/util/Map;

    return-void
.end method
