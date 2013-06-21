.class public Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;
.super Ljava/lang/Object;


# static fields
.field private static final THEME_DESCRIPTION_KEY_DEFAULT_BUTTON_LIGHTEN:Ljava/lang/String; = "defaultbuttonlighten"

.field private static final THEME_DESCRIPTION_KEY_TABLE_BG_COLOUR:Ljava/lang/String; = "tablebackgroundcolor"

.field private static final THEME_DESCRIPTION_KEY_TABLE_GROUP_HEADER_COLOUR:Ljava/lang/String; = "tablegroupheadercolor"

.field private static final THEME_DESCRIPTION_KEY_TABLE_GROUP_HEADER_HEIGHT:Ljava/lang/String; = "tablegroupheaderheight"

.field private static final THEME_DESCRIPTION_KEY_TABLE_ITEMS_HAVE_SEPERATOR:Ljava/lang/String; = "tableitemshaveseparator"

.field private static final THEME_DESCRIPTION_KEY_TABLE_ITEMS_SEPERATOR_COLOUR:Ljava/lang/String; = "tableitemseparatorcolor"

.field private static final THEME_DESCRIPTION_KEY_TABLE_SCROLLING_INDICATOR_COLOUR:Ljava/lang/String; = "tablescrollindicatorcolor"


# instance fields
.field private _internalData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->_internalData:Ljava/util/Map;

    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;
    .locals 1

    invoke-static {p0}, Lcom/chillingo/crystal/utils/JSONUtils;->ParseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->fromJSON(Lorg/json/JSONObject;)Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;
    .locals 2

    new-instance v0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    invoke-direct {v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;-><init>()V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/JSONUtils;->jsonObjectToDictionary(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->_internalData:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public defaultButtonLighten()I
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->_internalData:Ljava/util/Map;

    const-string v1, "defaultbuttonlighten"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing the string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to a colour. Expected format is #RRGGBB or #AARRGGBB or colour name such as white"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->_internalData:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tableBackgroundColour()I
    .locals 1

    const-string v0, "tablebackgroundcolor"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tableGroupHeaderColour()I
    .locals 1

    const-string v0, "tablegroupheadercolor"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tableGroupHeaderHeight()I
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->_internalData:Ljava/util/Map;

    const-string v1, "tablegroupheaderheight"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public tableItemsHaveSeperator()Z
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->_internalData:Ljava/util/Map;

    const-string v1, "tableitemshaveseparator"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tableItemsSeperatorColour()I
    .locals 1

    const-string v0, "tableitemseparatorcolor"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tableScrollingIndicatorColour()I
    .locals 1

    const-string v0, "tablescrollindicatorcolor"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->_internalData:Ljava/util/Map;

    invoke-static {v0}, Lcom/chillingo/crystal/utils/DictionaryUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
