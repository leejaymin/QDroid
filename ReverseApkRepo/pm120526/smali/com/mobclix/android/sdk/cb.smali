.class public final Lcom/mobclix/android/sdk/cb;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/mobclix/android/sdk/e;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mobclixFeedback"

    sput-object v0, Lcom/mobclix/android/sdk/cb;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    sput-object v0, Lcom/mobclix/android/sdk/cb;->a:Lcom/mobclix/android/sdk/e;

    return-void
.end method
