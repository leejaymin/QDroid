.class public final enum Lcom/scoreloop/client/android/core/model/TermsOfService$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/TermsOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/TermsOfService$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

.field public static final enum OUTDATED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

.field public static final enum PENDING:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

.field public static final enum REJECTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/TermsOfService$Status;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ACCEPTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    new-instance v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    const-string v1, "OUTDATED"

    invoke-direct {v0, v1, v3, v4}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->OUTDATED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    new-instance v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->PENDING:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    new-instance v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->REJECTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ACCEPTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->OUTDATED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->PENDING:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->REJECTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->b:[Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->a:I

    .line 41
    return-void
.end method

.method static a(I)Lcom/scoreloop/client/android/core/model/TermsOfService$Status;
    .locals 5
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->values()[Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    iget v4, v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->a:I

    if-ne v4, p0, :cond_0

    .line 34
    :goto_1
    return-object v0

    .line 29
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/TermsOfService$Status;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/TermsOfService$Status;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->b:[Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    return-object v0
.end method
