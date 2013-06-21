.class public final Lcom/google/android/providers/GoogleSettings$Partner;
.super Lcom/google/android/providers/GoogleSettings$NameValueTable;
.source "GoogleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/providers/GoogleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Partner"
.end annotation


# static fields
.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_STORE_VERSION:Ljava/lang/String; = "data_store_version"

.field public static final MAPS_CLIENT_ID:Ljava/lang/String; = "maps_client_id"

.field public static final MARKET_CLIENT_ID:Ljava/lang/String; = "market_client_id"

.field public static final RLZ:Ljava/lang/String; = "rlz"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_google_version"

.field public static final VOICESEARCH_CLIENT_ID:Ljava/lang/String; = "voicesearch_client_id"

.field public static final YOUTUBE_CLIENT_ID:Ljava/lang/String; = "youtube_client_id"

.field private static volatile mNameValueCache:Lcom/google/android/providers/GoogleSettings$NameValueCache;

.field private static final mNameValueCacheLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/providers/GoogleSettings$Partner;->mNameValueCache:Lcom/google/android/providers/GoogleSettings$NameValueCache;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/providers/GoogleSettings$Partner;->mNameValueCacheLock:Ljava/lang/Object;

    .line 237
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/providers/GoogleSettings$Partner;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/providers/GoogleSettings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 198
    invoke-static {p0, p1}, Lcom/google/android/providers/GoogleSettings$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v2, v3

    .line 205
    .local v2, value:I
    :goto_0
    return v2

    .end local v2           #value:I
    :cond_0
    move v2, p2

    .line 201
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2       #value:I
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 6
    .parameter "resolver"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcom/google/android/providers/GoogleSettings$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-wide v2, v4

    .line 221
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 217
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 156
    sget-object v0, Lcom/google/android/providers/GoogleSettings$Partner;->mNameValueCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/google/android/providers/GoogleSettings$Partner;->mNameValueCache:Lcom/google/android/providers/GoogleSettings$NameValueCache;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcom/google/android/providers/GoogleSettings$NameValueCache;

    const-string v2, "sys.settings_google_version"

    sget-object v3, Lcom/google/android/providers/GoogleSettings$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/google/android/providers/GoogleSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v1, Lcom/google/android/providers/GoogleSettings$Partner;->mNameValueCache:Lcom/google/android/providers/GoogleSettings$NameValueCache;

    .line 160
    :cond_0
    sget-object v1, Lcom/google/android/providers/GoogleSettings$Partner;->mNameValueCache:Lcom/google/android/providers/GoogleSettings$NameValueCache;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/providers/GoogleSettings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/google/android/providers/GoogleSettings$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 174
    move-object v0, p2

    .line 177
    :cond_0
    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 231
    sget-object v0, Lcom/google/android/providers/GoogleSettings$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/google/android/providers/GoogleSettings$Partner;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 189
    sget-object v0, Lcom/google/android/providers/GoogleSettings$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/providers/GoogleSettings$Partner;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
