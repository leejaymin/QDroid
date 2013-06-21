.class public Lcom/chillingo/crystal/serverdata/UIDescription;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/serverdata/UIDescription$UIType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KUIDescCacheControl:Ljava/lang/String; = "cache"

.field private static final KUIDescCacheControlInitial:Ljava/lang/String; = "basedata"

.field private static final KUIDescCacheControlMutable:Ljava/lang/String; = "mutable"

.field private static final KUIDescCacheControlNoCache:Ljava/lang/String; = "no_cache"

.field private static final KUIDescCacheControlSwitchedUser:Ljava/lang/String; = "switched_user"

.field private static final KUIDescCacheControlUpdateGlobalNav:Ljava/lang/String; = "update_global_nav"

.field private static final KUIDescCacheControlUpdatePlayerData:Ljava/lang/String; = "update_user_data"

.field private static final KUIDescElementHref:Ljava/lang/String; = "href"

.field private static final KUIDescElementPrefetch:Ljava/lang/String; = "prefetch"

.field private static final KUIDescElementRedirect:Ljava/lang/String; = "redirect"

.field private static final KUIDescElementType:Ljava/lang/String; = "type"

.field private static final KUIDescElementTypeImage:Ljava/lang/String; = "image"

.field private static final KUIDescGroupItems:Ljava/lang/String; = "items"

.field private static final KUIDescGroupTitle:Ljava/lang/String; = "title"

.field private static final KUIDescUITypeGrouped:Ljava/lang/String; = "groupedtable"

.field private static final KUIDescUITypePlain:Ljava/lang/String; = "plaintable"

.field private static final KUIDescUITypeTopLevel:Ljava/lang/String; = "toplevel"

.field private static final KUIDescViewGlobalNavUi:Ljava/lang/String; = "uidata"

.field private static final KUIDescViewGroups:Ljava/lang/String; = "groups"

.field private static final KUIDescViewTabs:Ljava/lang/String; = "tabs"

.field private static final KUIDescViewTitle:Ljava/lang/String; = "title"

.field private static final KUIDescViewUiType:Ljava/lang/String; = "uitype"

.field private static final KUrlSchemeActivateUi:Ljava/lang/String; = "crystal://activateui"

.field private static final KUrlSchemeActivateUiAsGuest:Ljava/lang/String; = "crystal://activateuiasguest"

.field private static final KUrlSchemeActivateUiAsGuestAtLocation:Ljava/lang/String; = "crystal-activateuiasguest://"

.field private static final KUrlSchemeActivateUiAtLocation:Ljava/lang/String; = "crystal-activateui://"

.field private static TAG:Ljava/lang/String; = null

.field public static final UI_DESCRIPTION_ELEMENT_ID_BACK_BUTTON:Ljava/lang/String; = "backbutton"

.field public static final UI_DESCRIPTION_ELEMENT_ID_CLOSE_BUTTON:Ljava/lang/String; = "closebutton"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_BUTTON:Ljava/lang/String; = "button"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_DIALOG_ONE_BUTTON:Ljava/lang/String; = "dialog_onebutton"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_DIALOG_TWO_BUTTON:Ljava/lang/String; = "dialog_twobutton"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_MULTI_LINE_TEXT:Ljava/lang/String; = "multilinetext"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_ONE_LINE_TEXT:Ljava/lang/String; = "onelinetext"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_ONLINE_STATUS:Ljava/lang/String; = "onlinestatus"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_STRETCHY_TEXT:Ljava/lang/String; = "stretchytext"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_SWITCH:Ljava/lang/String; = "switch"

.field public static final UI_DESCRIPTION_ELEMENT_TYPE_TAB:Ljava/lang/String; = "tab"

.field public static final UI_DESCRIPTION_FILE_GLOBAL_NAV:Ljava/lang/String; = "https://chillingo-crystal.appspot.com/crystal/globalnav.cuid"

.field public static final UI_DESCRIPTION_FILE_LOG_OUT:Ljava/lang/String; = "https://chillingo-crystal.appspot.com/crystal/logout"

.field public static final UI_DESCRIPTION_FILE_SPLASH:Ljava/lang/String; = "https://chillingo-crystal.appspot.com/crystal/splash.cuid"

.field public static final UI_DESCRIPTION_KEY_BODY:Ljava/lang/String; = "body"

.field public static final UI_DESCRIPTION_KEY_BUTTON_TEXT_1:Ljava/lang/String; = "buttontext1"

.field public static final UI_DESCRIPTION_KEY_BUTTON_TEXT_2:Ljava/lang/String; = "buttontext2"

.field public static final UI_DESCRIPTION_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final UI_DESCRIPTION_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final UI_DESCRIPTION_KEY_UI_DATA:Ljava/lang/String; = "uidata"

.field public static final UI_DESCRIPTION_KEY_UI_TYPE:Ljava/lang/String; = "uitype"

