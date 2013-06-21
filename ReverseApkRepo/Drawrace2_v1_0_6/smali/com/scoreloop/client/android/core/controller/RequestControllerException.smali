.class public Lcom/scoreloop/client/android/core/controller/RequestControllerException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final CHALLENGE_ALREADY_ASSIGNED_TO_SOMEONE:I = 0x16
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end field

.field public static final CHALLENGE_ALREADY_ASSIGNED_TO_YOU:I = 0x1b
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end field

.field public static final CHALLENGE_CANNOT_ACCEPT_CHALLENGE:I = 0x1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end field

.field public static final CHALLENGE_CANNOT_REJECT_CHALLENGE:I = 0x2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end field

.field public static final CHALLENGE_INSUFFICIENT_BALANCE:I = 0x18
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end field

.field public static final CODE_BUDDY_ADD_REQUEST_ALREADY_ADDED:I = 0x28
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final CODE_BUDDY_REMOVE_REQUEST_ALREADY_REMOVED:I = 0x29
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final CODE_SOCIAL_PROVIDER_DISCONNECTED:I = 0x6e
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final CODE_UNDEFINED:I = 0x0
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final DETAIL_USER_UPDATE_REQUEST_EMAIL_TAKEN:I = 0x10
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final DETAIL_USER_UPDATE_REQUEST_IMAGE_TOO_LARGE:I = 0x20
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final DETAIL_USER_UPDATE_REQUEST_INVALID_EMAIL:I = 0x8
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final DETAIL_USER_UPDATE_REQUEST_INVALID_USERNAME:I = 0x1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final DETAIL_USER_UPDATE_REQUEST_UNSUPPORTED_MIME_TYPE:I = 0x40
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final DETAIL_USER_UPDATE_REQUEST_USERNAME_TAKEN:I = 0x4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final DETAIL_USER_UPDATE_REQUEST_USERNAME_TOO_SHORT:I = 0x2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field public static final INFO_KEY_DISCONNECTED_PROVIDER_IDENTIFIERS:Ljava/lang/String; = "disconnectedProviderIdentifiers"
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private final d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 224
    const-string v0, "Request failed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a:I

    .line 226
    iput p1, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->d:I

    .line 227
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;-><init>(I)V

    .line 234
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->c:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public static a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    .locals 7
    .parameter

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 170
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    .line 174
    :cond_1
    new-instance v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    const-string v2, "RequestError"

    invoke-direct {v1, v2, v0}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;-><init>(Ljava/lang/String;I)V

    .line 175
    new-instance v2, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Response;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "error"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    const-string v3, "message"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->c:Ljava/lang/String;

    .line 184
    const-string v3, "code"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->b:I

    .line 188
    const-string v4, "details"

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->COERCE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v6, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_AND_COERCES_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a:I

    .line 192
    if-eqz v3, :cond_2

    .line 193
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move-object v0, v1

    .line 211
    goto :goto_0

    .line 195
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSupportedProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 197
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 202
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    const-string v3, "disconnectedProviderIdentifiers"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iput-object v0, v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->e:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iget v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a:I

    .line 242
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->c:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->e:Ljava/util/Map;

    .line 345
    return-void
.end method

.method public getErrorCode()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 251
    iget v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->b:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 273
    iget v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->d:I

    return v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->e:Ljava/util/Map;

    return-object v0
.end method

.method public hasDetail(I)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 306
    iget v0, p0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
