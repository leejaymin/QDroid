.class public final enum Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FINISHED:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

.field public static final enum PENDING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

.field public static final enum RUNNING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->PENDING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    .line 70
    new-instance v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->RUNNING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    .line 74
    new-instance v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->FINISHED:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    sget-object v1, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->PENDING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->RUNNING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->FINISHED:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->a:[Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->a:[Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    return-object v0
.end method
