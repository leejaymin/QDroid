.class public final Lcom/google/devtools/simple/runtime/components/android/Twitter;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SOCIAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A non-visible component that enables communication with <a href=\"http://www.twitter.com\" target=\"_blank\">Twitter</a>. Methods are included to enabling searching (<code>SearchTwitter</code>) or logging into (<code>Authorize</code>) Twitter.  Once a user has authorized their Twitter account (and the authorization has been confirmed successful by the <code>IsAuthorized</code> event), many more operations are available:<ul><li> Setting the status of the logged-in user (<code>SetStatus</code>)     </li><li> Directing a message to a specific user      (<code>DirectMessage</code>)</li> <li> Receiving the most recent messages directed to the logged-in user      (<code>RequestDirectMessages</code>)</li> <li> Following a specific user (<code>Follow</code>)</li><li> Ceasing to follow a specific user (<code>StopFollowing</code>)</li><li> Getting a list of users following the logged-in user      (<code>RequestFollowers</code>)</li> <li> Getting the most recent messages of users followed by the      logged-in user (<code>RequestFriendTimeline</code>)</li> <li> Getting the most recent mentions of the logged-in user      (<code>RequestMentions</code>)</li></ul></p> <p>You must obtain a Comsumer Key and Consumer Secret for Twitter authorization  specific to your app from http://twitter.com/oauth_clients/new </p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final ACCESS_SECRET_TAG:Ljava/lang/String; = "TwitterOauthAccessSecret"

.field private static final ACCESS_TOKEN_TAG:Ljava/lang/String; = "TwitterOauthAccessToken"

.field private static final CALLBACK_URL:Ljava/lang/String; = "appinventor://twitter"

.field private static final MAX_CHARACTERS:Ljava/lang/String; = "160"

.field private static final MAX_MENTIONS_RETURNED:Ljava/lang/String; = "20"

.field private static final URL_HOST:Ljava/lang/String; = "twitter"

.field private static final WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;


# instance fields
.field private volatile accessToken:Ltwitter4j/http/AccessToken;

.field private volatile consumerKey:Ljava/lang/String;

.field private volatile consumerSecret:Ljava/lang/String;

.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private final directMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final followers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private final mentions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final notifier:Lcom/google/devtools/simple/runtime/components/android/Notifier;

.field private final requestCode:I

.field private volatile requestToken:Ltwitter4j/http/RequestToken;

.field private final searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final timeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile twitter:Ltwitter4j/Twitter;

.field private final twitterLock:Ljava/lang/Object;

.field private volatile userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/google/devtools/simple/runtime/components/android/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    const-string v1, ""

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    .line 87
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;

    .line 95
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerKey:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerSecret:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Notifier;

    invoke-direct {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Notifier;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->notifier:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->mentions:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->followers:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->timeline:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->directMessages:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->searchResults:Ljava/util/List;

    .line 146
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Twitter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 148
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->retrieveAccessToken()Ltwitter4j/http/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    .line 150
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->requestCode:I

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/http/AccessToken;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->saveAccessToken(Ltwitter4j/http/AccessToken;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->mentions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->followers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->directMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->timeline:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->searchResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/http/RequestToken;)Ltwitter4j/http/RequestToken;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->requestToken:Ltwitter4j/http/RequestToken;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/devtools/simple/runtime/components/android/Twitter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->requestCode:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlertOnUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/http/AccessToken;)Ltwitter4j/http/AccessToken;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    return-object p1
.end method

