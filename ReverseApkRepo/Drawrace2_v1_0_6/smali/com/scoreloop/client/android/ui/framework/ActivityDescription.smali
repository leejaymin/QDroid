.class public Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
.super Ljava/lang/Object;
.source "ActivityDescription.java"


# static fields
.field public static final EXTRA_IDENTIFIER:Ljava/lang/String; = "activityIdentifier"

.field private static _instanceCounter:I


# instance fields
.field private final _arguments:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private _enabledWantsClearTop:Z

.field private final _identifier:Ljava/lang/String;

.field private final _intent:Landroid/content/Intent;

.field private final _tabId:I

.field private _wantsClearTop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_instanceCounter:I

    return-void
.end method

.method constructor <init>(ILandroid/content/Intent;)V
    .locals 2
    .parameter "tabId"
    .parameter "intent"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_arguments:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_enabledWantsClearTop:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_wantsClearTop:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pane-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_instanceCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_instanceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_identifier:Ljava/lang/String;

    .line 41
    iput p1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_tabId:I

    .line 42
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_intent:Landroid/content/Intent;

    .line 43
    return-void
.end method


# virtual methods
.method public getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_arguments:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_intent:Landroid/content/Intent;

    const-string v2, "activityIdentifier"

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_identifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_enabledWantsClearTop:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_wantsClearTop:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_intent:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_intent:Landroid/content/Intent;

    return-object v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 59
    .local v0, flags:I
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_intent:Landroid/content/Intent;

    const v2, -0x4000001

    and-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getTabId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_tabId:I

    return v0
.end method

.method hasIdentfier(Ljava/lang/String;)Z
    .locals 1
    .parameter "paneId"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_identifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setEnabledWantsClearTop(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_enabledWantsClearTop:Z

    .line 74
    return-void
.end method

.method setWantsClearTop(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->_wantsClearTop:Z

    .line 78
    return-void
.end method
