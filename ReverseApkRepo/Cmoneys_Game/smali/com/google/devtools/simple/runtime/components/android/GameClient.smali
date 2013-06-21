.class public Lcom/google/devtools/simple/runtime/components/android/GameClient;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;
.implements Lcom/google/devtools/simple/runtime/components/android/OnStopListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Provides a way for applications to communicate with online game servers"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.googleapps.permission.GOOGLE_AUTH"
.end annotation


# static fields
.field private static final COMMAND_ARGUMENTS_KEY:Ljava/lang/String; = "args"

.field private static final COMMAND_TYPE_KEY:Ljava/lang/String; = "command"

.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final ERROR_RESPONSE_KEY:Ljava/lang/String; = "e"

.field private static final GAME_ID_KEY:Ljava/lang/String; = "gid"

.field private static final GET_INSTANCE_LISTS_COMMAND:Ljava/lang/String; = "getinstancelists"

.field private static final GET_MESSAGES_COMMAND:Ljava/lang/String; = "messages"

.field private static final INSTANCE_ID_KEY:Ljava/lang/String; = "iid"

.field private static final INSTANCE_PUBLIC_KEY:Ljava/lang/String; = "makepublic"

.field private static final INVITED_LIST_KEY:Ljava/lang/String; = "invited"

.field private static final INVITEE_KEY:Ljava/lang/String; = "inv"

.field private static final INVITE_COMMAND:Ljava/lang/String; = "invite"

.field private static final JOINED_LIST_KEY:Ljava/lang/String; = "joined"

.field private static final JOIN_INSTANCE_COMMAND:Ljava/lang/String; = "joininstance"

.field private static final LEADER_KEY:Ljava/lang/String; = "leader"

.field private static final LEAVE_INSTANCE_COMMAND:Ljava/lang/String; = "leaveinstance"

.field private static final LOG_TAG:Ljava/lang/String; = "GameClient"

.field private static final MESSAGES_LIST_KEY:Ljava/lang/String; = "messages"

.field private static final MESSAGE_CONTENT_KEY:Ljava/lang/String; = "contents"

.field private static final MESSAGE_RECIPIENTS_KEY:Ljava/lang/String; = "mrec"

.field private static final MESSAGE_SENDER_KEY:Ljava/lang/String; = "msender"

.field private static final MESSAGE_TIME_KEY:Ljava/lang/String; = "mtime"

.field private static final NEW_INSTANCE_COMMAND:Ljava/lang/String; = "newinstance"

.field private static final NEW_MESSAGE_COMMAND:Ljava/lang/String; = "newmessage"

.field private static final PLAYERS_LIST_KEY:Ljava/lang/String; = "players"

.field private static final PLAYER_ID_KEY:Ljava/lang/String; = "pid"

.field private static final PUBLIC_LIST_KEY:Ljava/lang/String; = "public"

.field private static final SERVER_COMMAND:Ljava/lang/String; = "servercommand"

.field private static final SERVER_RETURN_VALUE_KEY:Ljava/lang/String; = "response"

.field private static final SET_LEADER_COMMAND:Ljava/lang/String; = "setleader"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private activityContext:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private gameId:Ljava/lang/String;

.field private instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

.field private invitedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publicInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceUrl:Ljava/lang/String;

.field private userEmailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 4
    .parameter "container"

    .prologue
    const-string v3, ""

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v1, ""

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 147
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    .line 148
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->activityContext:Landroid/app/Activity;

    .line 149
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    .line 150
    .local v0, form:Lcom/google/devtools/simple/runtime/components/android/Form;
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnResume(Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;)V

    .line 151
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnStop(Lcom/google/devtools/simple/runtime/components/android/OnStopListener;)V

    .line 152
    const-string v1, ""

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->gameId:Ljava/lang/String;

    .line 153
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    const-string v2, ""

    invoke-direct {v1, v3}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    .line 154
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->joinedInstances:Ljava/util/List;

    .line 155
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->invitedInstances:Ljava/util/List;

    .line 156
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->publicInstances:Ljava/util/List;

    .line 157
    const-string v1, "http://appinvgameserver.appspot.com"

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->serviceUrl:Ljava/lang/String;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postGetInstanceLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->processInstanceLists(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postSetLeader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->updateInstanceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postGetMessages(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/devtools/simple/runtime/components/android/GameClient;)Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;)Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postInvite(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postLeaveInstance()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postNewMessage(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postServerCommand(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postSetInstance(Ljava/lang/String;)V

    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V
    .locals 1
    .parameter "commandName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1124
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;Z)V

    .line 1125
    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;Z)V
    .locals 6
    .parameter "commandName"
    .parameter
    .parameter
    .parameter "allowInstanceIdChange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1130
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;ZLjava/util/List;)V

    .line 1176
    .local v0, thisCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->getInstance()Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->ServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    .line 1178
    return-void
