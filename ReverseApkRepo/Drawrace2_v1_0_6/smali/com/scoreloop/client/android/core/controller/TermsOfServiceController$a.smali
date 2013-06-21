.class final enum Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum QUERY:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

.field public static final enum SHOW:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->QUERY:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->SHOW:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->QUERY:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->SHOW:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->a:[Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->a:[Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    return-object v0
.end method
