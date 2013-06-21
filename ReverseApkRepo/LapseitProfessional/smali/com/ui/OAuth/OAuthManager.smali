.class public final enum Lcom/ui/OAuth/OAuthManager;
.super Ljava/lang/Enum;
.source "OAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/OAuth/OAuthManager$APIs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/OAuth/OAuthManager;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ui$OAuth$OAuthManager$APIs:[I

.field private static final synthetic ENUM$VALUES:[Lcom/ui/OAuth/OAuthManager;

.field public static final enum INSTANCE:Lcom/ui/OAuth/OAuthManager;

.field private static container:Landroid/view/ViewGroup;

.field public static facebookAuth:Lcom/ui/OAuth/APIs/FacebookOAuth;

.field public static oauthActivity:Landroid/app/Activity;

.field public static twitterAuth:Lcom/ui/OAuth/APIs/TwitterOAuth;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ui$OAuth$OAuthManager$APIs()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->$SWITCH_TABLE$com$ui$OAuth$OAuthManager$APIs:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ui/OAuth/OAuthManager$APIs;->values()[Lcom/ui/OAuth/OAuthManager$APIs;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->FACEBOOK:Lcom/ui/OAuth/OAuthManager$APIs;

    invoke-virtual {v1}, Lcom/ui/OAuth/OAuthManager$APIs;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->TWITTER:Lcom/ui/OAuth/OAuthManager$APIs;

    invoke-virtual {v1}, Lcom/ui/OAuth/OAuthManager$APIs;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->VIMEO:Lcom/ui/OAuth/OAuthManager$APIs;

    invoke-virtual {v1}, Lcom/ui/OAuth/OAuthManager$APIs;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->YOUTUBE:Lcom/ui/OAuth/OAuthManager$APIs;

    invoke-virtual {v1}, Lcom/ui/OAuth/OAuthManager$APIs;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ui/OAuth/OAuthManager;->$SWITCH_TABLE$com$ui$OAuth$OAuthManager$APIs:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/ui/OAuth/OAuthManager;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/ui/OAuth/OAuthManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/OAuth/OAuthManager;->INSTANCE:Lcom/ui/OAuth/OAuthManager;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ui/OAuth/OAuthManager;

    sget-object v1, Lcom/ui/OAuth/OAuthManager;->INSTANCE:Lcom/ui/OAuth/OAuthManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ui/OAuth/OAuthManager;->ENUM$VALUES:[Lcom/ui/OAuth/OAuthManager;

    .line 24
    sget-object v0, Lcom/ui/OAuth/APIs/TwitterOAuth;->INSTANCE:Lcom/ui/OAuth/APIs/TwitterOAuth;

    sput-object v0, Lcom/ui/OAuth/OAuthManager;->twitterAuth:Lcom/ui/OAuth/APIs/TwitterOAuth;

    .line 25
    sget-object v0, Lcom/ui/OAuth/APIs/FacebookOAuth;->INSTANCE:Lcom/ui/OAuth/APIs/FacebookOAuth;

    sput-object v0, Lcom/ui/OAuth/OAuthManager;->facebookAuth:Lcom/ui/OAuth/APIs/FacebookOAuth;

    .line 17
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final buildErrorAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 89
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/ui/OAuth/OAuthManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 93
    const-string v2, "Ok"

    new-instance v3, Lcom/ui/OAuth/OAuthManager$1;

    invoke-direct {v3}, Lcom/ui/OAuth/OAuthManager$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 101
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;I)Lcom/ui/OAuth/OAuthManager;
    .locals 1
    .parameter "activity"
    .parameter "containerId"

    .prologue
    .line 33
    sput-object p0, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    .line 34
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sput-object v0, Lcom/ui/OAuth/OAuthManager;->container:Landroid/view/ViewGroup;

    .line 35
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->container:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/ui/OAuth/OAuthWebView;->setContainer(Landroid/view/ViewGroup;)V

    .line 37
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->INSTANCE:Lcom/ui/OAuth/OAuthManager;

    return-object v0
.end method

.method public static final getTokenValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 72
    sget-object v1, Lcom/ui/OAuth/OAuthManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final removeTokenValue(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 83
    sget-object v1, Lcom/ui/OAuth/OAuthManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, sharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public static final setTokenValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 77
    sget-object v1, Lcom/ui/OAuth/OAuthManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, sharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/OAuth/OAuthManager;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/OAuth/OAuthManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/OAuth/OAuthManager;

    return-object v0
.end method

.method public static values()[Lcom/ui/OAuth/OAuthManager;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->ENUM$VALUES:[Lcom/ui/OAuth/OAuthManager;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/OAuth/OAuthManager;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public requestAuth(Lcom/ui/OAuth/OAuthManager$APIs;)V
    .locals 2
    .parameter "requestAPI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "trace"

    invoke-virtual {p1}, Lcom/ui/OAuth/OAuthManager$APIs;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/ui/OAuth/OAuthManager;->$SWITCH_TABLE$com$ui$OAuth$OAuthManager$APIs()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ui/OAuth/OAuthManager$APIs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    const-string v0, "twitterAuthToken"

    invoke-static {v0}, Lcom/ui/OAuth/OAuthManager;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "twitterAuthTokenSecret"

    invoke-static {v0}, Lcom/ui/OAuth/OAuthManager;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->twitterAuth:Lcom/ui/OAuth/APIs/TwitterOAuth;

    invoke-virtual {v0}, Lcom/ui/OAuth/APIs/TwitterOAuth;->requestVerifierToken()V

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "trace"

    const-string v1, "Already authorized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :pswitch_2
    const-string v0, "trace"

    const-string v1, "Facebooki"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "facebookAccessToken"

    invoke-static {v0}, Lcom/ui/OAuth/OAuthManager;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->facebookAuth:Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-virtual {v0}, Lcom/ui/OAuth/APIs/FacebookOAuth;->requestVerifierToken()V

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "trace"

    const-string v1, "Already authorized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
