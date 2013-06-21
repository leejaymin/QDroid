.class public final enum Lcom/scoreloop/client/android/core/model/User$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/User$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/scoreloop/client/android/core/model/User$Gender;

.field public static final enum MALE:Lcom/scoreloop/client/android/core/model/User$Gender;

.field public static final enum UNKNOWN:Lcom/scoreloop/client/android/core/model/User$Gender;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/User$Gender;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v0, Lcom/scoreloop/client/android/core/model/User$Gender;

    const-string v1, "FEMALE"

    const-string v2, "f"

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/model/User$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->FEMALE:Lcom/scoreloop/client/android/core/model/User$Gender;

    new-instance v0, Lcom/scoreloop/client/android/core/model/User$Gender;

    const-string v1, "MALE"

    const-string v2, "m"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/User$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->MALE:Lcom/scoreloop/client/android/core/model/User$Gender;

    new-instance v0, Lcom/scoreloop/client/android/core/model/User$Gender;

    const-string v1, "UNKNOWN"

    const-string v2, "?"

    invoke-direct {v0, v1, v5, v2}, Lcom/scoreloop/client/android/core/model/User$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->UNKNOWN:Lcom/scoreloop/client/android/core/model/User$Gender;

    .line 190
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/User$Gender;

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$Gender;->FEMALE:Lcom/scoreloop/client/android/core/model/User$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$Gender;->MALE:Lcom/scoreloop/client/android/core/model/User$Gender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/User$Gender;->UNKNOWN:Lcom/scoreloop/client/android/core/model/User$Gender;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->b:[Lcom/scoreloop/client/android/core/model/User$Gender;

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
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/User$Gender;->a:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/User$Gender;
    .locals 1
    .parameter

    .prologue
    .line 190
    const-class v0, Lcom/scoreloop/client/android/core/model/User$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User$Gender;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/User$Gender;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->b:[Lcom/scoreloop/client/android/core/model/User$Gender;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/User$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/User$Gender;

    return-object v0
.end method


# virtual methods
.method public final getJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User$Gender;->a:Ljava/lang/String;

    return-object v0
.end method
