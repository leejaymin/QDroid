.class public Lcom/superdroid/rpc/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final APP_ID_AAM:Ljava/lang/String; = "aam"

.field public static final APP_ID_AQD:Ljava/lang/String; = "aqd"

.field public static final APP_ID_EWC:Ljava/lang/String; = "ewc"

.field public static final APP_ID_NBA:Ljava/lang/String; = "nba"

.field public static final APP_ID_SCF:Ljava/lang/String; = "scf"

.field public static final APP_ID_SCLF:Ljava/lang/String; = "sclf"

.field public static final APP_ID_SD:Ljava/lang/String; = "sd"

.field public static final APP_ID_SPC:Ljava/lang/String; = "spc"

.field public static final APP_ID_SQD:Ljava/lang/String; = "sqd"

.field public static final APP_ID_SSF:Ljava/lang/String; = "ssf"

.field public static final APP_ID_SUPERLIST:Ljava/lang/String; = "superlist"

.field protected static final DEFAULT_BASE_URL:Ljava/lang/String; = "http://serveraddress:8080/services/"

.field protected static final DEFAULT_CONNECTION_TIME_OUT:I = 0x0

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/binary-superdroid"

.field protected static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field protected static final DEFAULT_PASSWORD:Ljava/lang/String; = "super12345"

.field protected static final DEFAULT_SERVER_AUTH:Z = false

.field protected static final DEFAULT_USER_ID:Ljava/lang/String; = "super"

.field protected static final DEFAULT_VERSION_CODE:I = 0x1

.field public static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field public static final SUPPORT_EMAIL_APEX:Ljava/lang/String; = "apexdroid@gmail.com"

.field public static final SUPPORT_EMAIL_SUPER:Ljava/lang/String; = "superdroid.support@gmail.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "http://serveraddress:8080/services/"

    return-object v0
.end method

.method public getConnectionTimeOut()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "application/binary-superdroid"

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "super12345"

    return-object v0
.end method

.method public getServerAuth()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "super"

    return-object v0
.end method

.method public getVerionCode()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "baseUrl"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setConnectionTimeOut(I)V
    .locals 1
    .parameter "connectionTimeOut"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "contenttype"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setServerAuth(Z)V
    .locals 1
    .parameter "serverAuth"

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1
    .parameter "userID"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVersionCode(I)V
    .locals 1
    .parameter "versionCode"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
