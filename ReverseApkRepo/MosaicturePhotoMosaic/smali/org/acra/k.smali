.class final Lorg/acra/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/acra/j;


# direct methods
.method constructor <init>(Lorg/acra/j;)V
    .locals 0

    iput-object p1, p0, Lorg/acra/k;->a:Lorg/acra/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lorg/acra/j;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/acra/a;->b()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->k()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
