.class public Lat/hochi/wdtvremote/controler/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field static preferences:Ljava/lang/String;

.field public static serverIpAdress:Ljava/lang/String;

.field public static serverPassword:Ljava/lang/String;

.field public static serverPort:Ljava/lang/String;

.field public static serverUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "mywdlxtvsettings"

    sput-object v0, Lat/hochi/wdtvremote/controler/Config;->preferences:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 16
    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->preferences:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "serverIp"

    const-string v2, "192.168.1.120"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    .line 18
    const-string v1, "serverPort"

    const-string v2, "23"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    .line 19
    const-string v1, "serverUsername"

    const-string v2, "root"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lat/hochi/wdtvremote/controler/Config;->serverUsername:Ljava/lang/String;

    .line 20
    const-string v1, "serverPassword"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lat/hochi/wdtvremote/controler/Config;->serverPassword:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static save(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 24
    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->preferences:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "serverIp"

    sget-object v2, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    const-string v1, "serverPort"

    sget-object v2, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    const-string v1, "serverUsername"

    sget-object v2, Lat/hochi/wdtvremote/controler/Config;->serverUsername:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    const-string v1, "serverPassword"

    sget-object v2, Lat/hochi/wdtvremote/controler/Config;->serverPassword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method
