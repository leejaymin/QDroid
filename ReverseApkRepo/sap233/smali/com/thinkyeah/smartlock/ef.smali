.class final Lcom/thinkyeah/smartlock/ef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ee;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ef;->a:Lcom/thinkyeah/smartlock/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ef;->a:Lcom/thinkyeah/smartlock/ee;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ee;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->i()V

    return-void
.end method
