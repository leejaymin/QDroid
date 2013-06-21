.class public Lcom/nix/apps/androlib/wallpapers/modCommon;
.super Ljava/lang/Object;
.source "modCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;
    }
.end annotation


# static fields
.field public static API_URL_CATEGORIES:Ljava/lang/String; = null

.field public static API_URL_FAVSWALLPAPER:Ljava/lang/String; = null

.field public static API_URL_LASTWALLPAPERS:Ljava/lang/String; = null

.field public static API_URL_MYFAVSWALLPAPER:Ljava/lang/String; = null

.field public static API_URL_RANDOM:Ljava/lang/String; = null

.field public static API_URL_RATEWALLPAPER:Ljava/lang/String; = null

.field public static API_URL_SEARCH:Ljava/lang/String; = null

.field public static API_URL_SEARCHBYAUTHOR:Ljava/lang/String; = null

.field public static API_URL_SEARCHBYCAT:Ljava/lang/String; = null

.field public static API_URL_TOPFAVS:Ljava/lang/String; = null

.field public static API_URL_TOPINSTALLS:Ljava/lang/String; = null

.field public static API_URL_TOPRATED:Ljava/lang/String; = null

.field public static Categories:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public static GUID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Wallpapers"

.field public static final USE_DEBUG:Z

.field public static currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

.field public static defaultMediumImage:Landroid/graphics/Bitmap;

.field public static defaultMiniImage:Landroid/graphics/Bitmap;

.field public static dhttp:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

.field public static dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

.field public static drawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static mContextGlobal:Landroid/content/Context;

.field private static mIsSDK4Mini:Z

.field private static mIsSDK4MiniTested:Z

.field private static options:Landroid/content/SharedPreferences;

.field private static resources:Landroid/content/res/Resources;

.field public static screenHeight:I

.field public static screenWidth:I

