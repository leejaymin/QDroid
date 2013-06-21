.class public Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;
.super Ljava/lang/Object;
.source "C2DMPreferences.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final GET:I = 0x0

.field public static final KEY:Ljava/lang/String; = "C2DMPreferences"

.field private static LOG_PREFIX:Ljava/lang/String; = null

.field public static final REGISTRATION_KEY:Ljava/lang/String; = "registrationKey"

.field public static final SET:I = 0x1

.field public static final UNDEFINED:I = -0x1


# instance fields
.field private debug:Z

.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "C2DMPreferences"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->LOG_PREFIX:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->flag:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->debug:Z

    .line 30
    invoke-virtual {p0, p1}, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->setFlag(I)V

    .line 31
    return-void
.end method

.method private printDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 100
    iget-boolean v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->debug:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->LOG_PREFIX:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 35
    const/4 v5, 0x0

    .line 37
    .local v5, result:Lcom/adobe/fre/FREObject;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "C2DMPreferences"

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 41
    .local v4, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    array-length v7, p2

    if-ne v7, v10, :cond_0

    .line 43
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v7

    iput-boolean v7, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->debug:Z

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->LOG_PREFIX:Ljava/lang/String;

    .line 47
    :cond_0
    if-eqz v4, :cond_1

    .line 49
    iget v7, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->flag:I

    if-nez v7, :cond_2

    array-length v7, p2

    if-ne v7, v12, :cond_2

    .line 51
    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, key:Ljava/lang/String;
    const-string v7, ""

    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, getResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Get preferences: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->printDebug(Ljava/lang/String;)V

    .line 87
    .end local v2           #getResult:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 58
    :cond_2
    iget v7, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->flag:I

    if-ne v7, v11, :cond_3

    array-length v7, p2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 60
    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .restart local v3       #key:Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "C2DMPreferences"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 64
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set preferences: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->printDebug(Ljava/lang/String;)V

    .line 69
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v5

    goto :goto_0

    .line 72
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v7}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 84
    :goto_1
    sget-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->LOG_PREFIX:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "C2DM Preference Exception for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, p2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->flag:I

    return v0
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 91
    iput p1, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;->flag:I

    .line 92
    return-void
.end method
