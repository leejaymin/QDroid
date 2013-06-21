.class public abstract Lcom/superdroid/util/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# static fields
.field private static CONTACT_HELPER:Lcom/superdroid/util/ContactHelper;

.field private static SDK_DONUT:I

.field private static SDK_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x4

    sput v0, Lcom/superdroid/util/ContactHelper;->SDK_DONUT:I

    .line 51
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/superdroid/util/ContactHelper;->SDK_VERSION:I

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getContactInstance()Lcom/superdroid/util/ContactHelper;
    .locals 5

    .prologue
    const-class v2, Lcom/superdroid/util/ContactHelper;

    .line 55
    const-class v2, Lcom/superdroid/util/ContactHelper;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/superdroid/util/ContactHelper;->CONTACT_HELPER:Lcom/superdroid/util/ContactHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 57
    :try_start_1
    sget v3, Lcom/superdroid/util/ContactHelper;->SDK_VERSION:I

    sget v4, Lcom/superdroid/util/ContactHelper;->SDK_DONUT:I

    if-le v3, v4, :cond_1

    .line 59
    const-string v3, "com.superdroid.util.ContactSDK5Helper"

    .line 58
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    const-class v4, Lcom/superdroid/util/ContactHelper;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/ContactHelper;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/ContactHelper;>;"
    check-cast v0, Lcom/superdroid/util/ContactHelper;

    sput-object v0, Lcom/superdroid/util/ContactHelper;->CONTACT_HELPER:Lcom/superdroid/util/ContactHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Lcom/superdroid/util/ContactHelper;->CONTACT_HELPER:Lcom/superdroid/util/ContactHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v3

    .line 64
    :cond_1
    :try_start_3
    const-string v3, "com.superdroid.util.ContactPreSDK5Helper"

    .line 63
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 65
    const-class v4, Lcom/superdroid/util/ContactHelper;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/ContactHelper;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/ContactHelper;>;"
    check-cast v0, Lcom/superdroid/util/ContactHelper;

    sput-object v0, Lcom/superdroid/util/ContactHelper;->CONTACT_HELPER:Lcom/superdroid/util/ContactHelper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 69
    .local v1, ex:Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public abstract addContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteContact(Landroid/content/Context;J)V
.end method

.method public abstract deleteNumberOfContact(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public abstract fetchPeopleCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract fetchPeoplePhone(Landroid/content/Context;JI)Landroid/graphics/Bitmap;
.end method

.method public abstract fetchPeoplePhone(Landroid/content/Context;Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/superdroid/util/ContactInfo;
.end method

.method public getIdByNumber(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "ctx"
    .parameter "number"

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/superdroid/util/ContactHelper;->getContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/superdroid/util/ContactInfo;

    move-result-object v0

    .line 11
    .local v0, info:Lcom/superdroid/util/ContactInfo;
    if-eqz v0, :cond_0

    .line 12
    iget-wide v1, v0, Lcom/superdroid/util/ContactInfo;->personId:J

    .line 14
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/superdroid/util/ContactHelper;->getContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/superdroid/util/ContactInfo;

    move-result-object v0

    .line 41
    .local v0, info:Lcom/superdroid/util/ContactInfo;
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, v0, Lcom/superdroid/util/ContactInfo;->name:Ljava/lang/String;

    .line 44
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public abstract getNumbers(Landroid/content/Context;J)[Ljava/lang/String;
.end method

.method public abstract isLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
.end method
