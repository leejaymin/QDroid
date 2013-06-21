.class final enum Lcom/scoreloop/client/android/core/model/User$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/User$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/scoreloop/client/android/core/model/User$b;

.field public static final enum active:Lcom/scoreloop/client/android/core/model/User$b;

.field public static final enum anonymous:Lcom/scoreloop/client/android/core/model/User$b;

.field public static final enum deleted:Lcom/scoreloop/client/android/core/model/User$b;

.field public static final enum passive:Lcom/scoreloop/client/android/core/model/User$b;

.field public static final enum pending:Lcom/scoreloop/client/android/core/model/User$b;

.field public static final enum suspended:Lcom/scoreloop/client/android/core/model/User$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    new-instance v0, Lcom/scoreloop/client/android/core/model/User$b;

    const-string v1, "active"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/model/User$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$b;->active:Lcom/scoreloop/client/android/core/model/User$b;

    .line 206
    new-instance v0, Lcom/scoreloop/client/android/core/model/User$b;

    const-string v1, "anonymous"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/model/User$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$b;->anonymous:Lcom/scoreloop/client/android/core/model/User$b;

    new-instance v0, Lcom/scoreloop/client/android/core/model/User$b;

    const-string v1, "deleted"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/core/model/User$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$b;->deleted:Lcom/scoreloop/client/android/core/model/User$b;

    new-instance v0, Lcom/scoreloop/client/android/core/model/User$b;

    const-string v1, "passive"

    invoke-direct {v0, v1, v6}, Lcom/scoreloop/client/android/core/model/User$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$b;->passive:Lcom/scoreloop/client/android/core/model/User$b;

    new-instance v0, Lcom/scoreloop/client/android/core/model/User$b;

    const-string v1, "pending"

    invoke-direct {v0, v1, v7}, Lcom/scoreloop/client/android/core/model/User$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$b;->pending:Lcom/scoreloop/client/android/core/model/User$b;

    new-instance v0, Lcom/scoreloop/client/android/core/model/User$b;

    const-string v1, "suspended"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/User$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$b;->suspended:Lcom/scoreloop/client/android/core/model/User$b;

    .line 204
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/User$b;

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$b;->active:Lcom/scoreloop/client/android/core/model/User$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$b;->anonymous:Lcom/scoreloop/client/android/core/model/User$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$b;->deleted:Lcom/scoreloop/client/android/core/model/User$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$b;->passive:Lcom/scoreloop/client/android/core/model/User$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$b;->pending:Lcom/scoreloop/client/android/core/model/User$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$b;->suspended:Lcom/scoreloop/client/android/core/model/User$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$b;->a:[Lcom/scoreloop/client/android/core/model/User$b;

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
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/User$b;
    .locals 1
    .parameter

    .prologue
    .line 204
    const-class v0, Lcom/scoreloop/client/android/core/model/User$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User$b;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/User$b;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$b;->a:[Lcom/scoreloop/client/android/core/model/User$b;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/User$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/User$b;

    return-object v0
.end method
