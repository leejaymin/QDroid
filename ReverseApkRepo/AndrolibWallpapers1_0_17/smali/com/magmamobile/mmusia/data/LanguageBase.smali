.class public Lcom/magmamobile/mmusia/data/LanguageBase;
.super Ljava/lang/Object;
.source "LanguageBase.java"


# static fields
.field public static DIALOG_LOADING:Ljava/lang/String;

.field public static DIALOG_PLEASEWAIT:Ljava/lang/String;

.field public static DIALOG_SETTINGS_CHKTEXT:Ljava/lang/String;

.field public static DIALOG_SETTINGS_CLOSE:Ljava/lang/String;

.field public static DIALOG_SETTINGS_TITLE:Ljava/lang/String;

.field public static LatestLang:Ljava/lang/String;

.field public static MARKET_NOT_FOUND:Ljava/lang/String;

.field public static MENU_QUIT:Ljava/lang/String;

.field public static MENU_REFRESH:Ljava/lang/String;

.field public static MENU_SETTINGS:Ljava/lang/String;

.field public static NOTIF_NEWS_DESC:Ljava/lang/String;

.field public static NOTIF_NEWS_TITLE:Ljava/lang/String;

.field public static NOTIF_UPDATE_DESC:Ljava/lang/String;

.field public static NOTIF_UPDATE_TITLE:Ljava/lang/String;

.field public static TAB_NEWS:Ljava/lang/String;

.field public static TAB_UPDATES:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/magmamobile/mmusia/data/LanguageBase;->setLanguageEN()V

    .line 27
    return-void
.end method

.method public static reloadIfNeeded()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_QUIT:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "RELOADING LANGUAGE STRINGS !!!"

    invoke-static {v0}, Lcom/magmamobile/mmusia/MCommon;->Log_w(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/magmamobile/mmusia/data/LanguageBase;->setLanguageEN()V

    .line 36
    :cond_0
    return-void
.end method

.method public static setLanguageEN()V
    .locals 3

    .prologue
    const-string v2, "Settings"

    const-string v1, "Close"

    .line 39
    const-string v0, "Close"

    sput-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_QUIT:Ljava/lang/String;

    .line 40
    const-string v0, "Settings"

    sput-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_SETTINGS:Ljava/lang/String;

    .line 41
    const-string v0, "Refresh"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_REFRESH:Ljava/lang/String;

    .line 42
    const-string v0, "Loading..."

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_LOADING:Ljava/lang/String;

    .line 43
    const-string v0, "Please wait..."

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_PLEASEWAIT:Ljava/lang/String;

    .line 44
    const-string v0, "Settings"

    sput-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_TITLE:Ljava/lang/String;

    .line 45
    const-string v0, "Enable notifications"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_CHKTEXT:Ljava/lang/String;

    .line 46
    const-string v0, "Close"

    sput-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_CLOSE:Ljava/lang/String;

    .line 47
    const-string v0, "Updates"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_UPDATES:Ljava/lang/String;

    .line 48
    const-string v0, "Magma News"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_NEWS:Ljava/lang/String;

    .line 49
    const-string v0, "Update available"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_UPDATE_TITLE:Ljava/lang/String;

    .line 50
    const-string v0, "A new update is available"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_UPDATE_DESC:Ljava/lang/String;

    .line 51
    const-string v0, "Magma Mobile News"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_NEWS_TITLE:Ljava/lang/String;

    .line 52
    const-string v0, "Click here to see latest news"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_NEWS_DESC:Ljava/lang/String;

    .line 53
    const-string v0, "Market not found"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->MARKET_NOT_FOUND:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static setLanguageFR()V
    .locals 3

    .prologue
    const-string v2, "Options"

    const-string v1, "Fermer"

    .line 57
    invoke-static {}, Lcom/magmamobile/mmusia/data/LanguageBase;->setLanguageEN()V

    .line 58
    const-string v0, "Fermer"

    sput-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_QUIT:Ljava/lang/String;

    .line 59
    const-string v0, "Options"

    sput-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_SETTINGS:Ljava/lang/String;

    .line 60
    const-string v0, "Actualiser"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_REFRESH:Ljava/lang/String;

    .line 61
    const-string v0, "Veuillez patienter..."

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_PLEASEWAIT:Ljava/lang/String;

    .line 62
    const-string v0, "Chargement..."

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_LOADING:Ljava/lang/String;

    .line 63
    const-string v0, "Options"

    sput-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_TITLE:Ljava/lang/String;

    .line 64
    const-string v0, "Activer les notifications"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_CHKTEXT:Ljava/lang/String;

    .line 65
    const-string v0, "Fermer"

    sput-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_CLOSE:Ljava/lang/String;

    .line 66
    const-string v0, "Mises \u00e0 jour"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_UPDATES:Ljava/lang/String;

    .line 67
    const-string v0, "Actus Magma Mobile"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_NEWS:Ljava/lang/String;

    .line 68
    const-string v0, "Mise \u00e0 jour disponible"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_UPDATE_TITLE:Ljava/lang/String;

    .line 69
    const-string v0, "Une mise \u00e0 jour est disponible"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_UPDATE_DESC:Ljava/lang/String;

    .line 70
    const-string v0, "Magma Mobile Actu"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_NEWS_TITLE:Ljava/lang/String;

    .line 71
    const-string v0, "Nouvelle actu Magma Mobile. Cliquez ici pour la consulter"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_NEWS_DESC:Ljava/lang/String;

    .line 72
    const-string v0, "Market introuvable"

    sput-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->MARKET_NOT_FOUND:Ljava/lang/String;

    .line 73
    return-void
.end method