.end method

.method private postGetInstanceLists()V
    .locals 7

    .prologue
    .line 624
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$15;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$15;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 634
    .local v0, readMessagesCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "getinstancelists"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    .line 640
    return-void
.end method

.method private postGetMessages(Ljava/lang/String;I)V
    .locals 7
    .parameter "requestedType"
    .parameter "count"

    .prologue
    .line 708
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    .line 740
    .local v0, myCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    const-string v1, "You must join an instance before attempting to fetch messages."

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    .line 754
    :goto_0
    return-void

    .line 745
    :cond_0
    const-string v1, "messages"

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mtime"

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-virtual {v6, p1}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postInvite(Ljava/lang/String;)V
    .locals 7
    .parameter "inviteeEmail"

    .prologue
    .line 777
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 798
    .local v0, inviteCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const-string v1, "You must have joined an instance before you can invite new players."

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void

    .line 803
    :cond_0
    const-string v1, "invite"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "inv"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postLeaveInstance()V
    .locals 7

    .prologue
    .line 836
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$21;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$21;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 847
    .local v0, setInstanceCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "leaveinstance"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    .line 853
    return-void
.end method

.method private postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "requestedInstanceId"
    .parameter "makePublic"

    .prologue
    const/4 v7, 0x1

    .line 884
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 895
    .local v0, makeNewGameCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "newinstance"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "makepublic"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v7}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;Z)V

    .line 902
    return-void
.end method

