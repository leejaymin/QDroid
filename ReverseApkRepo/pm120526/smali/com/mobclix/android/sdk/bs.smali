.class final Lcom/mobclix/android/sdk/bs;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ar;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bs;->a:Lcom/mobclix/android/sdk/ar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/bs;->a:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->e:Lcom/mobclix/android/sdk/br;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/br;->sendEmptyMessage(I)Z

    return-void
.end method
