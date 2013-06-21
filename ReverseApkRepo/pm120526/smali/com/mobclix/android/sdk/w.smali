.class final Lcom/mobclix/android/sdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/w;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/w;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    return-void
.end method