.field private static urlBase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    sput v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenHeight:I

    .line 54
    sput v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenWidth:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.androlib.com/api/wallapi2.ashx?w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&getcats=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_CATEGORIES:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCH:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&catid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCHBYCAT:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCHBYAUTHOR:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&best=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPRATED:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_LASTWALLPAPERS:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&vote=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_RATEWALLPAPER:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&fav=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_FAVSWALLPAPER:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&myfavs=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_MYFAVSWALLPAPER:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&random=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_RANDOM:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&bestfavs=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPFAVS:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&bestinstalls=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPINSTALLS:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    .line 104
    sput-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    .line 106
    sput-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMediumImage:Landroid/graphics/Bitmap;

    .line 107
    sput-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    .line 108
    const-string v0, ""

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->dhttp:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    .line 352
    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z

    .line 353
    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4MiniTested:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log_d(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 42
    return-void
.end method

.method public static Log_d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 47
    return-void
.end method

.method public static Log_e(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 45
    return-void
.end method

.method public static Log_e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 50
    return-void
.end method

.method public static Log_i(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 43
    return-void
.end method

.method public static Log_i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 48
    return-void
.end method

.method public static Log_v(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 46
    return-void
.end method

.method public static Log_v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 51
    return-void
.end method

.method public static Log_w(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 44
    return-void
.end method

.method public static Log_w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 49
    return-void
.end method

.method public static addFavWallpaper(Ljava/lang/String;)V
    .locals 5
    .parameter "WallPaperID"

    .prologue
    const/4 v4, 0x0

    .line 211
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    .line 212
    .local v0, http:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_FAVSWALLPAPER:Ljava/lang/String;

    .line 213
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&di="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&wid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&add=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1, v4, v4}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetHTML(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    return-void
.end method

.method public static alphaNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 244
    const-string v0, "[^a-zA-Z0-9 ]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadwallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "url"
    .parameter "ID"
    .parameter "Name"

    .prologue
    .line 249
    new-instance p0, Ljava/io/File;

    .end local p0
    const-string v0, "/sdcard"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local p0, sdRoot:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    .end local p0           #sdRoot:Ljava/io/File;
    if-eqz p0, :cond_1

    .line 252
    new-instance p0, Ljava/io/File;

    const-string v0, "/sdcard/AndroLibWallpapers"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local p0, wallDir:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 259
    :cond_0
    :try_start_0
    new-instance p0, Ljava/net/URL;

    .end local p0           #wallDir:Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "&down=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 260
    .local p0, aURL:Ljava/net/URL;
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 261
    .local p1, conn:Ljava/net/URLConnection;
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 262
    new-instance p0, Ljava/io/BufferedInputStream;

    .end local p0           #aURL:Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .end local p1           #conn:Ljava/net/URLConnection;
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 263
    .local p0, bis:Ljava/io/BufferedInputStream;
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 264
    .local p1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    .end local p0           #bis:Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/AndroLibWallpapers/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->alphaNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .end local p3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->alphaNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".jpg"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 268
    .local p0, out:Ljava/io/FileOutputStream;
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 270
    sget-object p1, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    .end local p1           #bm:Landroid/graphics/Bitmap;
    check-cast p1, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p2, p1, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    sget-object p1, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    check-cast p1, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p1, p1, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 p3, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Wallpaper saved on your SD Card at this location :\n/sdcard/AndroLibWallpapers/"

    invoke-static {p1, p3, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    const/4 p0, 0x0

    .line 283
    .local p0, bm:Landroid/graphics/Bitmap;
    const/4 p0, 0x1

    .line 293
    .end local p0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return p0

    .line 276
    :catch_0
    move-exception p0

    .line 277
    .local p0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    sget-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    .end local p0           #e:Ljava/lang/Exception;
    check-cast p0, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    sget-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    const/4 p3, 0x0

    const/4 v0, 0x0

    const-string v1, "### ERROR ### Error while downloading wallpaper.\nTry again.\nDo you have a SDCard on your phone ?"

    invoke-static {p0, p2, p3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 280
    const/4 p0, 0x0

    goto :goto_0

    .line 284
    :catch_1
    move-exception p0

    .line 285
    .local p0, e:Ljava/io/IOException;
    sget-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    .end local p0           #e:Ljava/io/IOException;
    check-cast p0, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    sget-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    const/4 p3, 0x0

    const/4 v0, 0x0

    const-string v1, "### ERROR ### Error while downloading wallpaper\nTry again."

    invoke-static {p0, p2, p3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    const/4 p0, 0x0

    goto :goto_0

    .line 291
    .local p1, url:Ljava/lang/String;
    .restart local p2
    .restart local p3
    :cond_1
    sget-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    .end local p1           #url:Ljava/lang/String;
    sget-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    const/4 p3, 0x0

    const/4 v0, 0x0

    const-string v1, "No SD CARD found to download the wallpaper"

    .end local p2
    .end local p3
    invoke-static {p0, p2, p3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static forceLocate(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 350
    return-void
.end method

.method public static generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 161
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 162
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 163
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 173
    .end local v1           #cur:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 167
    .restart local v1       #cur:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 169
    .end local v1           #cur:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 170
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 174
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 175
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "stream"
    .parameter "charset"

    .prologue
    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v4, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 187
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 189
    .local v0, buffer:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #cur:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 190
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    .restart local v1       #cur:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #cur:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 194
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 232
    :try_start_0
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 233
    .local v2, pm:Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, pn:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 235
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #pn:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 236
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 237
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 239
    const-string v4, ""

    goto :goto_0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const-string v7, "GUID"

    const-string v6, ""

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, deviceId:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 386
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 389
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v4, "GUID"

    const-string v4, ""

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 392
    .local v2, newID:Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 394
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 395
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "GUID"

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #newID:Ljava/util/UUID;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 413
    :goto_1
    return-object v4

    .line 399
    .restart local v3       #settings:Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "GUID"

    const-string v4, ""

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    goto :goto_0

    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_2
    move-object v4, v0

    .line 413
    goto :goto_1
.end method

.method public static getPhoneID2()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v7, "GUID"

    const-string v6, ""

    .line 125
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, deviceId:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 127
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 130
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v4, "GUID"

    const-string v4, ""

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 133
    .local v2, newID:Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 135
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "GUID"

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #newID:Ljava/util/UUID;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 154
    :goto_1
    return-object v4

    .line 140
    .restart local v3       #settings:Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "GUID"

    const-string v4, ""

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    goto :goto_0

    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_2
    move-object v4, v0

    .line 154
    goto :goto_1
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 329
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initLanguage()V
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->options:Landroid/content/SharedPreferences;

    .line 324
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->resources:Landroid/content/res/Resources;

    .line 326
    return-void
.end method

.method public static isSDKAPI4Mini()Z
    .locals 4

    .prologue
    .line 356
    sget-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4MiniTested:Z

    if-eqz v2, :cond_0

    .line 358
    sget-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z

    .line 375
    :goto_0
    return v2

    .line 361
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, SDKNum:I
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4MiniTested:Z

    .line 364
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 366
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0           #SDKNum:I
    :goto_1
    sget-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z

    goto :goto_0

    .line 368
    .restart local v0       #SDKNum:I
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 370
    .end local v0           #SDKNum:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 372
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 373
    const-string v2, "WALLPAPERS"

    const-string v3, "SDK VERSION CHECK ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static rateWallpaper(Ljava/lang/String;I)V
    .locals 5
    .parameter "WallPaperID"
    .parameter "Rating"

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    .line 202
    .local v0, http:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_RATEWALLPAPER:Ljava/lang/String;

    .line 203
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&di="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&wid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&rating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1, v4, v4}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetHTML(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    return-void
.end method

.method public static removeFavWallpaper(Ljava/lang/String;)V
    .locals 5
    .parameter "WallPaperID"

    .prologue
    const/4 v4, 0x0

    .line 220
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    .line 221
    .local v0, http:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_FAVSWALLPAPER:Ljava/lang/String;

    .line 222
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&di="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&wid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&remove=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1, v4, v4}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetHTML(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    return-void
.end method

.method public static setUrls(II)V
    .locals 2
    .parameter "_width"
    .parameter "_height"

    .prologue
    .line 72
    if-le p0, p1, :cond_0

    .line 74
    sput p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenHeight:I

    .line 75
    sput p1, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenWidth:I

    .line 81
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.androlib.com/api/wallapi2.ashx?w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&getcats=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_CATEGORIES:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCH:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&catid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCHBYCAT:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCHBYAUTHOR:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&best=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPRATED:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_LASTWALLPAPERS:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&vote=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_RATEWALLPAPER:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&fav=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_FAVSWALLPAPER:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&myfavs=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_MYFAVSWALLPAPER:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&random=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_RANDOM:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&bestfavs=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPFAVS:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->urlBase:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&bestinstalls=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPINSTALLS:Ljava/lang/String;

    .line 94
    return-void

    .line 77
    :cond_0
    sput p1, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenHeight:I

    .line 78
    sput p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenWidth:I

    goto/16 :goto_0
.end method

.method public static stripHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "htmlText"

    .prologue
    .line 379
    const-string v0, "(<[^>]+>)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
