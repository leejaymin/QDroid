.class public Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
.super Ljava/lang/Object;
.source "StandardScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StackEntry"
.end annotation


# instance fields
.field private final _next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

.field private _screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

.field private final _screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
    .locals 0
    .parameter "next"
    .parameter "description"
    .parameter "activity"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 45
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 46
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;-><init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V

    return-void
.end method

.method static synthetic access$600(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    return-object v0
.end method

.method static synthetic access$702(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    return-object p1
.end method

.method public static getDepth(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)I
    .locals 1
    .parameter "entry"

    .prologue
    .line 35
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    invoke-static {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getDepth(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .locals 2
    .parameter "id"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-virtual {v1, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v0

    .line 52
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    if-eq v1, p0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    invoke-virtual {v1, p1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v0

    .line 55
    :cond_0
    return-object v0

    .line 50
    .end local v0           #description:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    return-object v0
.end method

.method getScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    return-object v0
.end method
