.class public Lcom/nix/apps/androlib/wallpapers/modCommon;
.super Ljava/lang/Object;
.source "modCommon.java"


# static fields
.field public static final API_URL_CATEGORIES:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?getcats=1"

.field public static final API_URL_FAVSWALLPAPER:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?fav=1"

.field public static final API_URL_LASTWALLPAPERS:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx"

.field public static final API_URL_MYFAVSWALLPAPER:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?myfavs=1"

.field public static final API_URL_RANDOM:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?random=1"

.field public static final API_URL_RATEWALLPAPER:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?vote=1"

.field public static final API_URL_SEARCH:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?r="

.field public static final API_URL_SEARCHBYAUTHOR:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?mid="

.field public static final API_URL_SEARCHBYCAT:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?catid="

.field public static final API_URL_TOPFAVS:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?bestfavs=1"

.field public static final API_URL_TOPINSTALLS:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?bestinstalls=1"

.field public static final API_URL_TOPRATED:Ljava/lang/String; = "http://api.androlib.com/api/wallapi.ashx?best=1"

.field public static Categories:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/category;",
            ">;"
        }
    .end annotation
.end field

.field public static final GGADS_APP_NAME:Ljava/lang/String; = "AndroLib Wallpapers"

.field public static final GGADS_CHANNEL_ID:Ljava/lang/String; = "0835371735"

.field public static final GGADS_CLIENT_ID:Ljava/lang/String; = "ca-mb-app-pub-6807707624701585"

.field public static final GGADS_COMPANY_NAME:Ljava/lang/String; = "Magma Mobile"

.field public static GGADS_KEYWORDS:Ljava/lang/String;

.field public static GGADS_TESTING:Z

.field public static GUID:Ljava/lang/String;

.field public static currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

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

.field public static mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

.field private static options:Landroid/content/SharedPreferences;

.field private static resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    sput-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    .line 57
    sput-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    .line 59
    sput-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMediumImage:Landroid/graphics/Bitmap;

    .line 60
    sput-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 77
    const-string v0, "wallpapers+backgrounds"

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_KEYWORDS:Ljava/lang/String;

    .line 79
    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_TESTING:Z

    .line 84
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->dhttp:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    .line 315
    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z

    .line 316
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

.method public static addFavWallpaper(Ljava/lang/String;)V
    .locals 5
    .parameter "WallPaperID"

    .prologue
    const/4 v4, 0x0

    .line 175
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    .line 176
    .local v0, http:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;
    const-string v1, "http://api.androlib.com/api/wallapi.ashx?fav=1"

    .line 177
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

    .line 178
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

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&add=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1, v4, v4}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetHTML(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static alphaNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 208
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
    .line 213
    new-instance p0, Ljava/io/File;

    .end local p0
    const-string v0, "/sdcard"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local p0, sdRoot:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    .end local p0           #sdRoot:Ljava/io/File;
    if-eqz p0, :cond_1

    .line 216
    new-instance p0, Ljava/io/File;

    const-string v0, "/sdcard/AndroLibWallpapers"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local p0, wallDir:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 223
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

    .line 224
    .local p0, aURL:Ljava/net/URL;
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 225
    .local p1, conn:Ljava/net/URLConnection;
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 226
    new-instance p0, Ljava/io/BufferedInputStream;

    .end local p0           #aURL:Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .end local p1           #conn:Ljava/net/URLConnection;
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local p0, bis:Ljava/io/BufferedInputStream;
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 228
    .local p1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
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

    .line 232
    .local p0, out:Ljava/io/FileOutputStream;
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 234
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

    .line 238
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    const/4 p0, 0x0

    .line 247
    .local p0, bm:Landroid/graphics/Bitmap;
    const/4 p0, 0x1

    .line 257
    .end local p0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return p0

    .line 240
    :catch_0
    move-exception p0

    .line 241
    .local p0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
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

    .line 244
    const/4 p0, 0x0

    goto :goto_0

    .line 248
    :catch_1
    move-exception p0

    .line 249
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

    .line 251
    const/4 p0, 0x0

    goto :goto_0

    .line 255
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

    .line 257
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static forceLocate(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 313
    return-void
.end method

.method public static generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 125
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 126
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 137
    .end local v1           #cur:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 131
    .restart local v1       #cur:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 133
    .end local v1           #cur:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 134
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 139
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "stream"
    .parameter "charset"

    .prologue
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v4, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 151
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 153
    .local v0, buffer:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #cur:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 154
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

    .line 157
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #cur:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 158
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    :try_start_0
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 197
    .local v2, pm:Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, pn:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 199
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #pn:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 200
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 201
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 203
    const-string v4, ""

    goto :goto_0
.end method

.method public static getPhoneID2()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v7, "GUID"

    const-string v6, ""

    .line 89
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, deviceId:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 91
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 94
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v4, "GUID"

    const-string v4, ""

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 97
    .local v2, newID:Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 99
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 100
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "GUID"

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #newID:Ljava/util/UUID;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GUID:Ljava/lang/String;

    .line 118
    :goto_1
    return-object v4

    .line 104
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

    .line 118
    goto :goto_1
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 292
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initLanguage()V
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->options:Landroid/content/SharedPreferences;

    .line 287
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->resources:Landroid/content/res/Resources;

    .line 289
    return-void
.end method

.method public static isSDKAPI4Mini()Z
    .locals 4

    .prologue
    .line 319
    sget-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4MiniTested:Z

    if-eqz v2, :cond_0

    .line 321
    sget-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z

    .line 338
    :goto_0
    return v2

    .line 324
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, SDKNum:I
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4MiniTested:Z

    .line 327
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 329
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0           #SDKNum:I
    :goto_1
    sget-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z

    goto :goto_0

    .line 331
    .restart local v0       #SDKNum:I
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mIsSDK4Mini:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 333
    .end local v0           #SDKNum:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 335
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 336
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

    .line 165
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    .line 166
    .local v0, http:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;
    const-string v1, "http://api.androlib.com/api/wallapi.ashx?vote=1"

    .line 167
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

    .line 168
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

    .line 169
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

    .line 170
    invoke-virtual {v0, v1, v4, v4}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetHTML(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static removeFavWallpaper(Ljava/lang/String;)V
    .locals 5
    .parameter "WallPaperID"

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;-><init>()V

    .line 185
    .local v0, http:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;
    const-string v1, "http://api.androlib.com/api/wallapi.ashx?fav=1"

    .line 186
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

    .line 187
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

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&remove=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1, v4, v4}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetHTML(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    return-void
.end method