.method private postNewMessage(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 7
    .parameter "type"
    .parameter "recipients"
    .parameter "contents"

    .prologue
    .line 931
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$25;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$25;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 940
    .local v0, myCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    const-string v1, "You must have joined an instance before you can send messages."

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    .line 955
    :goto_0
    return-void

    .line 945
    :cond_0
    const-string v1, "newmessage"

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mrec"

    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/components/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "contents"

    invoke-virtual {p3}, Lcom/google/devtools/simple/runtime/components/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mtime"

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-virtual {v6, p1}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postServerCommand(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 7
    .parameter "command"
    .parameter "arguments"

    .prologue
    .line 979
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    .line 997
    .local v0, myCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "GameClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to post "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with args "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v1, "servercommand"

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "command"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "args"

    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/components/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    .line 1006
    return-void
.end method

.method private postSetInstance(Ljava/lang/String;)V
    .locals 8
    .parameter "instanceId"

    .prologue
    const/4 v7, 0x1

    .line 1034
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$29;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$29;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 1044
    .local v0, setInstanceCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "joininstance"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "iid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v7}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;Z)V

    .line 1050
    return-void
.end method

.method private postSetLeader(Ljava/lang/String;)V
    .locals 7
    .parameter "newLeader"

    .prologue
    .line 1075
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$31;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$31;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 1084
    .local v0, setLeaderCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    const-string v1, "You must join an instance before attempting to set a leader."

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    .line 1096
    :goto_0
    return-void

    .line 1089
    :cond_0
    const-string v1, "setleader"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "leader"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private processInstanceLists(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "instanceLists"

    .prologue
    .line 644
    :try_start_0
    const-string v6, "joined"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->joinedInstances:Ljava/util/List;

    .line 647
    const-string v6, "public"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->publicInstances:Ljava/util/List;

    .line 650
    const-string v6, "invited"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 653
    .local v5, receivedInstancesInvited:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InvitedInstances()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 654
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->invitedInstances:Ljava/util/List;

    .line 655
    .local v4, oldList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->invitedInstances:Ljava/util/List;

    .line 656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 657
    .local v3, newInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 659
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 660
    .local v2, instanceInvited:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Invited(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #instanceInvited:Ljava/lang/String;
    .end local v3           #newInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #oldList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #receivedInstancesInvited:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 665
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "GameClient"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    const-string v6, "Instance lists failed to parse."

    invoke-virtual {p0, v6}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    .line 668
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private updateInstanceInfo(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "responseObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1181
    const/4 v2, 0x0

    .line 1182
    .local v2, newLeader:Z
    const-string v6, "leader"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, leader:Ljava/lang/String;
    const-string v6, "players"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 1186
    .local v5, receivedPlayers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Leader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1187
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-virtual {v6, v1}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->setLeader(Ljava/lang/String;)V

    .line 1188
    const/4 v2, 0x1

    .line 1191
    :cond_0
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-virtual {v6, v5}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->setPlayers(Ljava/util/List;)Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;

    move-result-object v4

    .line 1192
    .local v4, playersDelta:Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;
    sget-object v6, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->NO_CHANGE:Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;

    if-eq v4, v6, :cond_2

    .line 1193
    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->getPlayersRemoved()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1194
    .local v3, player:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->PlayerLeft(Ljava/lang/String;)V

    goto :goto_0

    .line 1196
    .end local v3           #player:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->getPlayersAdded()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1197
    .restart local v3       #player:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->PlayerJoined(Ljava/lang/String;)V

    goto :goto_1

    .line 1201
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #player:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 1202
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Leader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->NewLeader(Ljava/lang/String;)V

    .line 1204
    :cond_3
    return-void
.end method


# virtual methods
.method public FunctionCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "functionName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a function call completed."
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method public GameId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The game name for this application.The same game ID can have one or more game instances."
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public GameId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->gameId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public GetInstanceLists()V
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Updates the InstancesJoined and InstancesInvited lists. This procedure can be called before setting the InstanceId."
    .end annotation

    .prologue
    .line 619
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$14;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$14;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method

.method public GetMessages(Ljava/lang/String;I)V
    .locals 1
    .parameter "type"
    .parameter "count"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Retrieves messages of the specified type."
    .end annotation

    .prologue
    .line 703
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method

.method public GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "type"
    .parameter "sender"
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a new message has been received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p3, contents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/devtools/simple/runtime/components/android/GameClient$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method

.method public Info(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that something has occurred which the player should know about."
    .end annotation

    .prologue
    .line 580
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$12;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method public Initialize()V
    .locals 3

    .prologue
    .line 382
    const-string v0, "GameClient"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->gameId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v1, "Game Id must not be empty."

    const-string v2, "GameClient Configuration Error."

    invoke-direct {v0, v1, v2}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    return-void
.end method

.method public InstanceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The game instance id.  Taken together,the game ID and the instance ID uniquely identify the game."
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InstanceIdChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "instanceId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that the InstanceId property has changed as a result of calling MakeNewInstance or SetInstance."
    .end annotation

    .prologue
    .line 417
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance id changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method public Invite(Ljava/lang/String;)V
    .locals 1
    .parameter "playerEmail"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Invites a player to this game instance."
    .end annotation

    .prologue
    .line 772
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$18;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$18;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 774
    return-void
.end method

.method public Invited(Ljava/lang/String;)V
    .locals 3
    .parameter "instanceId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a user has been invited to this game instance."
    .end annotation

    .prologue
    .line 434
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player invited to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$4;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void
.end method

.method public InvitedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The set of game instances to which this player has been invited but has not yet joined.  To ensure current values are returned, first invoke GetInstanceLists."
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
    .line 230
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->invitedInstances:Ljava/util/List;

    return-object v0
.end method

.method public JoinedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The set of game instances in which this player is participating.  To ensure current values are returned, first invoke GetInstanceLists."
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
    .line 244
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->joinedInstances:Ljava/util/List;

    return-object v0
.end method

.method public Leader()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The game\'s leader. At any time, each game instance has only one leader, but the leader may change with time.  Initially, the leader is the game instance creator. Application writers determine special properties of the leader. The leader value is updated each time a successful communication is made with the server."
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->getLeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LeaveInstance()V
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Leaves the current instance."
    .end annotation

    .prologue
    .line 828
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$20;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/GameClient$20;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method

.method public MakeNewInstance(Ljava/lang/String;Z)V
    .locals 1
    .parameter "instanceId"
    .parameter "makePublic"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Asks the server to create a new instance of this game."
    .end annotation

    .prologue
    .line 879
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method public NewInstanceMade(Ljava/lang/String;)V
    .locals 2
    .parameter "instanceId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a new instance was successfully created after calling MakeNewInstance."
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$6;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$6;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    return-void
.end method

.method public NewLeader(Ljava/lang/String;)V
    .locals 2
    .parameter "playerId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that this game has a new leader as specified through SetLeader"
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$5;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$5;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method public PlayerJoined(Ljava/lang/String;)V
    .locals 2
    .parameter "playerId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a new player has joined this game instance."
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$7;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-void
.end method

.method public PlayerLeft(Ljava/lang/String;)V
    .locals 2
    .parameter "playerId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a player has left this game instance."
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$8;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$8;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public Players()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The current set of players for this game instance. Each player is designated by an email address, which is a string. The list of players is updated each time a successful communication is made with the game server."
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
    .line 280
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->getPlayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PublicInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The set of game instances that have been marked public. To ensure current values are returned, first invoke {@link #GetInstanceLists}. "
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
    .line 294
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->publicInstances:Ljava/util/List;

    return-object v0
.end method

.method public SendMessage(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 1
    .parameter "type"
    .parameter "recipients"
    .parameter "contents"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Sends a keyed message to all recipients in the recipients list. The message will consist of the contents list."
    .end annotation

    .prologue
    .line 926
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/devtools/simple/runtime/components/android/GameClient$24;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 928
    return-void
.end method

.method public ServerCommand(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 1
    .parameter "command"
    .parameter "arguments"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Sends the specified command to the game server."
    .end annotation

    .prologue
    .line 974
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 976
    return-void
.end method

.method public ServerCommandFailure(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 2
    .parameter "command"
    .parameter "arguments"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a server command failed."
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient$9;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    return-void
.end method

.method public ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "command"
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a server command returned successfully."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server command returned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient$10;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"http://appinvgameserver.appspot.com\""
        editorType = "string"
    .end annotation

    .prologue
    .line 316
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->serviceUrl:Ljava/lang/String;

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->serviceUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public ServiceUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The URL of the game server."
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->serviceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetInstance(Ljava/lang/String;)V
    .locals 1
    .parameter "instanceId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Sets InstanceId and joins the specified instance."
    .end annotation

    .prologue
    .line 1017
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1031
    return-void
.end method

.method public SetLeader(Ljava/lang/String;)V
    .locals 1
    .parameter "playerEmail"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Tells the server to set the leader to playerId. Only the current leader may successfully set a new leader."
    .end annotation

    .prologue
    .line 1070
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/GameClient$30;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$30;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1072
    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The email address that is being used as the player id for this game client.   At present, users must set this manually in oder to join a game.  But this roperty will change in the future so that is set automatically, and users will not be able to change it."
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->userEmailAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "User email address is empty."

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->userEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public UserEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->UserEmailAddressSet(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public UserEmailAddressSet(Ljava/lang/String;)V
    .locals 2
    .parameter "emailAddress"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that the user email address has been set."
    .end annotation

    .prologue
    .line 561
    const-string v0, "GameClient"

    const-string v1, "Email address set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$11;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$11;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the web server."
    .end annotation

    .prologue
    .line 599
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebServiceError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;-><init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1107
    const-string v0, "GameClient"

    const-string v1, "Activity Resumed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1116
    const-string v0, "GameClient"

    const-string v1, "Activity Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return-void
.end method
