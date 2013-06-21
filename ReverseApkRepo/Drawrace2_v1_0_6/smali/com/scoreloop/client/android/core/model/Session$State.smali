.class public final enum Lcom/scoreloop/client/android/core/model/Session$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/Session$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTHENTICATED:Lcom/scoreloop/client/android/core/model/Session$State;

.field public static final enum AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

.field public static final enum DEVICE_KNOWN:Lcom/scoreloop/client/android/core/model/Session$State;

.field public static final enum DEVICE_VERIFIED:Lcom/scoreloop/client/android/core/model/Session$State;

.field public static final enum FAILED:Lcom/scoreloop/client/android/core/model/Session$State;

.field public static final enum INITIAL:Lcom/scoreloop/client/android/core/model/Session$State;

.field public static final enum TIMEOUT:Lcom/scoreloop/client/android/core/model/Session$State;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/model/Session$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/scoreloop/client/android/core/model/Session$State;

    const-string v1, "AUTHENTICATED"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/model/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATED:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 56
    new-instance v0, Lcom/scoreloop/client/android/core/model/Session$State;

    const-string v1, "AUTHENTICATING"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/model/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 58
    new-instance v0, Lcom/scoreloop/client/android/core/model/Session$State;

    const-string v1, "DEVICE_KNOWN"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/core/model/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->DEVICE_KNOWN:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 60
    new-instance v0, Lcom/scoreloop/client/android/core/model/Session$State;

    const-string v1, "DEVICE_VERIFIED"

    invoke-direct {v0, v1, v6}, Lcom/scoreloop/client/android/core/model/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->DEVICE_VERIFIED:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 62
    new-instance v0, Lcom/scoreloop/client/android/core/model/Session$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/scoreloop/client/android/core/model/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->FAILED:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 64
    new-instance v0, Lcom/scoreloop/client/android/core/model/Session$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->INITIAL:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 67
    new-instance v0, Lcom/scoreloop/client/android/core/model/Session$State;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->TIMEOUT:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/Session$State;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATED:Lcom/scoreloop/client/android/core/model/Session$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->DEVICE_KNOWN:Lcom/scoreloop/client/android/core/model/Session$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->DEVICE_VERIFIED:Lcom/scoreloop/client/android/core/model/Session$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->FAILED:Lcom/scoreloop/client/android/core/model/Session$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/core/model/Session$State;->INITIAL:Lcom/scoreloop/client/android/core/model/Session$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/scoreloop/client/android/core/model/Session$State;->TIMEOUT:Lcom/scoreloop/client/android/core/model/Session$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->a:[Lcom/scoreloop/client/android/core/model/Session$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Session$State;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/scoreloop/client/android/core/model/Session$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Session$State;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/Session$State;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->a:[Lcom/scoreloop/client/android/core/model/Session$State;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/Session$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/Session$State;

    return-object v0
.end method
