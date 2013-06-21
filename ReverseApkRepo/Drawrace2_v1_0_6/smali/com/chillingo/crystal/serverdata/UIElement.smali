.class public Lcom/chillingo/crystal/serverdata/UIElement;
.super Ljava/lang/Object;


# static fields
.field private static final KUIDescElementType:Ljava/lang/String; = "type"

.field public static final UI_ELEMENT_KEY_DEPRESSED_BUTTON:Ljava/lang/String; = "depressedbutton"

.field public static final UI_ELEMENT_KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final UI_ELEMENT_KEY_FORM_ID:Ljava/lang/String; = "formid"

.field public static final UI_ELEMENT_KEY_HREF:Ljava/lang/String; = "href"

.field public static final UI_ELEMENT_KEY_ITEM_REPLACEMENT:Ljava/lang/String; = "replace"

.field public static final UI_ELEMENT_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final UI_ELEMENT_KEY_USAGE:Ljava/lang/String; = "usage"

.field public static final UI_ELEMENT_KEY_YES_NO_CONFIRMATION:Ljava/lang/String; = "yesnoconfirm"

.field public static final UI_ELEMENT_VALUE_PASSWORD_INPUT:Ljava/lang/String; = "form_passwordinput"

.field public static final UI_ELEMENT_VALUE_SWITCH:Ljava/lang/String; = "form_switch"

.field public static final UI_ELEMENT_VALUE_SWITCH_PICTURE_TWO_LINE:Ljava/lang/String; = "form_switchpicturetwoline"

.field public static final UI_ELEMENT_VALUE_SWITCH_PICTURE_TWO_LINE_DISC:Ljava/lang/String; = "form_switchpicturetwoline_disc"

.field public static final UI_ELEMENT_VALUE_SWITCH_WITH_IMAGE:Ljava/lang/String; = "form_switchwithimage"

.field public static final UI_ELEMENT_VALUE_TEXT_INPUT:Ljava/lang/String; = "form_textinput"


# instance fields
.field _data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public boolForField(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public depressedButton()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "depressedbutton"

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/serverdata/UIElement;->hasField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    const-string v1, "depressedbutton"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public flags()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    const-string v1, "formid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public hasValueForField(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public href()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public intForField(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public objectForField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public stringForField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "usage"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/serverdata/UIElement;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIElement;->_data:Lorg/json/JSONObject;

    const-string v1, "usage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public yesNoConfirmation()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "yesnoconfirm"

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/serverdata/UIElement;->hasField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "yesnoconfirm"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/serverdata/UIElement;->stringForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
