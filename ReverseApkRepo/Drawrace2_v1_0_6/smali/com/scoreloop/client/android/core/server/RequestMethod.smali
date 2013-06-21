.class public final enum Lcom/scoreloop/client/android/core/server/RequestMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/server/RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/scoreloop/client/android/core/server/RequestMethod;

.field public static final enum GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

.field public static final enum POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

.field public static final enum PUT:Lcom/scoreloop/client/android/core/server/RequestMethod;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/server/RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/scoreloop/client/android/core/server/RequestMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/server/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->DELETE:Lcom/scoreloop/client/android/core/server/RequestMethod;

    new-instance v0, Lcom/scoreloop/client/android/core/server/RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/server/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    new-instance v0, Lcom/scoreloop/client/android/core/server/RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/server/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    new-instance v0, Lcom/scoreloop/client/android/core/server/RequestMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/core/server/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->PUT:Lcom/scoreloop/client/android/core/server/RequestMethod;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scoreloop/client/android/core/server/RequestMethod;

    sget-object v1, Lcom/scoreloop/client/android/core/server/RequestMethod;->DELETE:Lcom/scoreloop/client/android/core/server/RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/server/RequestMethod;->PUT:Lcom/scoreloop/client/android/core/server/RequestMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->a:[Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/scoreloop/client/android/core/server/RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->a:[Lcom/scoreloop/client/android/core/server/RequestMethod;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/server/RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
