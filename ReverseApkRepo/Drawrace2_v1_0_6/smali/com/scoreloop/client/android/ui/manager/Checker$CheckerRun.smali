.class public Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;
.super Ljava/lang/Object;
.source "Checker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/manager/Checker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckerRun"
.end annotation


# instance fields
.field private _counter:I

.field private final _infos:Ljava/util/Map;
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

.field private final _kind:Ljava/lang/String;

.field private final _missing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _shouldBail:Z

.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/Checker;


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/ui/manager/Checker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter "kind"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, infos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->this$0:Lcom/scoreloop/client/android/ui/manager/Checker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_missing:Ljava/util/List;

    .line 59
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_kind:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_infos:Ljava/util/Map;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/ui/manager/Checker;Ljava/lang/String;Ljava/util/Map;Lcom/scoreloop/client/android/ui/manager/Checker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;-><init>(Lcom/scoreloop/client/android/ui/manager/Checker;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .parameter "name"
    .parameter "keyValuePairs"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v10, "android:name=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v10, p2

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_6

    .line 117
    aget-object v7, p2, v5

    check-cast v7, Ljava/lang/String;

    .line 118
    .local v7, key:Ljava/lang/String;
    add-int/lit8 v10, v5, 0x1

    aget-object v9, p2, v10

    .line 119
    .local v9, value:Ljava/lang/Object;
    const-string v10, " android:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v10, "=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v10, "theme"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    instance-of v10, v9, Ljava/lang/Integer;

    if-eqz v10, :cond_1

    .line 124
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->this$0:Lcom/scoreloop/client/android/ui/manager/Checker;

    #getter for: Lcom/scoreloop/client/android/ui/manager/Checker;->_context:Landroid/content/Context;
    invoke-static {v10}, Lcom/scoreloop/client/android/ui/manager/Checker;->access$100(Lcom/scoreloop/client/android/ui/manager/Checker;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    check-cast v9, Ljava/lang/Integer;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    :goto_1
    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 125
    .restart local v9       #value:Ljava/lang/Object;
    :cond_1
    const-string v10, "configChanges"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 126
    check-cast v9, Ljava/lang/Integer;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 127
    .local v3, flags:I
    const/16 v10, 0xa

    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 131
    .local v1, configFlags:[I
    const/16 v10, 0xa

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "fontScale"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "keyboard"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "keyboardHidden"

    aput-object v11, v2, v10

    const/4 v10, 0x3

    const-string v11, "locale"

    aput-object v11, v2, v10

    const/4 v10, 0x4

    const-string v11, "mcc"

    aput-object v11, v2, v10

    const/4 v10, 0x5

    const-string v11, "mnc"

    aput-object v11, v2, v10

    const/4 v10, 0x6

    const-string v11, "navigation"

    aput-object v11, v2, v10

    const/4 v10, 0x7

    const-string v11, "orientation"

    aput-object v11, v2, v10

    const/16 v10, 0x8

    const-string v11, "layout"

    aput-object v11, v2, v10

    const/16 v10, 0x9

    const-string v11, "touchscreen"

    aput-object v11, v2, v10

    .line 133
    .local v2, configNames:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 134
    .local v4, hasFlag:Z
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v10, v1

    if-ge v6, v10, :cond_0

    .line 135
    aget v10, v1, v6

    and-int/2addr v10, v3

    if-eqz v10, :cond_3

    .line 136
    if-eqz v4, :cond_2

    .line 137
    const/16 v10, 0x7c

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    aget-object v10, v2, v6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/4 v4, 0x1

    .line 134
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 143
    .end local v1           #configFlags:[I
    .end local v2           #configNames:[Ljava/lang/String;
    .end local v3           #flags:I
    .end local v4           #hasFlag:Z
    .end local v6           #j:I
    .restart local v9       #value:Ljava/lang/Object;
    :cond_4
    const-string v10, "screenOrientation"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 144
    const/16 v10, 0xb

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "landscape"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "portrait"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "user"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-string v11, "behind"

    aput-object v11, v8, v10

    const/4 v10, 0x4

    const-string v11, "sensor"

    aput-object v11, v8, v10

    const/4 v10, 0x5

    const-string v11, "nosensor"

    aput-object v11, v8, v10

    const/4 v10, 0x6

    const-string v11, "sensorLandscape"

    aput-object v11, v8, v10

    const/4 v10, 0x7

    const-string v11, "sensorPortait"

    aput-object v11, v8, v10

    const/16 v10, 0x8

    const-string v11, "reverseLandscape"

    aput-object v11, v8, v10

    const/16 v10, 0x9

    const-string v11, "reversePortait"

    aput-object v11, v8, v10

    const/16 v10, 0xa

    const-string v11, "fullSensor"

    aput-object v11, v8, v10

    .line 146
    .local v8, orientationNames:[Ljava/lang/String;
    check-cast v9, Ljava/lang/Integer;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v8, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 148
    .end local v8           #orientationNames:[Ljava/lang/String;
    .restart local v9       #value:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 152
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 127
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private informDeveloper(Ljava/lang/String;)V
    .locals 5
    .parameter "detail"

    .prologue
    .line 156
    const-string v2, "ScoreloopUI"

    const-string v3, "====================================================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "ScoreloopUI"

    const-string v3, "Manifest file verification error. Please resolve any issues first!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "ScoreloopUI"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_missing:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, entry:Ljava/lang/String;
    const-string v2, "ScoreloopUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_kind:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v0           #entry:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public varargs add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V
    .locals 11
    .parameter "name"
    .parameter "feature"
    .parameter "keyValuePairs"

    .prologue
    const/4 v10, 0x0

    .line 68
    if-eqz p2, :cond_1

    iget-object v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->this$0:Lcom/scoreloop/client/android/ui/manager/Checker;

    #getter for: Lcom/scoreloop/client/android/ui/manager/Checker;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    invoke-static {v8}, Lcom/scoreloop/client/android/ui/manager/Checker;->access$000(Lcom/scoreloop/client/android/ui/manager/Checker;)Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_counter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_counter:I

    .line 72
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_infos:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 73
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_missing:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v8, p3

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_0

    .line 76
    aget-object v7, p3, v6

    check-cast v7, Ljava/lang/String;

    .line 77
    .local v7, key:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    aget-object v5, p3, v8

    .line 80
    .local v5, expectedValue:Ljava/lang/Object;
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_infos:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 81
    .local v2, details:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_5

    .line 82
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, actualValue:Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 84
    const-string v8, "configChanges"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 85
    check-cast v5, Ljava/lang/Integer;

    .end local v5           #expectedValue:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 86
    .local v3, expectedFlags:I
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #actualValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, actualFlags:I
    and-int v8, v0, v3

    if-ne v8, v3, :cond_5

    .line 75
    .end local v0           #actualFlags:I
    .end local v3           #expectedFlags:I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 90
    .restart local v1       #actualValue:Ljava/lang/Object;
    .restart local v5       #expectedValue:Ljava/lang/Object;
    :cond_4
    const-string v8, "theme"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 91
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->this$0:Lcom/scoreloop/client/android/ui/manager/Checker;

    #getter for: Lcom/scoreloop/client/android/ui/manager/Checker;->_context:Landroid/content/Context;
    invoke-static {v8}, Lcom/scoreloop/client/android/ui/manager/Checker;->access$100(Lcom/scoreloop/client/android/ui/manager/Checker;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    check-cast v5, Ljava/lang/String;

    .end local v5           #expectedValue:Ljava/lang/Object;
    invoke-virtual {v8, v5, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 92
    .local v4, expectedInt:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 100
    .end local v1           #actualValue:Ljava/lang/Object;
    .end local v4           #expectedInt:I
    :cond_5
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_missing:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .restart local v1       #actualValue:Ljava/lang/Object;
    .restart local v5       #expectedValue:Ljava/lang/Object;
    :cond_6
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2
.end method

.method public check()V
    .locals 3

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_shouldBail:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->this$0:Lcom/scoreloop/client/android/ui/manager/Checker;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;-><init>(Lcom/scoreloop/client/android/ui/manager/Checker;Lcom/scoreloop/client/android/ui/manager/Checker$1;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method public reportOptional()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_counter:I

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_missing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    const-string v0, "At least one of following entries is mssing in your AndroidManifest.xml file:"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->informDeveloper(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_shouldBail:Z

    .line 169
    :cond_0
    return-void
.end method

.method public reportRequired()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_missing:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    const-string v0, "All the following entries are missing in your AndroidManifest.xml file:"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->informDeveloper(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->_shouldBail:Z

    .line 176
    :cond_0
    return-void
.end method
