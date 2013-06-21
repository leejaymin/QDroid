.class public abstract Lcom/scoreloop/client/android/core/model/SocialProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/ImageSource;
.implements Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;


# static fields
.field public static final FACEBOOK_IDENTIFIER:Ljava/lang/String; = "com.facebook.v1"
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation
.end field

.field public static final TWITTER_IDENTIFIER:Ljava/lang/String; = "com.twitter.v1"
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation
.end field

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/SocialProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/core/model/SocialProvider;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSupportedProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 116
    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->d(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method static b(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSupportedProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 122
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    :try_start_0
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v3, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/scoreloop/client/android/core/model/User;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :cond_3
    return-void
.end method

.method static c(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSupportedProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 128
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/core/model/User;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 130
    :cond_1
    return-void
.end method

.method private d(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 208
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 214
    :cond_1
    :try_start_0
    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Lorg/json/JSONObject;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/User;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;
    .locals 3
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSupportedProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 82
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportedProviders()Ljava/util/List;
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/SocialProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/scoreloop/client/android/core/model/SocialProvider;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/model/SocialProvider;->a:Ljava/util/List;

    .line 99
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/scoreloop/client/android/core/settings/CommonSettings$Social;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 102
    :try_start_0
    sget-object v1, Lcom/scoreloop/client/android/core/settings/CommonSettings$Social;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/scoreloop/client/android/core/model/SocialProvider;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error instantiating social provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 110
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/model/SocialProvider;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->d(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V

    .line 204
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 190
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    :try_start_0
    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v1, "token_secret"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v1, "uid"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/User;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 199
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Session;)Z
    .locals 1
    .parameter

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    return v0
.end method

.method public final varargs a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 273
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 275
    aget-object v0, p1, v1

    .line 276
    instance-of v3, v0, Lcom/scoreloop/client/android/core/model/User;

    if-eqz v3, :cond_0

    .line 277
    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 274
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 278
    :cond_0
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 279
    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    goto :goto_1

    .line 281
    :cond_1
    const/4 v0, 0x0

    .line 284
    :goto_2
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method public abstract b()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract c()I
.end method

.method public abstract getIdentifier()Ljava/lang/String;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation
.end method

.method public final getName()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getVersion()Ljava/lang/Integer;
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 168
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/model/User;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
