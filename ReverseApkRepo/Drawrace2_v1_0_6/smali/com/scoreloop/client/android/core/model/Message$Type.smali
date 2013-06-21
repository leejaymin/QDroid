.class public final enum Lcom/scoreloop/client/android/core/model/Message$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/Message$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABUSE_REPORT:Lcom/scoreloop/client/android/core/model/Message$Type;

.field public static final enum RECOMMENDATION:Lcom/scoreloop/client/android/core/model/Message$Type;

.field public static final enum TARGET_INFERRED:Lcom/scoreloop/client/android/core/model/Message$Type;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/Message$Type;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/scoreloop/client/android/core/model/Message$Type;

    const-string v1, "ABUSE_REPORT"

    const-string v2, "abuse_report"

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/model/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->ABUSE_REPORT:Lcom/scoreloop/client/android/core/model/Message$Type;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Message$Type;

    const-string v1, "RECOMMENDATION"

    const-string v2, "recommendation"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->RECOMMENDATION:Lcom/scoreloop/client/android/core/model/Message$Type;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Message$Type;

    const-string v1, "TARGET_INFERRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lcom/scoreloop/client/android/core/model/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->TARGET_INFERRED:Lcom/scoreloop/client/android/core/model/Message$Type;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/Message$Type;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Message$Type;->ABUSE_REPORT:Lcom/scoreloop/client/android/core/model/Message$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/Message$Type;->RECOMMENDATION:Lcom/scoreloop/client/android/core/model/Message$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/Message$Type;->TARGET_INFERRED:Lcom/scoreloop/client/android/core/model/Message$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->b:[Lcom/scoreloop/client/android/core/model/Message$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/Message$Type;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Message$Type;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/scoreloop/client/android/core/model/Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Message$Type;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/Message$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->b:[Lcom/scoreloop/client/android/core/model/Message$Type;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/Message$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/Message$Type;

    return-object v0
.end method


# virtual methods
.method public final getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message$Type;->a:Ljava/lang/String;

    return-object v0
.end method
