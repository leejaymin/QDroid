.class final Lcom/thinkyeah/smartlock/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/AddAppActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/c;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/c;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->finish()V

    return-void
.end method
