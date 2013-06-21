.class public Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;
    }
.end annotation


# static fields
.field public static final THEME_DESCRIPTION_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final THEME_DESCRIPTION_KEY_COLOUR:Ljava/lang/String; = "color"

.field public static final THEME_DESCRIPTION_KEY_DEPRESSED_IMAGE:Ljava/lang/String; = "depressedimage"

.field public static final THEME_DESCRIPTION_KEY_HEIGHT:Ljava/lang/String; = "h"

.field public static final THEME_DESCRIPTION_KEY_HREF:Ljava/lang/String; = "href"

.field public static final THEME_DESCRIPTION_KEY_H_ALIGN:Ljava/lang/String; = "halign"

.field public static final THEME_DESCRIPTION_KEY_ID:Ljava/lang/String; = "id"

.field public static final THEME_DESCRIPTION_KEY_MIN_SIZE:Ljava/lang/String; = "minsize"

.field public static final THEME_DESCRIPTION_KEY_NORMAL_IMAGE:Ljava/lang/String; = "image"

.field public static final THEME_DESCRIPTION_KEY_OFFLINE_IMAGE:Ljava/lang/String; = "offlineimage"

.field public static final THEME_DESCRIPTION_KEY_ONLINE_IMAGE:Ljava/lang/String; = "onlineimage"

.field public static final THEME_DESCRIPTION_KEY_SIZE:Ljava/lang/String; = "size"

.field public static final THEME_DESCRIPTION_KEY_THEME_SRC:Ljava/lang/String; = "themesrc"

.field public static final THEME_DESCRIPTION_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final THEME_DESCRIPTION_KEY_V_ALIGN:Ljava/lang/String; = "valign"

.field public static final THEME_DESCRIPTION_KEY_WIDTH:Ljava/lang/String; = "w"

.field public static final THEME_DESCRIPTION_KEY_X:Ljava/lang/String; = "x"

.field public static final THEME_DESCRIPTION_KEY_Y:Ljava/lang/String; = "y"

.field public static final THEME_DESCRIPTION_VALUE_H_ALIGN_CENTRE:Ljava/lang/String; = "center"

.field public static final THEME_DESCRIPTION_VALUE_H_ALIGN_LEFT:Ljava/lang/String; = "left"

.field public static final THEME_DESCRIPTION_VALUE_H_ALIGN_RIGHT:Ljava/lang/String; = "right"

.field public static final THEME_DESCRIPTION_VALUE_TYPE_BUTTON:Ljava/lang/String; = "button"

.field public static final THEME_DESCRIPTION_VALUE_TYPE_SWITCH:Ljava/lang/String; = "switch"

.field public static final THEME_DESCRIPTION_VALUE_TYPE_TAB:Ljava/lang/String; = "tab"

.field public static final THEME_DESCRIPTION_VALUE_TYPE_TEXT_INPUT:Ljava/lang/String; = "textinput"

.field public static final THEME_DESCRIPTION_VALUE_V_ALIGN_CENTRE:Ljava/lang/String; = "center"


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

.field private _masterTheme:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;


# direct methods
.method private constructor <init>(Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_masterTheme:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    iput-object p1, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_masterTheme:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    return-void
.end method

.method public static backBarItem(Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 4

    new-instance v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;-><init>(Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)V

    iget-object v1, v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "back_bar"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v2, "backtext"

    const-string v3, "Back"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static fromJSON(Ljava/lang/String;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;Lcom/chillingo/crystal/ui/theming/ThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 1

    invoke-static {p0}, Lcom/chillingo/crystal/utils/JSONUtils;->ParseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->fromJSON(Lorg/json/JSONObject;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;Lcom/chillingo/crystal/ui/theming/ThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSON(Lorg/json/JSONObject;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;Lcom/chillingo/crystal/ui/theming/ThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 2

    new-instance v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-direct {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;-><init>(Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/JSONUtils;->jsonObjectToDictionary(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    return-object v0
.end method

.method private scaleX(Landroid/content/Context;)F
    .locals 1

    invoke-static {p1}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private scaleY(Landroid/content/Context;)F
    .locals 1

    invoke-static {p1}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public depressedButton()Ljava/lang/String;
    .locals 1

    const-string v0, "depressedimage"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColour()I
    .locals 1

    const-string v0, "color"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->getColour(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColour(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_masterTheme:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hAlign()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;
    .locals 3

    const-string v0, "halign"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Centre:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Left:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Right:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public hasHAlign()Z
    .locals 1

    const-string v0, "halign"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hasKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasMinSize()Z
    .locals 1

    const-string v0, "minsize"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hasKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVAlign()Z
    .locals 1

    const-string v0, "valign"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hasKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public height(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->scaleX(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public href()Ljava/lang/String;
    .locals 1

    const-string v0, "href"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isButtonText()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buttontext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public masterThemeDescription()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_masterTheme:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    return-object v0
.end method

.method public minSize(Landroid/content/Context;)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->scaleY(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledMinSize()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public normalButton()Ljava/lang/String;
    .locals 1

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public offlineImagePath()Ljava/lang/String;
    .locals 1

    const-string v0, "offlineimage"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onlineImagePath()Ljava/lang/String;
    .locals 1

    const-string v0, "onlineimage"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size(Landroid/content/Context;)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->scaleY(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledSize()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_masterTheme:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    invoke-static {v1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public unscaledHeight()I
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public unscaledMinSize()F
    .locals 1

    const-string v0, "minsize"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0
.end method

.method public unscaledSize()F
    .locals 1

    const-string v0, "size"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0
.end method

.method public unscaledWidth()I
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v1, "w"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public unscaledX()I
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public unscaledY()I
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->_internalData:Ljava/util/Map;

    const-string v1, "y"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public vAlign()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hasVAlign()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "valign"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public width(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->scaleX(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public x(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->scaleX(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public y(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->scaleY(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