.method private checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "myConsumerKey"
    .parameter "myConsumerSecret"

    .prologue
    const/4 v7, 0x0

    const-string v8, "Twitter"

    .line 916
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 917
    :try_start_0
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    if-nez v5, :cond_0

    monitor-exit v4

    move v4, v7

    .line 943
    :goto_0
    return v4

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    .line 919
    .local v1, myAccessToken:Ltwitter4j/http/AccessToken;
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v5, :cond_1

    .line 920
    new-instance v5, Ltwitter4j/Twitter;

    invoke-direct {v5}, Ltwitter4j/Twitter;-><init>()V

    iput-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 922
    :cond_1
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 923
    .local v2, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :try_start_1
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 927
    :try_start_2
    invoke-virtual {v2, p1, p2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-virtual {v2, v1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 929
    invoke-virtual {v2}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    move-result-object v3

    .line 930
    .local v3, user:Ltwitter4j/User;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 931
    :try_start_3
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ltwitter4j/TwitterException; {:try_start_3 .. :try_end_3} :catch_0

    .line 932
    :try_start_4
    invoke-virtual {v3}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    .line 933
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 934
    :try_start_5
    const-string v4, "Twitter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved accessToken is valid. UserId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ltwitter4j/TwitterException; {:try_start_5 .. :try_end_5} :catch_0

    .line 935
    const/4 v4, 0x1

    goto :goto_0

    .line 923
    .end local v1           #myAccessToken:Ltwitter4j/http/AccessToken;
    .end local v2           #myTwitter:Ltwitter4j/Twitter;
    .end local v3           #user:Ltwitter4j/User;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 930
    .restart local v1       #myAccessToken:Ltwitter4j/http/AccessToken;
    .restart local v2       #myTwitter:Ltwitter4j/Twitter;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catch Ltwitter4j/TwitterException; {:try_start_8 .. :try_end_8} :catch_0

    .line 936
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 937
    .local v0, e:Ltwitter4j/TwitterException;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 938
    const/4 v5, 0x0

    :try_start_9
    iput-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    .line 939
    const-string v5, ""

    iput-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    .line 940
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    invoke-direct {p0, v5}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->saveAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 941
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 942
    const-string v4, "Twitter"

    const-string v4, "Saved access token is not valid---clearing it in shared prefs"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 943
    goto :goto_0

    .line 933
    .end local v0           #e:Ltwitter4j/TwitterException;
    .restart local v3       #user:Ltwitter4j/User;
    :catchall_2
    move-exception v5

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5
    :try_end_b
    .catch Ltwitter4j/TwitterException; {:try_start_b .. :try_end_b} :catch_0

    .line 941
    .end local v3           #user:Ltwitter4j/User;
    .restart local v0       #e:Ltwitter4j/TwitterException;
    :catchall_3
    move-exception v5

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v5
.end method

.method private retrieveAccessToken()Ltwitter4j/http/AccessToken;
    .locals 6

    .prologue
    const-string v5, ""

    .line 390
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "TwitterOauthAccessToken"

    const-string v4, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, token:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "TwitterOauthAccessSecret"

    const-string v4, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, secret:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 393
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Ltwitter4j/http/AccessToken;

    invoke-direct {v2, v1, v0}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 4
    .parameter "accessToken"

    .prologue
    const-string v3, "TwitterOauthAccessToken"

    const-string v2, "TwitterOauthAccessSecret"

    .line 377
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 378
    .local v0, sharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 379
    const-string v1, "TwitterOauthAccessToken"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v1, "TwitterOauthAccessSecret"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    return-void

    .line 382
    :cond_0
    const-string v1, "TwitterOauthAccessToken"

    invoke-virtual {p1}, Ltwitter4j/http/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v1, "TwitterOauthAccessSecret"

    invoke-virtual {p1}, Ltwitter4j/http/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->notifier:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->ShowAlert(Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method private showAlertOnUI(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$13;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter$13;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 958
    return-void
.end method


# virtual methods
.method public Authorize()V
    .locals 5
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Redirects user to login to Twitter via the Web browser using the OAuth protocol if we don\'t already have authorization."
    .end annotation

    .prologue
    .line 245
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 246
    :cond_0
    const-string v3, "The ConsumerKey and ConsumerSecret properties must be set in order to authorize access for Twitter. Please obtain a Comsumer Key and Consumer Secret specific to your app from http://twitter.com/oauth_clients/new"

    invoke-direct {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerKey:Ljava/lang/String;

    .line 252
    .local v0, myConsumerKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerSecret:Ljava/lang/String;

    .line 254
    .local v1, myConsumerSecret:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 255
    :try_start_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v4, :cond_2

    .line 256
    new-instance v4, Ltwitter4j/Twitter;

    invoke-direct {v4}, Ltwitter4j/Twitter;-><init>()V

    iput-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 259
    .local v2, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/Twitter;)V

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 259
    .end local v2           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public CheckAuthorized()V
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Checks whether we already have access, and if so, causes IsAuthorized event handler to be called."
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerKey:Ljava/lang/String;

    .line 301
    .local v0, myConsumerKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerSecret:Ljava/lang/String;

    .line 302
    .local v1, myConsumerSecret:Ljava/lang/String;
    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public ConsumerKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public ConsumerKey(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerKey"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerKey:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public ConsumerSecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public ConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerSecret"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->consumerSecret:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public DeAuthorize()V
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Removes Twitter authorization from this running app instance"
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->requestToken:Ltwitter4j/http/RequestToken;

    .line 405
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    .line 406
    const-string v2, ""

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 408
    .local v0, oldTwitter:Ltwitter4j/Twitter;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 410
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->saveAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 411
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 417
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    :cond_0
    return-void

    .line 411
    .end local v0           #oldTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 417
    .restart local v0       #oldTwitter:Ltwitter4j/Twitter;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public DirectMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "user"
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "This sends a direct (private) message to the specified user.  The message will be trimmed if it exceeds 160characters. <p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 695
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v2, :cond_0

    .line 697
    const-string v2, "DirectMessage failed. Need to login?"

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 698
    monitor-exit v1

    .line 713
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 701
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 701
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public DirectMessages()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "This property contains a list of the most recent messages mentioning the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>Authorized</code> event.</li> <li> Call the <code>RequestDirectMessages</code> method.</li> <li> Wait for the <code>DirectMessagesReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of direct messages retrieved (and maintain that value until any subsequent call to <code>RequestDirectMessages</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->directMessages:Ljava/util/List;

    return-object v0
.end method

.method public DirectMessagesReceived(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is raised when the recent messages requested through <code>RequestDirectMessages</code> have been retrieved. A list of the messages can then be found in the <code>messages</code> parameter or the <code>Messages</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "DirectMessagesReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    return-void
.end method

.method public Follow(Ljava/lang/String;)V
    .locals 3
    .parameter "user"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 721
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v2, :cond_0

    .line 723
    const-string v2, "Follow failed. Need to login?"

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 724
    monitor-exit v1

    .line 739
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 727
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter$9;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 727
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public Followers()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "This property contains a list of the followers of the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Call the <code>RequestFollowers</code> method.</li> <li> Wait for the <code>FollowersReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of followers (and maintain its value until any subsequent call to <code>RequestFollowers</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->followers:Ljava/util/List;

    return-object v0
.end method

.method public FollowersReceived(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is raised when all of the followers of the logged-in user requested through <code>RequestFollowers</code> have been retrieved. A list of the followers can then be found in the <code>followers</code> parameter or the <code>Followers</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, followers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FollowersReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method public FriendTimeline()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "This property contains the 20 most recent messages of users being followed.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Specify users to follow with one or more calls to the <code>Follow</code> method.</li> <li> Call the <code>RequestFriendTimeline</code> method.</li> <li> Wait for the <code>FriendTimelineReceived</code> event.</li> </ol>\nThe value of this property will then be set to the list of messages (and maintain its value until any subsequent call to <code>RequestFriendTimeline</code>."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->timeline:Ljava/util/List;

    return-object v0
.end method

.method public FriendTimelineReceived(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is raised when the messages requested through <code>RequestFriendTimeline</code> have been retrieved. The <code>timeline</code> parameter and the <code>Timeline</code> property will contain a list of lists, where each sub-list contains a status update of the form (username message)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, timeline:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "FriendTimelineReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public IsAuthorized()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is raised after the program calls <code>Authorize</code> if the authorization was successful.  It is also called after a call to <code>CheckAuthorized</code> if we already have a valid access token. After this event has been raised, any other method for this component can be called."
    .end annotation

    .prologue
    .line 181
    const-string v0, "IsAuthorized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public Login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Twitter\'s API no longer supports login via username and password. Use the Authorize call instead."
        userVisible = false
    .end annotation

    .prologue
    .line 166
    const-string v0, "Twitter no longer supports this form of Login. Use the Authorize call instead."

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public Mentions()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "This property contains a list of mentions of the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Call the <code>RequestMentions</code> method.</li> <li> Wait for the <code>MentionsReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of mentions (and will maintain its value until any subsequent calls to <code>RequestMentions</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->mentions:Ljava/util/List;

    return-object v0
.end method

.method public MentionsReceived(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is raised when the mentions of the logged-in user requested through <code>RequestMentions</code> have been retrieved.  A list of the mentions can then be found in the <code>mentions</code> parameter or the <code>Mentions</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, mentions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "MentionsReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    return-void
.end method

.method public RequestDirectMessages()V
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Requests the 20 most recent direct messages sent to the logged-in user.  When the messages have been retrieved, the system will raise the <code>DirectMessagesReceived</code> event and set the <code>DirectMessages</code> property to the list of messages.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 617
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 619
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    if-nez v0, :cond_0

    .line 621
    const-string v1, "RequestDirectMessages failed. Need to login?"

    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 650
    :goto_0
    return-void

    .line 619
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 624
    .restart local v0       #myTwitter:Ltwitter4j/Twitter;
    :cond_0
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$7;

    invoke-direct {v1, p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$7;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public RequestFollowers()V
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 540
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    .line 542
    .local v1, myUserId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 543
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 545
    :cond_0
    const-string v2, "RequestFollowers failed. Need to login?"

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 543
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    .end local v1           #myUserId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 548
    .restart local v0       #myTwitter:Ltwitter4j/Twitter;
    .restart local v1       #myUserId:Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public RequestFriendTimeline()V
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 773
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 775
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    if-nez v0, :cond_0

    .line 777
    const-string v1, "RequestFriendTimeline failed. Need to login?"

    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 804
    :goto_0
    return-void

    .line 775
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 780
    .restart local v0       #myTwitter:Ltwitter4j/Twitter;
    :cond_0
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;

    invoke-direct {v1, p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public RequestMentions()V
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Requests the 20 most recent mentions of the logged-in user.  When the mentions have been retrieved, the system will raise the <code>MentionsReceived</code> event and set the <code>Mentions</code> property to the list of mentions.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 474
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    if-nez v0, :cond_0

    .line 476
    const-string v1, "RequestMentions failed. Need to login?"

    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void

    .line 474
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 479
    .restart local v0       #myTwitter:Ltwitter4j/Twitter;
    :cond_0
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$5;

    invoke-direct {v1, p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$5;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public SearchResults()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "This property, which is initially empty, is set to a list of search results after the program: <ol><li>Calls the <code>SearchTwitter</code> method.</li> <li>Waits for the <code>SearchSuccessful</code> event.</li></ol>\nThe value of the property will then be the same as the parameter to <code>SearchSuccessful</code>.  Note that it is not necessary to call the <code>Authorize</code> method before calling <code>SearchTwitter</code>."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->searchResults:Ljava/util/List;

    return-object v0
.end method

.method public SearchSuccessful(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is raised when the results of the search requested through <code>SearchSuccessful</code> have been retrieved. A list of the results can then be found in the <code>results</code> parameter or the <code>Results</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p1, searchResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "SearchSuccessful"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    return-void
.end method

.method public SearchTwitter(Ljava/lang/String;)V
    .locals 3
    .parameter "query"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 845
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v2, :cond_0

    .line 849
    new-instance v0, Ltwitter4j/Twitter;

    invoke-direct {v0}, Ltwitter4j/Twitter;-><init>()V

    .line 853
    .local v0, myTwitter:Ltwitter4j/Twitter;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 877
    return-void

    .line 851
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .restart local v0       #myTwitter:Ltwitter4j/Twitter;
    goto :goto_0

    .line 853
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public SetStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "status"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "This updates the logged-in user\'s status to the specified Text, which will be trimmed if it exceeds 160 characters. <p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 433
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 435
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    if-nez v0, :cond_0

    .line 437
    const-string v1, "SetStatus failed. Need to login?"

    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 435
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 445
    .restart local v0       #myTwitter:Ltwitter4j/Twitter;
    :cond_0
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter$4;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public StopFollowing(Ljava/lang/String;)V
    .locals 3
    .parameter "user"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 747
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 749
    .local v0, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    if-nez v0, :cond_0

    .line 751
    const-string v1, "StopFollowing failed. Need to login?"

    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 765
    :goto_0
    return-void

    .line 749
    .end local v0           #myTwitter:Ltwitter4j/Twitter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 754
    .restart local v0       #myTwitter:Ltwitter4j/Twitter;
    :cond_0
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Twitter$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Twitter$10;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public Username()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The user name of the authorized user. Empty if there is no authorized user."
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v6, "Twitter"

    .line 320
    const-string v4, "Twitter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p3, :cond_3

    .line 322
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 323
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 324
    const-string v4, "Twitter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v4, "oauth_verifier"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, oauthVerifier:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->requestToken:Ltwitter4j/http/RequestToken;

    .line 330
    .local v0, myRequestToken:Ltwitter4j/http/RequestToken;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 331
    .local v1, myTwitter:Ltwitter4j/Twitter;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    if-nez v1, :cond_0

    .line 333
    const-string v4, "Unable to get access token: internal error: can\'t access Twitter library"

    invoke-direct {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 334
    const-string v4, "Twitter"

    const-string v4, "twitter field is unexpectedly null"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 337
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    new-instance v4, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ltwitter4j/http/RequestToken;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 373
    .end local v0           #myRequestToken:Ltwitter4j/http/RequestToken;
    .end local v1           #myTwitter:Ltwitter4j/Twitter;
    .end local v2           #oauthVerifier:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 331
    .restart local v2       #oauthVerifier:Ljava/lang/String;
    .restart local v3       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 364
    .restart local v0       #myRequestToken:Ltwitter4j/http/RequestToken;
    .restart local v1       #myTwitter:Ltwitter4j/Twitter;
    :cond_1
    const-string v4, "Twitter authorization failed"

    invoke-direct {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->DeAuthorize()V

    goto :goto_0

    .line 368
    .end local v0           #myRequestToken:Ltwitter4j/http/RequestToken;
    .end local v1           #myTwitter:Ltwitter4j/Twitter;
    .end local v2           #oauthVerifier:Ljava/lang/String;
    :cond_2
    const-string v4, "Twitter"

    const-string v4, "uri retured from WebView activity was unexpectedly null"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    const-string v4, "Twitter"

    const-string v4, "intent retured from WebView activity was unexpectedly null"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
