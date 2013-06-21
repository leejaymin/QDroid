.class abstract Lbackport/android/bluetooth/BackportProperties;
.super Ljava/lang/Object;
.source "BackportProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackportProperties"

.field private static sProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lbackport/android/bluetooth/BackportProperties;->obtainProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/BackportProperties;->sProperties:Ljava/util/Properties;

    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPermissionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    sget-object v1, Lbackport/android/bluetooth/BackportProperties;->sProperties:Ljava/util/Properties;

    const-string v2, "permission_name"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getRequestDiscoverable()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    sget-object v1, Lbackport/android/bluetooth/BackportProperties;->sProperties:Ljava/util/Properties;

    const-string v2, "request_discoverable"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    goto :goto_0
.end method

.method public static final getRequestEnable()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    sget-object v1, Lbackport/android/bluetooth/BackportProperties;->sProperties:Ljava/util/Properties;

    const-string v2, "request_enable"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    goto :goto_0
.end method

.method private static final obtainProperties()Ljava/util/Properties;
    .locals 4

    .prologue
    .line 46
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 47
    .local v1, tmp:Ljava/util/Properties;
    const-class v2, Lbackport/android/bluetooth/BackportProperties;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 48
    const-string v3, "backport_android_bluetooth.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 49
    .local v0, inStream:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 51
    const-string v2, "BackportProperties"

    .line 52
    const-string v3, "can\'t locate backport_android_bluetooth.properties from classpath."

    .line 51
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-object v1

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0
.end method
