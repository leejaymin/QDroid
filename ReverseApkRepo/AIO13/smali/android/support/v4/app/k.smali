.class final Landroid/support/v4/app/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/h;


# direct methods
.method constructor <init>(Landroid/support/v4/app/h;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/h;

    iput-object p2, p0, Landroid/support/v4/app/k;->a:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/h;

    iget-object v1, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/h;

    iget-object v1, v1, Landroid/support/v4/app/h;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/k;->a:Ljava/lang/String;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v4/app/k;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/h;->a(Ljava/lang/String;II)Z

    return-void
.end method
