.class final Lcom/mobclix/android/sdk/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/y;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/y;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ab;->a:Lcom/mobclix/android/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ab;->a:Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->c(Lcom/mobclix/android/sdk/y;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    return-void
.end method
