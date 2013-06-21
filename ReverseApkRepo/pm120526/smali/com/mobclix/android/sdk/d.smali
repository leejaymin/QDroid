.class final Lcom/mobclix/android/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/b;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/d;->a:Lcom/mobclix/android/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
