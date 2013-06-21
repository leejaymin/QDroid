.class public Lcom/google/devtools/simple/runtime/components/android/Voting;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/devtools/simple/common/ComponentCategory;
    designerHelpDescription = "<p>The Voting component enables users to vote on a question by communicating with a Web service to retrieve a ballot and later sending back users\' votes.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final BALLOT_OPTIONS_PARAMETER:Ljava/lang/String; = "options"

.field private static final BALLOT_QUESTION_PARAMETER:Ljava/lang/String; = "question"

.field private static final ID_REQUESTED_PARAMETER:Ljava/lang/String; = "idRequested"

.field private static final IS_POLLING_PARAMETER:Ljava/lang/String; = "isPolling"

.field private static final LOG_TAG:Ljava/lang/String; = "Voting"

.field private static final REQUESTBALLOT_COMMAND:Ljava/lang/String; = "requestballot"

.field private static final SENDBALLOT_COMMAND:Ljava/lang/String; = "sendballot"

.field private static final USER_CHOICE_PARAMETER:Ljava/lang/String; = "userchoice"

.field private static final USER_ID_PARAMETER:Ljava/lang/String; = "userid"


# instance fields
.field private activityContext:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private ballotOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ballotOptionsString:Ljava/lang/String;

.field private ballotQuestion:Ljava/lang/String;

.field private idRequested:Ljava/lang/Boolean;

.field private isPolling:Ljava/lang/Boolean;

.field private serviceURL:Ljava/lang/String;

.field private theContainer:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private userChoice:Ljava/lang/String;

.field private userEmailAddress:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 4
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    const-string v3, "http://androvote.appspot.com"

    const-string v1, ""

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "http://androvote.appspot.com"

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->serviceURL:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userId:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userEmailAddress:Ljava/lang/String;

    .line 118
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->isPolling:Ljava/lang/Boolean;

    .line 119
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->idRequested:Ljava/lang/Boolean;

    .line 120
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotQuestion:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptions:Ljava/util/ArrayList;

    .line 122
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userChoice:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->theContainer:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 126
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->activityContext:Landroid/app/Activity;

    .line 130
    const-string v0, "http://androvote.appspot.com"

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->serviceURL:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private JSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .parameter "ja"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 382
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/Voting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->ensureEmailAddress()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/devtools/simple/runtime/components/android/Voting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->postRequestBallot()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->postSendBallot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->isPolling:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->isPolling:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->idRequested:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotQuestion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptionsString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptionsString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/devtools/simple/runtime/components/android/Voting;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->JSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userChoice:Ljava/lang/String;

    return-object v0
.end method

.method private ensureEmailAddress()V
    .locals 4

    .prologue
    .line 248
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userEmailAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userEmailAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 250
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->activityContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 252
    .local v1, googleLoginService:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userEmailAddress:Ljava/lang/String;

    .line 254
    invoke-virtual {v1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1           #googleLoginService:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_1
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Voting"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initEmailAddressAsynch()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Voting$1;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting;)V

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method private postRequestBallot()V
    .locals 5

    .prologue
    .line 306
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting;)V

    .line 371
    .local v0, myCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->getInstance()Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->serviceURL:Ljava/lang/String;

    const-string v3, "requestballot"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    .line 376
    return-void
.end method

.method private postSendBallot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "userChoice"
    .parameter "userEmailAddress"

    .prologue
    .line 427
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Voting$5;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$5;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting;)V

    .line 449
    .local v0, myCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->getInstance()Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->serviceURL:Ljava/lang/String;

    const-string v3, "sendballot"

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userchoice"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userid"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    .line 456
    return-void
.end method


# virtual methods
.method public BallotOptions()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The list of ballot options."
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
    .line 179
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public BallotQuestion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The question to be voted on."
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotQuestion:Ljava/lang/String;

    return-object v0
.end method

.method public GotBallot()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Event indicating that a ballot was retrieved from the Web service and that the properties <code>BallotQuestion</code> and <code>BallotOptions</code> have been set.  This is always preceded by a call to the method <code>RequestBallot</code>."
    .end annotation

    .prologue
    .line 399
    const-string v0, "GotBallot"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public GotBallotConfirmation()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 464
    const-string v0, "GotBallotConfirmation"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->initEmailAddressAsynch()V

    .line 237
    return-void
.end method

.method public NoOpenPoll()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 408
    const-string v0, "NoOpenPoll"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method public RequestBallot()V
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Send a request for a ballot to the Web service specified by the property <code>ServiceURL</code>.  When the completes, one of the following events will be raised: <code>GotBallot</code>, <code>NoOpenPoll</code>, or <code>WebServiceError</code>."
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Voting$2;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting;)V

    .line 302
    .local v0, call:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method public SendBallot()V
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Send a completed ballot to the Web service.  This should not be called until the properties <code>UserId</code> and <code>UserChoice</code> have been set by the application."
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Voting$4;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$4;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting;)V

    .line 423
    .local v0, call:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The URL of the Voting service, by default \"http://androvote.appspot.com\"."
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceURL"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"http://androvote.appspot.com\""
        editorType = "string"
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->serviceURL:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public UserChoice()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The ballot choice to send to the server, which must be set before <code>SendBallot</code> is called.  This must be one of <code>BallotOptions</code>."
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userChoice:Ljava/lang/String;

    return-object v0
.end method

.method public UserChoice(Ljava/lang/String;)V
    .locals 0
    .parameter "userChoice"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userChoice:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The email address associated with this device."
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->ensureEmailAddress()V

    .line 276
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public UserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "A text identifying the voter that is sent to the Voting server along with the vote.  This must be set before <code>SendBallot</code> is called."
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting;->userId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "message As String"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 478
    const-string v0, "WebServiceError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    return-void
.end method
