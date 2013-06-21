.class public Lcom/chillingo/crystal/ui/theming/ThemeDescription;
.super Ljava/lang/Object;


# static fields
.field private static final NO_STRETCHY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ThemeDescription"

.field private static final THEME_DESCRIPTION_KEY_ITEMS_ARRAY:Ljava/lang/String; = "items"

.field private static final THEME_DESCRIPTION_KEY_MAINTAINS_ASPECT_RATIO:Ljava/lang/String; = "maintainsaspect"


# instance fields
.field private _containsButtonOrTab:Z

.field _maintainsAspectRatio:Z

.field _masterThemeDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

.field private _name:Ljava/lang/String;

.field _scales:Z

.field _tabNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _themeDescriptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;",
            ">;"
        }
    .end annotation
.end field

.field _touchableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_masterThemeDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    iput-boolean v1, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_maintainsAspectRatio:Z

    iput-boolean v1, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_scales:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_themeDescriptionItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_touchableItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_tabNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_containsButtonOrTab:Z

    return-void
.end method

.method public static fromJSON(Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/chillingo/crystal/utils/JSONUtils;->ParseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->fromJSON(Ljava/lang/String;Lorg/json/JSONObject;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "ThemeDescription"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing JSON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fromJSON(Ljava/lang/String;Lorg/json/JSONObject;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v4, Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-direct {v4}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;-><init>()V

    iput-object p2, v4, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_masterThemeDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    :try_start_0
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const-string v0, "maintainsaspect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_maintainsAspectRatio:Z

    :cond_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_2

    :try_start_1
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    invoke-static {v7, p2, v4}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->fromJSON(Lorg/json/JSONObject;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;Lcom/chillingo/crystal/ui/theming/ThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v7

    iget-object v8, v4, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_themeDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v1, "ThemeDescription"

    const-string v2, "Malformed ctd file"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v3

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->size()I

    move-result v7

    move v6, v2

    :goto_2
    if-ge v6, v7, :cond_9

    invoke-virtual {v4, v6}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v5

    const-string v0, "tab"

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    const-string v3, "button"

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_4
    const-string v9, "switch"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    move v5, v1

    :goto_5
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v5, :cond_8

    :cond_3
    move v3, v1

    :goto_6
    if-ne v3, v1, :cond_4

    iput-boolean v1, v4, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_containsButtonOrTab:Z

    iget-object v3, v4, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_touchableItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;

    invoke-direct {v5, v8}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;-><init>(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v0, v1, :cond_4

    iget-object v0, v4, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_tabNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    move v5, v2

    goto :goto_5

    :cond_8
    move v3, v2

    goto :goto_6

    :cond_9
    move-object v0, v4

    goto :goto_1
.end method

.method private indexOfStretchy()I
    .locals 5

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "stretchytext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public addThemeDescriptionItem(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_themeDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buttonForButtonTextId(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 3

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    return-object v0
.end method

.method public canExplicitlyHandleTouchEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_containsButtonOrTab:Z

    return v0
.end method

.method public containsTab(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_tabNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public doesScale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_scales:Z

    return v0
.end method

.method public get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_themeDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public isStretchy()Z
    .locals 2

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->indexOfStretchy()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maintainsAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_maintainsAspectRatio:Z

    return v0
.end method

.method public masterTheme()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_masterThemeDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDoesScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_scales:Z

    return-void
.end method

.method public setMaintainsAspectRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_maintainsAspectRatio:Z

    return-void
.end method

.method public setScaleFactors(FF)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_touchableItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->setScaleFactors(FF)Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_themeDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public stretchy()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->indexOfStretchy()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public tabCount()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_tabNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public tabNameAtIndex(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->tabCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_tabNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_themeDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_themeDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public touchableItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->_touchableItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public unscaledViewSize()Lcom/chillingo/crystal/utils/Size;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v0

    new-instance v2, Lcom/chillingo/crystal/utils/Size;

    invoke-direct {v2, v1, v0}, Lcom/chillingo/crystal/utils/Size;-><init>(II)V

    return-object v2
.end method

.method public viewSize(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->width(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->height(Landroid/content/Context;)I

    move-result v0

    new-instance v2, Lcom/chillingo/crystal/utils/Size;

    invoke-direct {v2, v1, v0}, Lcom/chillingo/crystal/utils/Size;-><init>(II)V

    return-object v2
.end method