.field public static final UI_DESCRIPTION_URL_BUY_VIRTUAL_CURRENCY:Ljava/lang/String; = "crystal://buyvirtualcurrency"

.field public static final UI_DESCRIPTION_URL_CHALLENGE_START:Ljava/lang/String; = "crystal://startchallenge"

.field public static final UI_DESCRIPTION_URL_EARN_VC:Ljava/lang/String; = "crystal-earnvc"

.field public static final UI_DESCRIPTION_URL_FACEBOOK_LOGIN:Ljava/lang/String; = "crystal://facebooklogin"

.field public static final UI_DESCRIPTION_URL_FACEBOOK_LOGOUT:Ljava/lang/String; = "crystal://facebooklogout"

.field public static final UI_DESCRIPTION_URL_FACEBOOK_PUBLISH:Ljava/lang/String; = "crystal://facebookpublish"

.field public static final UI_DESCRIPTION_URL_STRING_ACTIVATE_UI:Ljava/lang/String; = "crystal://activateui"

.field public static final UI_DESCRIPTION_URL_STRING_DEACTIVATE_UI:Ljava/lang/String; = "crystal://deactivateui"

.field public static final UI_DESCRIPTION_URL_SUGGEST_SMS:Ljava/lang/String; = "suggest_via_sms.cuid?suggest=1"

.field public static final UI_DESCRIPTION_URL_TWIITER_LOGOUT:Ljava/lang/String; = "crystal://twitterlogout"

.field public static final UI_DESCRIPTION_URL_TWITTER_LOGIN:Ljava/lang/String; = "crystal://twitterlogin"

.field public static final UI_DESCRIPTION_URL_TWITTER_PIN:Ljava/lang/String; = "crystal://twitterpin"

.field public static final UI_DESCRIPTION_URL_YOUTUBE:Ljava/lang/String; = "crystal-http://www.youtube.com/watch?v="

