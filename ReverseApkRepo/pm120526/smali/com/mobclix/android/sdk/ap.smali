.class final Lcom/mobclix/android/sdk/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ap;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ap;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a()V

    return-void
.end method
