.class public final enum Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;
.super Ljava/lang/Enum;
.source "ValueStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/ValueStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RetrievalMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

.field public static final enum NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

.field public static final enum NOT_OLDER_THAN:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const-string v1, "NOT_DIRTY"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const-string v1, "NOT_OLDER_THAN"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_OLDER_THAN:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_OLDER_THAN:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    return-object v0
.end method