.field public static final UI_DESCRIPTION_URL_YOUTUBE_V2:Ljava/lang/String; = "crystal-uiwebview://www.youtube.com/v/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/chillingo/crystal/serverdata/UIDescription;->$assertionsDisabled:Z

    const-string v0, "UIDescription"

    sput-object v0, Lcom/chillingo/crystal/serverdata/UIDescription;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->setUrl(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iput p3, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_subPriority:I

    return-void
.end method

.method private getItemsInGroup(I)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private setItemsInGroup(ILorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static uiDescriptionForElement(Ljava/util/Map;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/chillingo/crystal/serverdata/UIDescription;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uitype"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uidata"

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    const/4 v3, 0x0

    sget-object v4, Lcom/chillingo/crystal/serverdata/FetchPriority;->Unknown:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-static {v2}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static uiDescriptionForInternetConnectionError()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 3

    const-string v0, "Internet Unavailable"

    const-string v1, "You are not currently connected to the Internet.\n\nPlease try again later"

    const-string v2, "OK"

    invoke-static {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    return-object v0
.end method

.method public static uiDescriptionForOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "buttontext1"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "dialog_onebutton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dialog_onebutton"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForElement(Ljava/util/Map;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    return-object v0
.end method

.method public static uiDescriptionForPopup(Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "popup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "popup"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForElement(Ljava/util/Map;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    return-object v0
.end method

.method public static uiDescriptionForTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "buttontext1"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "buttontext2"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "dialog_twobutton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dialog_twobutton"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForElement(Ljava/util/Map;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBackbar()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "back_bar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    const-string v4, "back_bar"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "backtext"

    const-string v4, "Back"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "items"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public containsActivateUi()Z
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v1

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v6, "href"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "crystal://activateui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "crystal://activateuiasguest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "crystal://activateui"

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "crystal://activateuiasguest"

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    if-gez v6, :cond_6

    if-ltz v7, :cond_4

    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsUiElementOfType(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v1

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public doNotCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_doNotCache:Z

    return v0
.end method

.method public elementForItemInGroup(II)Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/chillingo/crystal/serverdata/UIDescription;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->getItemsInGroup(I)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "Crystal"

    const-string v3, "UIDescription - error getting element for item in group"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public elementForTab(I)Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/chillingo/crystal/serverdata/UIDescription;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "tabs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "Crystal"

    const-string v3, "UIDescription - error getting element for tab"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public elementTypeForItemInGroup(II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/chillingo/crystal/serverdata/UIDescription;->elementForItemInGroup(II)Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flatUIElement()Lorg/json/JSONObject;
    .locals 4

    sget-boolean v0, Lcom/chillingo/crystal/serverdata/UIDescription;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "uidata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/chillingo/crystal/serverdata/UIDescription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flatUIElement - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBackBar()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "back_bar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public insertElementInGroup(Lcom/chillingo/crystal/serverdata/UIElement;II)V
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/chillingo/crystal/serverdata/UIDescription;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/chillingo/crystal/serverdata/UIDescription;->getItemsInGroup(I)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    if-ne v0, p3, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/UIElement;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v4}, Lcom/chillingo/crystal/serverdata/UIDescription;->setItemsInGroup(ILorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v1, "Crystal"

    const-string v2, "Error adding element to group"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isCacheControlInitial()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "basedata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCacheControlMutable()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "mutable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlNoCache()Z

    move-result v0

    goto :goto_0
.end method

.method public isCacheControlNoCache()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "no_cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCacheControlSwitchedUser()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "switched_user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCacheControlUpdateGlobalNav()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "update_global_nav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCacheControlUpdatePlayerData()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "update_user_data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCacheControlViewStackUseRedirect()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "stack_use_redirect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "UIDescription"

    const-string v3, "No stack use redirect flag, ah well these things happen"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public itemsInGroup(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->getItemsInGroup(I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Crystal"

    const-string v3, "UIDescription - error getting number of items in group"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public numberOfGroups()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Crystal"

    const-string v3, "UIDescription - error reading number of groups"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public numberOfTabs()I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/chillingo/crystal/serverdata/UIDescription;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "tabs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "Crystal"

    const-string v3, "UIDescription - error getting number of tabs"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected prefetchImage(Ljava/lang/String;ILcom/chillingo/crystal/http/FetchInterface;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "blank"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, p1}, Lcom/chillingo/crystal/http/FetchInterface;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_freshThisSession:Z

    if-nez v3, :cond_3

    :cond_0
    if-eqz v2, :cond_2

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-interface {p3, v2, v0, p2}, Lcom/chillingo/crystal/http/FetchInterface;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :goto_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    new-instance v0, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-direct {v0, p1}, Lcom/chillingo/crystal/serverdata/ImageData;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-interface {p3, v0, v2, p2}, Lcom/chillingo/crystal/http/FetchInterface;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIDescription - Found prefetch element: url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - got a fresh copy already"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public queuePrefetchImageUrls(Lcom/chillingo/crystal/http/FetchInterface;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/http/FetchInterface;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "items"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v1

    move v3, v1

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v9, "banner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "image"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v7, v3, p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->prefetchImage(Ljava/lang/String;ILcom/chillingo/crystal/http/FetchInterface;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v4

    goto :goto_0
.end method

.method public queuePrefetchItemsWithBasePriority(Lcom/chillingo/crystal/serverdata/FetchPriority;Lcom/chillingo/crystal/http/FetchInterface;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v6, "prefetch"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "href"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-ltz v6, :cond_4

    if-eqz v5, :cond_4

    invoke-interface {p2, v5}, Lcom/chillingo/crystal/http/FetchInterface;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-boolean v8, v7, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_freshThisSession:Z

    if-nez v8, :cond_8

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {p2, v7, p1, v6}, Lcom/chillingo/crystal/http/FetchInterface;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_2

    :cond_7
    new-instance v7, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-direct {v7, v5, p1, v6}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-interface {p2, v7, p1, v6}, Lcom/chillingo/crystal/http/FetchInterface;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const-string v6, "Crystal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UIDescription - Found prefetch element: url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - got a fresh copy already"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public removeBackbar()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/UIDescription;->hasBackBar()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->removeElementForItemInGroup(II)V

    :cond_0
    return-void
.end method

.method public removeElementForItemInGroup(II)V
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->getItemsInGroup(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    if-eq v0, p2, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->setItemsInGroup(ILorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "UIDescription - error removing item from group"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeElementOfType(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v0, Lcom/chillingo/crystal/serverdata/UIDescription;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/chillingo/crystal/serverdata/UIDescription;->getItemsInGroup(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v4, v3}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/chillingo/crystal/serverdata/UIElement;->type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->setItemsInGroup(ILorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_3

    const-string v1, "Crystal"

    const-string v2, "Error removing element to group"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_3

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error removing element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public removeItemWithFormId(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->getItemsInGroup(I)Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "formid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "formid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->removeElementForItemInGroup(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public singleElement()Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "uidata"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v0, v2}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public titleForGroup(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Crystal"

    const-string v3, "UIDescription - error getting title for group"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    const-string v0, "null data dictionary"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public uiElementForRedirect()Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "items"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_2

    move v2, v1

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v7, "redirect"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v0, v6}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_0
.end method

.method public uiType()Lcom/chillingo/crystal/serverdata/UIDescription$UIType;
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->Unknown:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "uitype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupedtable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->GroupedTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    goto :goto_0

    :cond_1
    const-string v1, "plaintable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->PlainTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    goto :goto_0

    :cond_2
    const-string v1, "toplevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->TopLevel:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->Unknown:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const-string v1, "Crystal"

    const-string v2, "UIDescrption - error reading UIType"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    sget-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->Unknown:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    goto :goto_0
.end method

.method public viewTitle()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/UIDescription;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Crystal"

    const-string v3, "UIDescription - error reading view title"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
