.class public final Lcom/mobclix/android/sdk/ca;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/mobclix/android/sdk/e;

.field static b:Ljava/util/HashMap;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mobclixDemographics"

    sput-object v0, Lcom/mobclix/android/sdk/ca;->c:Ljava/lang/String;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    sput-object v0, Lcom/mobclix/android/sdk/ca;->a:Lcom/mobclix/android/sdk/e;

    const/4 v0, 0x0

    sput-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    return-void
.end method
