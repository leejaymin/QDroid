.class public final Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;
.super Ljava/lang/Object;
.source "PropertyChecker.java"


# static fields
.field private static propertyChecked:Z

.field private static smsSave:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->propertyChecked:Z

    .line 10
    sput-boolean v0, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->smsSave:Z

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

.method public static declared-synchronized isSaveSMS(Ljava/lang/String;)Z
    .locals 5
    .parameter "models"

    .prologue
    .line 13
    const-class v3, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->propertyChecked:Z

    if-eqz v2, :cond_0

    .line 14
    sget-boolean v2, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->smsSave:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    monitor-exit v3

    return v2

    .line 17
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->propertyChecked:Z

    .line 18
    if-eqz p0, :cond_2

    .line 19
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .local v1, s:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_3

    .line 31
    .end local v1           #s:Ljava/util/StringTokenizer;
    :cond_2
    sget-boolean v2, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->smsSave:Z

    goto :goto_0

    .line 21
    .restart local v1       #s:Ljava/util/StringTokenizer;
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, model:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 25
    const/4 v2, 0x1

    sput-boolean v2, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->smsSave:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 13
    .end local v0           #model:Ljava/lang/String;
    .end local v1           #s:Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
